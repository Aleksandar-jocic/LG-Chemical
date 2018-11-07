<?php

include_once "singleton_pdo.php";

/* Niz sa mapiranjem statusnih kodova u statusne poruke */
$status_messages=array(
    200 => "OK",
    201 => "Created",
    400 => "Bad request",
    404 => "Not found",
    405 => "Method not allowed",
    500 => "Internal server error");

/* Odgovor koji treba vratiti */
$response=new stdClass();
$response->data="";
$response->status=0;
$response->error=false;
$response->error_message="";

/* Podrzane metode API-ja */
$supported_methods=array("GET", "PUT");
$method=strtoupper($_SERVER['REQUEST_METHOD']);

/* Provera zahteva koji treba da se opsluzi */
if(!in_array($method,$supported_methods)) {
    $response->status=405;
    $response->error = true;
}
else {

    /* Obrada podrzanih zahteva */

    $number_of_url_elements = 0;
    $url_elements = array();

    if(isset($_SERVER['PATH_INFO'])){
        $url_elements=explode("/", $_SERVER['PATH_INFO']);
        $number_of_url_elements=count($url_elements)-1;
    }
    $valid_url_elements = array();
    foreach ($url_elements as $url_element) {
        if(strlen($url_element) > 0){
            array_push($valid_url_elements, $url_element);
        }
    }


    try {
        $url_elements_size = sizeof($valid_url_elements);
        if($url_elements_size === 1 && $valid_url_elements[0] === 'words'){
            if($method === 'GET'){
                $db = PDO_DB::getInstance();
                $all_words = $db->getWords();
                $response->status = 200;
                $response->data = $all_words;
            } else {
                $response->error = true;
                $response->status = 405;
                $response->error_message = 'PUT not allowed on /words API';
            }
        } else if($url_elements_size === 2 && $valid_url_elements[0] === 'words'){
            $word_id = intval($valid_url_elements[1]);
            if($word_id < 1){
                $response->error = true;
                $response->status = 400;
                $response->error_message = 'word id must be a positive integer';
            }
            if($method === 'GET'){
                $db = PDO_DB::getInstance();
                $word_examples = $db->getExamples($word_id);
                $response->status = 200;
                $response->data = $word_examples;
            } else {
                $put_raw = file_get_contents("php://input");
                $put_body = json_decode($put_raw);
                if($put_body === NULL) {
                    $response->status = 400;
                    $response->error = true;
                    $response->error_message = "body does not contain valid JSON";
                } else {
                    $example_body = $put_body->examples;
                    $db = PDO_DB::getInstance();
                    if(is_array($example_body)){
                        $return_body = array();
                        foreach ($example_body as $example) {
                            $inserted = $db->addExample($word_id, $example);
                            if($inserted === FALSE){
                                $response->status = 400;
                                $response->error = true;
                                $response->error_message = 'one of the examples could not be added to db';
                                break;
                            } else {
                                $example_return = new stdClass();
                                $example_return->id = $inserted;
                                $example_return->word_id = $word_id;
                                $example_return->example = $example;
                                array_push($return_body, $example_return);
                            }
                        }
                        $response->data = $return_body;
                        $response->status = 200;
                    } else {
                        $inserted = $db->addExample($word_id, $example_body);
                        if($inserted === FALSE){
                            $response->status = 400;
                            $response->error = true;
                            $response->error_message = 'one of the examples could not be added to db';
                        } else {
                            $example_return = new stdClass();
                            $example_return->id = $inserted;
                            $example_return->word_id = $word_id;
                            $example_return->example = $example_body;
                            $response->data = $example_return;
                            $response->status = 200;
                        }
                    }
                }
            }
        } else {
            $response->error = true;
            $response->status = 404;
        }

        /*
         * Podrzat API:
         * GET  /words sa znacenjem dohvatanja svih podataka o recima 
         * GET  /words/{word} sa znacenjem dohvatanja podataka o zadatoj reci
         * PUT  /words/{word} sa znacenjem dodavanja novih primera za zadatu rec
         *
         *
         * U slucaju izostanka nekog od obaveznih parametara zateva ili
         * prosledjivanja nedozvoljene vrednosti vratiti 400 "Bad request"
         * 
         */


    }catch(PDOException $e){
        $response->status = 500;
        $response->error = true;
        $response->error_message = $e->getMessage();
    }

    /*
        Generisati HTTP odgovor.
        Dodati neophodna zaglavlja koja podrzavaju CORS.
        Telo odgovora treba da bude u JSON formatu.
    */

    header("HTTP/1.1 ".$response->status." ".$status_messages[$response->status].";");
    header("Content-Type: application/json;");
//    header('Access-Control-Allow-Origin: *;');
    if($response->error === TRUE){
        $response_body = new stdClass();
        $response_body->error = $response->error_message;
        echo json_encode($response_body);
    } else if($response->data !== NULL){

        echo json_encode($response->data);
    }

}

?>
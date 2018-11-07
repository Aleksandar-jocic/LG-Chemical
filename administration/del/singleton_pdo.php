<?php

/*
    Parametri za povezivanje sa bazom podataka
    korisnicko ime: root;
    sifra: root
    host: localhost
    dbname: dictionary
*/
interface ConnectionData{
    const username = 'root';
    const password = '';
    const host = 'localhost';
    const dbname = 'dictionary';
}

class PDO_DB implements ConnectionData{
    static private $db = NULL;

    private $connection;

    private function __construct(){
    }

    private function __clone(){
    }

    private function __wakeup(){
    }

    public static function getInstance(){
        if(self::$db == NULL){
            self::$db = new PDO_DB();
            self::$db->connection = new PDO('mysql:host='.ConnectionData::host.';dbname='.ConnectionData::dbname,
	            				ConnectionData::username, ConnectionData::password,
	            				 array(PDO::ATTR_ERRMODE=>PDO::ERRMODE_EXCEPTION));
        }

	    return self::$db;
    }


    /*
        Implementirati metodu koja dohvata sve reci iz recnika.
        Rezultat treba da bude niz objekata koji sadrze identifikator reci, nivo, rec i znacenje reci 
        ili null ukoliko je recnik prazan.
    */
    public function getWords(){
        if($countRes = $this->connection->query("SELECT COUNT(*) FROM `words`")) {
            if($countRes->fetchColumn() > 0){
                $stmt = $this->connection->prepare("SELECT * FROM `words`");
                $stmt->execute();
                return $stmt->fetchAll(PDO::FETCH_OBJ);
            }
        }
        return NULL;

    }


    /*
       Implementirati metodu koja dohvata sve primere upotrebe za zadatu rec.
       Rezultat treba da bude niz objekata koji sadrze identifikatorom primera i njegov tekst.
    */
    public function getExamples($wordId){
        if($wordId > 0){
            $stmt = $this->connection->prepare("SELECT `id`, `example` FROM `examples` WHERE `word_id` = :wordId");
            $stmt->bindParam("wordId", $wordId, PDO::PARAM_INT);
            $stmt->execute();
            return $stmt->fetchAll(PDO::FETCH_OBJ);
        }
        return NULL;
    }


    /*
        Implementirati metodu koja dodaje novi primer upotrebe zadate reci.
        Metoda vraca true ili false u zavisnosti od uspesnosti dodavanja.
    */
    public function addExample($wordId, $example){
        if($wordId > 0 && strlen($example) > 0){
            $sql = "INSERT INTO `examples` (`word_id`, `example`) VALUES(:wordId, :example)";
            $stmt = $this->connection->prepare($sql);
            $stmt->bindParam("wordId", $wordId, PDO::PARAM_INT);
            $stmt->bindParam("example", $example, PDO::PARAM_STR);
            $stmt->execute();
            return $stmt->rowCount() === 1 ? $this->connection->lastInsertId() : FALSE;
        }
        return FALSE;
    }
}

/*

try{
    $pdo=PDO_DB::getInstance();


    //getWords() test
    // $words = $pdo->getWords();
    // var_dump($words);

    //getExamples() test
    // $examples = $pdo->getExamples(8);
    // var_dump($examples);

    //addExample() test
    // $addExampleFlag = $pdo->addExample(8, "Honey is super sweet.");
    // var_dump($addExampleFlag);


}catch(PDOException $e){
    echo $e->getMessage();
    unset($pdo);
}

*/
?>

class UserInterfaceModule {
    
    constructor () {
        this.UISelectors = {
            output: '#output',
        }
    }

    //receives main groups

    dataReceiver(data) {

        // console.log(data);

        for (let i = 0; i < data.length; i++) {

            let mainName = data[i].main_name;
            let mainId = data[i].main_id;

            let BobTheBuilder = '<div class="showCard">'
            BobTheBuilder += '<h4>' + mainName + '</h4>';
            BobTheBuilder += '<a href="./products.html?id=' + mainId + '"><h5>' + mainName + '</h5></a>';
            BobTheBuilder += '</div>';
                  
            document.querySelector(this.UISelectors.output).innerHTML += BobTheBuilder;

        }
    }
    
    //receives sub groups
    
}

export default UserInterfaceModule;

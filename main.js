import UserInterfaceModule from './userInterface.js';
import DataModule from './data.js';

class MainModule {

    init() {

        $(document).ready(function () {

            let data = new DataModule();
            let userInterface = new UserInterfaceModule();

            let dataInterceptor = data.getData();

            dataInterceptor.then(function (data) {

                userInterface.dataReceiver(data)

            })
        })
    }
}
let program = new MainModule;
program.init();
class UserInterfaceModule {
    
    constructor () {
        this.UISelectors = {
            output: '#output',
        }
    }

    dataReceiver(data) {

        console.log(data);

    }
}

export default UserInterfaceModule;

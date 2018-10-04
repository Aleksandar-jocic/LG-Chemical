class DataModule {

    getData() {

        let data = localStorage.getItem('products');
    
        if (data === null) {
    
            const URL = 'products.json';
    
            return fetch(URL).then(function (data) {
    
                return data.json()
    
            }).then(function (json) {
    
                localStorage.setItem('products', JSON.stringify(json));
    
                return json;
    
            });
        } else {
    
            let promise = Promise.resolve(JSON.parse(data));
    
            return promise;
    
        }
    }

    
}

export default DataModule;

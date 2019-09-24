app.service("ProductService", function ($http) {
    this.GetProduct = function () {
        return $http.post("/ProductMaster/getProduct");
    }

    this.EditProduct = function (data) {
        return $http({
            method: 'POST',
            url: '/ProductMaster/Edit',
            data: JSON.stringify(data),
            dataType: 'json'
        });
    }
});
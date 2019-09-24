app.service("ProductService", function ($http) {
    this.GetProduct = function () {
        return $http.post("/Home/getProduct");
    }
});
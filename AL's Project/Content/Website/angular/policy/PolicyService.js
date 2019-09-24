app.service("PolicyService", function ($http) {
    this.GetPolicy = function () {
        return $http.post("/Home/getPolicy");
    }
});
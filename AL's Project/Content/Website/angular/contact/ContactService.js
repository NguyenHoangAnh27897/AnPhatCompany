app.service("ContactService", function ($http) {
    this.GetContact = function () {
        return $http.post("/Home/getContact");
    }
});
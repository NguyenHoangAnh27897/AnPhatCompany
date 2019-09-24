app.service("AboutService", function ($http) {
    this.GetAbout = function () {
        return $http.post("/Home/getAbout");
    }
});
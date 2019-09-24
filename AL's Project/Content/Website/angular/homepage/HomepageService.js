app.service("HomepageService", function ($http) {
    this.GetHomepage = function () {
        return $http.post("/Home/getHomepage");
    }
});
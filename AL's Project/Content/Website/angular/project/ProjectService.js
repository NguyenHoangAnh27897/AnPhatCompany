app.service("ProjectService", function ($http) {
    this.GetProject = function () {
        return $http.post("/Project/getProject");
    }
});
app.service("DetailProjectService", function ($http) {
    this.GetDetailProject = function () {
        return $http.post("/Project/getDetailProject");
    }
});
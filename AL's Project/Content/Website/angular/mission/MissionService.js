app.service("MissionService", function ($http) {
    this.GetMisison = function () {
        return $http.post("/Home/getMission");
    }
});
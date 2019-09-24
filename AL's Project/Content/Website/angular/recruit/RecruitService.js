app.service("RecruitService", function ($http) {
    this.GetRecruit = function () {
        return $http.post("/Recruit/getRecruit");
    }
});
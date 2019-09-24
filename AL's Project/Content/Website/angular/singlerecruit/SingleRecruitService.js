app.service("DetailRecruitService", function ($http) {
    this.GetDetailRecruit = function () {
        return $http.post("/Recruit/getDetailRecruit");
    }
});
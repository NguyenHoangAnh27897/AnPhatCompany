app.service("DetailNewstService", function ($http) {
    this.GetDetailNews = function () {
        return $http.post("/News/getDetailNews");
    }
});
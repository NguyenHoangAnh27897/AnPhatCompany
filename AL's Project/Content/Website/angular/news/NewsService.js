app.service("NewsService", function ($http) {
    this.GetNews = function () {
        return $http.post("/News/getNews");
    }
});
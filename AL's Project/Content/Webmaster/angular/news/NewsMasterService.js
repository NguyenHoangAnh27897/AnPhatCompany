app.service("NewsMasterService", function ($http) {
    this.GetNewsList = function () {
        return $http.post("/NewsMaster/getAllNews");
    }

    this.getNews = function (id) {
        return $http.post("/NewsMaster/getNews/" + id);
    }

    this.Delete = function (id) {
        return $http.post("/NewsMaster/Delete/" + id);
    }

    this.AddNews = function (data) {
        return $http({
            method: 'POST',
            url: '/NewsMaster/Create',
            data: JSON.stringify(data),
            dataType: 'json'
        });
    }

    this.EditNews = function (data) {
        return $http({
            method: 'POST',
            url: '/NewsMaster/Edit',
            data: JSON.stringify(data),
            dataType: 'json'
        });
    }

    this.Upload = function (data) {
        return $http({
            method: 'POST',
            url: '/NewsMaster/Upload',
            data: data,
            headers: { 'Content-Type': undefined },
            transformRequest: angular.identity,
        });
    }
});
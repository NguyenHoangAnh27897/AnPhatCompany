app.service("AboutService", function ($http) {
    this.GetAbout = function () {
        return $http.post("/AboutMaster/getAbout");
    }

    this.EditAbout = function (data) {
        return $http({
            method: 'POST',
            url: '/AboutMaster/Edit',
            data: JSON.stringify(data),
            dataType: 'json'
        });
    }

    this.Upload = function (data) {
        return $http({
            method: 'POST',
            url: '/AboutMaster/Upload',
            data: data,
            headers: { 'Content-Type': undefined },
            transformRequest: angular.identity,
        });
    }
});
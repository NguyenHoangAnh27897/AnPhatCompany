app.service("ProjectMasterService", function ($http) {
    this.GetProjectList = function () {
        return $http.post("/ProjectMaster/getAllProject");
    }

    this.getProject = function (id) {
        return $http.post("/ProjectMaster/getProject/" + id);
    }

    this.Delete = function (id) {
        return $http.post("/ProjectMaster/Delete/" + id);
    }

    this.AddProject = function (data) {
        return $http({
            method: 'POST',
            url: '/ProjectMaster/Create',
            data: JSON.stringify(data),
            dataType: 'json'
        });
    }

    this.EditProject = function (data) {
        return $http({
            method: 'POST',
            url: '/ProjectMaster/Edit',
            data: JSON.stringify(data),
            dataType: 'json'
        });
    }

    this.Upload = function (data) {
        return $http({
            method: 'POST',
            url: '/ProjectMaster/Upload',
            data: data,
            headers: { 'Content-Type': undefined },
            transformRequest: angular.identity,
        });
    }
});
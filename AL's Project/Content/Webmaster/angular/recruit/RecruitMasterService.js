app.service("RecruitMasterService", function ($http) {
    this.GetRecruitList = function () {
        return $http.post("/RecruitMaster/getAllRecruit");
    }

    this.getRecruit = function (id) {
        return $http.post("/RecruitMaster/getRecruit/" + id);
    }

    this.Delete = function (id) {
        return $http.post("/RecruitMaster/Delete/" + id);
    }

    this.AddRecruit = function (data) {
        return $http({
            method: 'POST',
            url: '/RecruitMaster/Create',
            data: JSON.stringify(data),
            dataType: 'json'
        });
    }

    this.EditRecruit = function (data) {
        return $http({
            method: 'POST',
            url: '/RecruitMaster/Edit',
            data: JSON.stringify(data),
            dataType: 'json'
        });
    }

    this.Upload = function (data) {
        return $http({
            method: 'POST',
            url: '/RecruitMaster/Upload',
            data: data,
            headers: { 'Content-Type': undefined },
            transformRequest: angular.identity,
        });
    }
});
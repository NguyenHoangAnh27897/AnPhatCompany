app.service("PolicyService", function ($http) {
    this.GetPolicy = function () {
        return $http.post("/PolicyMaster/getPolicy");
    }

    this.EditPolicy = function (data) {
        return $http({
            method: 'POST',
            url: '/PolicyMaster/Edit',
            data: JSON.stringify(data),
            dataType: 'json'
        });
    }
});
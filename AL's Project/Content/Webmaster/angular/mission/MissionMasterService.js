app.service("MissionService", function ($http) {
    this.GetMission = function () {
        return $http.post("/MissionMaster/getMission");
    }

    this.EditMission = function (data) {
        return $http({
            method: 'POST',
            url: '/MissionMaster/Edit',
            data: JSON.stringify(data),
            dataType: 'json'
        });
    }
});
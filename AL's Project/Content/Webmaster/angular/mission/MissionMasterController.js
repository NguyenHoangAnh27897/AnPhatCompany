app.controller("missionController", function ($scope, MissionService) {
    GetMission();

    function GetMission() {
        MissionService.GetMission().success(function (com) {
            console.log(com)
            CKEDITOR.instances['content'].setData(com.mi.SubTitle);
            $scope.mission = com.mi;
        }).error(function () {
            alert('Có lỗi xảy ra');
        });
    }

    $scope.EditMission = function (mission) {
        mission.Id = 1;
        mission.SubTitle = CKEDITOR.instances['content'].getData();
        MissionService.EditMission(mission).success(function (ret) {
            alert(ret.msg);
            $scope.mission = ret.mi;
        }, function () {
            alert('Có lỗi xảy ra');
        });
    }

});
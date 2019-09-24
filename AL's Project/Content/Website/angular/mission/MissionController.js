app.filter('unsafe', function ($sce) {
    return function (html) {
        return $sce.trustAsHtml(html)
    }
});
app.controller("missionController", function ($scope, MissionService, $sce) {
    GetMission();

    function GetMission() {
        MissionService.GetMisison().success(function (com) {
            console.log(com)
            //com.ab.ContentAbout = $sce.trustAsHtml(com.ab.ContentAbout);
            $scope.mission = com.mi;
            //$scope.contact = com.con;
            //$scope.blogtype = com.bltype;
            //$scope.logo = com.lg;
            //$scope.link = com.li;
            //$scope.count = com.co;
        }).error(function () {
            alert('Có lỗi xảy ra');
        });
    }
});
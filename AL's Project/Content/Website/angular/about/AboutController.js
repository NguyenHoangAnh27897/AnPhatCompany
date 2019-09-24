app.filter('unsafe', function ($sce) {
    return function (html) {
        return $sce.trustAsHtml(html)
    }
});
app.controller("aboutController", function ($scope, AboutService, $sce) {
    GetAbout();

    function GetAbout() {
        AboutService.GetAbout().success(function (com) {
            console.log(com)
            //com.ab.ContentAbout = $sce.trustAsHtml(com.ab.ContentAbout);
            $scope.about = com.ab;
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
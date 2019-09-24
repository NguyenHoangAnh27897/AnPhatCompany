app.filter('unsafe', function ($sce) {
    return function (html) {
        return $sce.trustAsHtml(html)
    }
});
app.controller("homepageController", function ($scope, HomepageService, $sce) {
    GetHomepage();

    function GetHomepage() {
        HomepageService.GetHomepage().success(function (com) {
            console.log(com)
            com.hp.Title04 = $sce.trustAsHtml(com.hp.Title04);
            $scope.homepage = com.hp;
        }).error(function () {
            alert('Có lỗi xảy ra');
        });
    }
});
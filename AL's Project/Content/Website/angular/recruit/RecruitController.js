app.filter('unsafe', function ($sce) {
    return function (html) {
        return $sce.trustAsHtml(html)
    }
});
app.controller("recruitController", function ($scope, RecruitService, $window, $sce) {
    GetRecruit();
    $scope.recruits = [];

    function GetRecruit() {
        RecruitService.GetRecruit().success(function (com) {
            console.log(com)
            angular.forEach(com.re, function (value, key) {
                if (value.ContentRecruit != null) {
                    value.ContentRecruit = value.ContentRecruit.substr(3, 50) + '...';
                    value.ContentRecruit = $sce.trustAsHtml(value.ContentRecruit);
                }
                if (value.Date != null) {
                    var date = new Date(parseInt(value.Date.replace('/Date(', '')));
                    value.Date = date.getDate() + '/' + (date.getMonth() + 1) + '/' + date.getFullYear();
                }
            })
            $scope.recruits = com.re;
        }).error(function () {
            alert('Có lỗi xảy ra');
        });
    }

    $scope.detail = function (id) {
        $window.location.href = '/Recruit/Single/' + id;
    }
});


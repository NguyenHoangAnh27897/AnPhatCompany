app.filter('unsafe', function ($sce) {
    return function (html) {
        return $sce.trustAsHtml(html)
    }
});
app.controller("detailrecruitController", function ($scope, DetailRecruitService, $sce, $window) {
    GetDetailRecruit();

    function GetDetailRecruit() {
        DetailRecruitService.GetDetailRecruit().success(function (com) {
            console.log(com)
            var date = new Date(parseInt(com.re.Date.replace('/Date(', '')));
            com.re.Date = date.getDate() + '/' + (date.getMonth() + 1) + '/' + date.getFullYear();
            com.re.ContentRecruit = $sce.trustAsHtml(com.re.ContentRecruit);
            $scope.recruit = com.re;
        }).error(function () {
            alert('Có lỗi xảy ra');
        });
    }

    //$scope.detail = function (id) {
    //    $window.location.href = '/Project/Detail/' + id;
    //}
});
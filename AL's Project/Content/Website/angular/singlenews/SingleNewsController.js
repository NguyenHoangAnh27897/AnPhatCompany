app.filter('unsafe', function ($sce) {
    return function (html) {
        return $sce.trustAsHtml(html)
    }
});
app.controller("detailnewsController", function ($scope, DetailNewstService, $sce, $window) {
    GetDetailNews();

    function GetDetailNews() {
        DetailNewstService.GetDetailNews().success(function (com) {
            console.log(com)
            var date = new Date(parseInt(com.ne.Date.replace('/Date(', '')));
            com.ne.Date = date.getDate() + '/' + (date.getMonth() + 1) + '/' + date.getFullYear();
            com.ne.ContentNews = $sce.trustAsHtml(com.ne.ContentNews);
            $scope.news = com.ne;
        }).error(function () {
            alert('Có lỗi xảy ra');
        });
    }

    //$scope.detail = function (id) {
    //    $window.location.href = '/News/Single/' + id;
    //}
});
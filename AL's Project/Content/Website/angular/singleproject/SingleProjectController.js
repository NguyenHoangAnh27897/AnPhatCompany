app.filter('unsafe', function ($sce) {
    return function (html) {
        return $sce.trustAsHtml(html)
    }
});
app.controller("detailprojectController", function ($scope, DetailProjectService, $sce, $window) {
    GetDetailProject();

    function GetDetailProject() {
        DetailProjectService.GetDetailProject().success(function (com) {
            console.log(com)
            var date = new Date(parseInt(com.pro.Date.replace('/Date(', '')));
            com.pro.Date = date.getDate() + '/' + (date.getMonth() + 1) + '/' + date.getFullYear();
            com.pro.ContentProject = $sce.trustAsHtml(com.pro.ContentProject);
            $scope.project = com.pro;
        }).error(function () {
            alert('Có lỗi xảy ra');
        });
    }

    //$scope.detail = function (id) {
    //    $window.location.href = '/Project/Detail/' + id;
    //}
});
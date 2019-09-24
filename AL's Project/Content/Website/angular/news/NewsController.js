app.filter('unsafe', function ($sce) {
    return function (html) {
        return $sce.trustAsHtml(html)
    }
});
app.controller("newsController", function ($scope, NewsService, $window, $sce) {
    GetNews();
    $scope.newss = [];

    function GetNews() {
        NewsService.GetNews().success(function (com) {
            console.log(com)
            angular.forEach(com.ne, function (value, key) {
                if (value.ContentProject != null) {
                    value.ContentProject = value.ContentProject.substr(3, 50) + '...';
                    value.ContentProject = $sce.trustAsHtml(value.ContentProject);
                }
                if (value.Date != null) {
                    var date = new Date(parseInt(value.Date.replace('/Date(', '')));
                    value.Date = date.getDate() + '/' + (date.getMonth() + 1) + '/' + date.getFullYear();
                }
            })
            $scope.newss = com.ne;
        }).error(function () {
            alert('Có lỗi xảy ra');
        });
    }

    $scope.detail = function (id) {
        $window.location.href = '/News/Single/' + id;
    }
});


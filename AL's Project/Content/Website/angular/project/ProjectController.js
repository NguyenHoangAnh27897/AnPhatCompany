app.filter('unsafe', function ($sce) {
    return function (html) {
        return $sce.trustAsHtml(html)
    }
});
app.controller("projectController", function ($scope, ProjectService, $window, $sce) {
    GetProject();
    $scope.projects = [];

    function GetProject() {
        ProjectService.GetProject().success(function (com) {
            console.log(com)
            angular.forEach(com.pro, function (value, key) {
                if (value.ContentProject != null) {
                    value.ContentProject = value.ContentProject.substr(3, 50) + '...';
                    value.ContentProject = $sce.trustAsHtml(value.ContentProject);
                }
                if (value.Date != null) {
                    var date = new Date(parseInt(value.Date.replace('/Date(', '')));
                    value.Date = date.getDate() + '/' + (date.getMonth() + 1) + '/' + date.getFullYear();
                }
            })
            $scope.projects = com.pro;
        }).error(function () {
            alert('Có lỗi xảy ra');
        });
    }

    $scope.detail = function (id) {
        $window.location.href = '/Project/Single/' + id;
    }
});


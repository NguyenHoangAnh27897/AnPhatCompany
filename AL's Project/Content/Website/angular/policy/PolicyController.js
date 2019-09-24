app.filter('unsafe', function ($sce) {
    return function (html) {
        return $sce.trustAsHtml(html)
    }
});
app.controller("policyController", function ($scope, PolicyService, $sce) {
    GetPolicy();

    function GetPolicy() {
        PolicyService.GetPolicy().success(function (com) {
            console.log(com)
            //com.ab.ContentAbout = $sce.trustAsHtml(com.ab.ContentAbout);
            $scope.policy= com.po;
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
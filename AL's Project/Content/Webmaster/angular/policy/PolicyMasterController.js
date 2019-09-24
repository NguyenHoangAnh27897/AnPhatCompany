app.controller("policyController", function ($scope, PolicyService) {
    GetPolicy();

    function GetPolicy() {
        PolicyService.GetPolicy().success(function (com) {
            console.log(com)
            CKEDITOR.instances['content'].setData(com.po.ContentPolicy);
            $scope.policy = com.po;
        }).error(function () {
            alert('Có lỗi xảy ra');
        });
    }

    $scope.EditPolicy = function (policy) {
        policy.Id = 1;
        policy.ContentPolicy = CKEDITOR.instances['content'].getData();
        PolicyService.EditPolicy(policy).success(function (ret) {
            alert(ret.msg);
            $scope.policy = ret.po;
        }, function () {
            alert('Có lỗi xảy ra');
        });
    }

});
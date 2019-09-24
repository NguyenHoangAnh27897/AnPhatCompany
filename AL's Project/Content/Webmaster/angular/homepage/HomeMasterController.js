app.controller("homepageController", function ($scope, HomepageService) {
    GetHomepage();

    function GetHomepage() {
        HomepageService.GetHomepage().success(function (com) {
            console.log(com)
            CKEDITOR.instances['content'].setData(com.hp.SubTitle01);
            CKEDITOR.instances['content1'].setData(com.hp.SubTitle02);
            CKEDITOR.instances['content2'].setData(com.hp.SubTitle03);
            $scope.homepage = com.hp;
        }).error(function () {
            alert('Có lỗi xảy ra');
        });
    }

    $scope.EditHomepage = function (hp) {
        hp.Id = 1;
        hp.SubTitle01 = CKEDITOR.instances['content'].getData();
        hp.SubTitle02 = CKEDITOR.instances['content1'].getData();
        hp.SubTitle03 = CKEDITOR.instances['content2'].getData();
        HomepageService.EditHomepage(hp).success(function (ret) {
            toastr.success(ret.msg, 'Thành công')
            $scope.homepage = ret.hp;
        }, function () {
            alert('Có lỗi xảy ra');
        });
    }

});
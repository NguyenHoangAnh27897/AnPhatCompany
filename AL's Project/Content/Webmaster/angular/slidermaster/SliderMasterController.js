app.controller("slidermasterController", function ($scope, SliderMasterService) {
    GetSlider();

    function GetSlider() {
        SliderMasterService.GetSlider().success(function (com) {
            console.log(com)
            CKEDITOR.instances['content'].setData(com.sli.SubTitle);
            $scope.slider = com.sli;
        }).error(function () {
            alert('Có lỗi xảy ra');
        });
    }

    $scope.EditSlider = function (slider) {
        slider.Id = 1;
        slider.SubTitle = CKEDITOR.instances['content'].getData();
        SliderMasterService.EditSlider(slider).success(function (ret) {
            toastr.success(ret.msg, 'Thành công')
            $scope.slider = ret.sli;
        }, function () {
            alert('Có lỗi xảy ra');
        });
    }

});
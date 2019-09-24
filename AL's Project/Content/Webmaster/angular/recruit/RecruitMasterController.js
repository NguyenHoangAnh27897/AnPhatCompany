app.controller("recruitmasterController", function ($scope, RecruitMasterService) {
    GetRecruitList();
    $scope.recruits = [];
    var picname = null;

    function GetRecruitList() {
        RecruitMasterService.GetRecruitList().success(function (com) {
            console.log(com)
            angular.forEach(com.re, function (value, key) {
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

    $scope.addRecruit = function () {
        $scope.Action = "Thêm";
        $scope.show = true;
    }

    $scope.UploadImage = function (files) {
        if (files[0].name != null) {
            picname = files[0].name;
        }

        $scope.SelectedFiles = files;
        var fd = new FormData();
        //Take the first selected file
        fd.append("file", files[0]);
        if ($scope.SelectedFiles && $scope.SelectedFiles.length) {
            RecruitMasterService.Upload(fd).success(function (ret) {

            }).error(function () {
                alert('Có lỗi xảy ra');
            });
        }
    };

    $scope.AddRecruit = function (com) {
        com.ContentRecruit = CKEDITOR.instances['content'].getData();
        com.Picture = picname;
        RecruitMasterService.AddRecruit(com).success(function (ret) {
            alert(ret.msg);
            angular.forEach(ret.re, function (value, key) {
                if (value.Date != null) {
                    var date = new Date(parseInt(value.Date.replace('/Date(', '')));
                    value.Date = date.getDate() + '/' + (date.getMonth() + 1) + '/' + date.getFullYear();
                }
            })
            $scope.recruits = ret.re;
            picname = null;
        }, function () {
            alert('Có lỗi xảy ra');
        });
    }

    $scope.delete = function (Id, index) {
        RecruitMasterService.Delete(Id).success(function (ret) {
            alert(ret.msg)
            $scope.recruits.splice(index, 1);
        }).error(function () {
            alert('Có lỗi xảy ra');
        });
    }


    $scope.editRecruit = function (id) {
        $scope.show = false;
        $scope.Action = 'Chỉnh sửa';
        RecruitMasterService.getRecruit(id).success(function (ret) {
            $scope.recruit = ret.re
            CKEDITOR.instances['content'].setData(ret.re.ContentRecruit)
        }).error(function () {
            alert('Có lỗi xảy ra');
        });
    }

    $scope.EditRecruit = function (Blog) {
        Blog.ContentRecruit = CKEDITOR.instances['content'].getData();
        if (picname != null) {
            Blog.Picture = picname;
        }
        console.log(picname)
        RecruitMasterService.EditRecruit(Blog).success(function (ret) {
            alert(ret.msg);
            angular.forEach(ret.re, function (value, key) {
                if (value.Date != null) {
                    var date = new Date(parseInt(value.Date.replace('/Date(', '')));
                    value.Date = date.getDate() + '/' + (date.getMonth() + 1) + '/' + date.getFullYear();
                }
            })
            $scope.recruits = ret.re;
            picname = null;
        }, function () {
            alert('Có lỗi xảy ra');
        });
    }
});
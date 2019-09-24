app.controller("aboutController", function ($scope, AboutService) {
    GetAbout();
    var picname = null;

    function GetAbout() {
        AboutService.GetAbout().success(function (com) {
            console.log(com)
            CKEDITOR.instances['content'].setData(com.ab.ContentAbout);
            $scope.about = com.ab;
        }).error(function () {
            alert('Có lỗi xảy ra');
        });
    }

    $scope.EditAbout = function (About) {
        About.Id = 1;
        About.ContentAbout = CKEDITOR.instances['content'].getData();
        if (picname != null) {
            About.Picture = picname;
        }
        AboutService.EditAbout(About).success(function (ret) {
            alert(ret.msg);
            $scope.about = ret.ab;
            picname = null;
        }, function () {
            alert('Có lỗi xảy ra');
        });
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
            AboutService.Upload(fd).success(function (ret) {

            }).error(function () {
                alert('Có lỗi xảy ra');
            });
        }
    };
});
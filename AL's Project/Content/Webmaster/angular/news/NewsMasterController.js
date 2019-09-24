app.controller("newsmasterController", function ($scope, NewsMasterService) {
    GetNewsList();
    $scope.newss = [];
    var picname = null;

    function GetNewsList() {
        NewsMasterService.GetNewsList().success(function (com) {
            console.log(com)
            angular.forEach(com.ne, function (value, key) {
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

    $scope.addNews = function () {
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
            NewsMasterService.Upload(fd).success(function (ret) {

            }).error(function () {
                alert('Có lỗi xảy ra');
            });
        }
    };

    $scope.AddNews = function (com) {
        com.ContentNews = CKEDITOR.instances['content'].getData();
        com.Avatar = picname;
        NewsMasterService.AddNews(com).success(function (ret) {
            alert(ret.msg);
            angular.forEach(ret.ne, function (value, key) {
                if (value.Date != null) {
                    var date = new Date(parseInt(value.Date.replace('/Date(', '')));
                    value.Date = date.getDate() + '/' + (date.getMonth() + 1) + '/' + date.getFullYear();
                }
            })
            $scope.newss = ret.ne;
            picname = null;
        }, function () {
            alert('Có lỗi xảy ra');
        });
    }

    $scope.delete = function (Id, index) {
        NewsMasterService.Delete(Id).success(function (ret) {
            alert(ret.msg)
            $scope.newss.splice(index, 1);
        }).error(function () {
            alert('Có lỗi xảy ra');
        });
    }


    $scope.editNews = function (id) {
        $scope.show = false;
        $scope.Action = 'Chỉnh sửa';
        NewsMasterService.getNews(id).success(function (ret) {
            $scope.news = ret.ne
            CKEDITOR.instances['content'].setData(ret.ne.ContentNews)
        }).error(function () {
            alert('Có lỗi xảy ra');
        });
    }

    $scope.EditNews = function (Blog) {
        Blog.ContentNews = CKEDITOR.instances['content'].getData();
        if (picname != null) {
            Blog.Avatar = picname;
        }
        console.log(picname)
        NewsMasterService.EditNews(Blog).success(function (ret) {
            alert(ret.msg);
            angular.forEach(ret.ne, function (value, key) {
                if (value.Date != null) {
                    var date = new Date(parseInt(value.Date.replace('/Date(', '')));
                    value.Date = date.getDate() + '/' + (date.getMonth() + 1) + '/' + date.getFullYear();
                }
            })
            $scope.newss = ret.ne;
            picname = null;
        }, function () {
            alert('Có lỗi xảy ra');
        });
    }
});
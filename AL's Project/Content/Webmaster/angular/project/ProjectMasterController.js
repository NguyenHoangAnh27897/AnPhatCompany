app.controller("projectmasterController", function ($scope, ProjectMasterService) {
    GetProjectList();
    $scope.projects = [];
    var picname = null;

    function GetProjectList() {
        ProjectMasterService.GetProjectList().success(function (com) {
            console.log(com)
            angular.forEach(com.pj, function (value, key) {
                if (value.Date != null) {
                    var date = new Date(parseInt(value.Date.replace('/Date(', '')));
                    value.Date = date.getDate() + '/' + (date.getMonth() + 1) + '/' + date.getFullYear();
                }
            })
            $scope.projects = com.pj;
        }).error(function () {
            alert('Có lỗi xảy ra');
        });
    }

    $scope.addProject = function () {
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
            ProjectMasterService.Upload(fd).success(function (ret) {

            }).error(function () {
                alert('Có lỗi xảy ra');
            });
        }
    };

    $scope.AddProject = function (com) {
        com.ContentProject = CKEDITOR.instances['content'].getData();
        com.Avatar = picname;
        ProjectMasterService.AddProject(com).success(function (ret) {
            toastr.success(ret.msg, 'Thành công')
            angular.forEach(ret.pj, function (value, key) {
                if (value.Date != null) {
                    var date = new Date(parseInt(value.Date.replace('/Date(', '')));
                    value.Date = date.getDate() + '/' + (date.getMonth() + 1) + '/' + date.getFullYear();
                }
            })
            $scope.projects = ret.pj;
            picname = null;
        }, function () {
            alert('Có lỗi xảy ra');
        });
    }

    $scope.delete = function (Id, index) {
        ProjectMasterService.Delete(Id).success(function (ret) {
            toastr.success(ret.msg, 'Thành công')
            $scope.projects.splice(index, 1);
        }).error(function () {
            alert('Có lỗi xảy ra');
        });
    }


    $scope.editProject = function (id) {
        $scope.show = false;
        $scope.Action = 'Chỉnh sửa';
        ProjectMasterService.getProject(id).success(function (ret) {
            $scope.project = ret.pj
            CKEDITOR.instances['content'].setData(ret.pj.ContentProject)
        }).error(function () {
            alert('Có lỗi xảy ra');
        });
    }

    $scope.EditProject = function (Blog) {
        Blog.ContentProject = CKEDITOR.instances['content'].getData();
        if (picname != null) {
            Blog.Avatar = picname;
        }
        console.log(picname)
        ProjectMasterService.EditProject(Blog).success(function (ret) {
            toastr.success(ret.msg, 'Thành công')
            angular.forEach(ret.pj, function (value, key) {
                if (value.Date != null) {
                    var date = new Date(parseInt(value.Date.replace('/Date(', '')));
                    value.Date = date.getDate() + '/' + (date.getMonth() + 1) + '/' + date.getFullYear();
                }
            })
            $scope.projects = ret.pj;
            picname = null;
        }, function () {
            alert('Có lỗi xảy ra');
        });
    }
});
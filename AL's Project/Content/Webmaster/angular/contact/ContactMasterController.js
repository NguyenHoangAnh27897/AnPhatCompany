app.controller("contactController", function ($scope, ContactService) {
    GetContact();

    function GetContact() {
        ContactService.GetContact().success(function (com) {
            console.log(com)
            $scope.contact = com.con;
        }).error(function () {
            alert('Có lỗi xảy ra');
        });
    }

    $scope.EditContact = function (contact) {
        contact.Id = 1;
        ContactService.EditContact(contact).success(function (ret) {
            toastr.success(ret.msg, 'Thành công')
            $scope.contact = ret.con;
        }, function () {
            alert('Có lỗi xảy ra');
        });
    }

});
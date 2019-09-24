app.controller("productController", function ($scope, ProductService) {
    GetProduct();

    function GetProduct() {
        ProductService.GetProduct().success(function (com) {
            console.log(com)
            CKEDITOR.instances['careercontent'].setData(com.pro.CareerContent);
            CKEDITOR.instances['businesscontent'].setData(com.pro.BusinessContent);
            $scope.product = com.pro;
        }).error(function () {
            alert('Có lỗi xảy ra');
        });
    }

    $scope.EditProduct = function (product) {
        product.Id = 1;
        product.CareerContent = CKEDITOR.instances['careercontent'].getData();
        product.BusinessContent = CKEDITOR.instances['businesscontent'].getData();
        ProductService.EditProduct(product).success(function (ret) {
            toastr.success(ret.msg, 'Thành công')
            $scope.product = ret.pro;
        }, function () {
            alert('Có lỗi xảy ra');
        });
    }

});
app.service("SliderMasterService", function ($http) {
    this.GetSlider = function () {
        return $http.post("/Webmaster/getSlider");
    }

    this.EditSlider = function (data) {
        return $http({
            method: 'POST',
            url: '/Webmaster/EditSlider',
            data: JSON.stringify(data),
            dataType: 'json'
        });
    }
});
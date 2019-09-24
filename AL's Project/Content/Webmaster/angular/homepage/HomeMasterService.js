app.service("HomepageService", function ($http) {
    this.GetHomepage = function () {
        return $http.post("/Webmaster/getHomepage");
    }

    this.EditHomepage = function (data) {
        return $http({
            method: 'POST',
            url: '/Webmaster/Edit',
            data: JSON.stringify(data),
            dataType: 'json'
        });
    }
});
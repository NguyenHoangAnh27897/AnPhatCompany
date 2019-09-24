app.service("ContactService", function ($http) {
    this.GetContact = function () {
        return $http.post("/ContactMaster/getContact");
    }

    this.EditContact = function (data) {
        return $http({
            method: 'POST',
            url: '/ContactMaster/Edit',
            data: JSON.stringify(data),
            dataType: 'json'
        });
    }
});
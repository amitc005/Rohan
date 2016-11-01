$(document).ready(function () {
    $(function () {
        $("#search").autocomplete({
            source: function (request, response) {
                $.ajax({
                    url: "ClientServlet",
                    type: "GET",
                    data: {
                        term: request.term,
                        action : $("#action").val()
                    },
                    dataType: "json",
                    success: function (data) {
                        response(data);
                    }
                });
            }
        });
    });
});
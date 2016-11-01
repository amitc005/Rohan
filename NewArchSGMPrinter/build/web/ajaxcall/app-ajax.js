$(document).ready(function () {
    $('#userName').blur(function () {
        $.ajax({
            url: 'ClientServlet',
            type: 'POST',
            data: {
                userName: $('#userName').val(),
                action: 'viewaction'
            },
            success: function (responseText) {
                $('#ajaxGetUserServletResponse').text(responseText);
            }
        });
    });
});
$(document).ready(function() {
    // validator for registering
    $("#register-form").validate({
                rules: {
                    regUsername: "required"
                },
                messages: {
                    regUsername: "Hãy điền tên đăng nhập"
                },
                errorPlacement: function(error, element) {
                    error.appendTo(element.parent());
                }
            });
});
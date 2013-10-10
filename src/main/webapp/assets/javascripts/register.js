$(document).ready(function() {
    // validator for registering
    $("#register-form").validate({
                rules: {
                    regUsername: "required",
                    regEmail: {
                        required: true,
                        email: true
                    },
                    regPassword: "required",
                    regRepassword: {
                        required: true,
                        equalTo: "#regPassword"
                    }
                },
                messages: {
                    regUsername: "Hãy điền tên đăng nhập",
                    regEmail: {
                        required: "Hãy điền email",
                        email: "Email chưa hợp lệ"
                    },
                    regPassword: "Hãy nhập mật khẩu",
                    regRepassword: {
                        required: "Hãy nhập lại mật khẩu",
                        equalTo: "Hãy nhập lại đúng mật khẩu"
                    }
                },
                errorPlacement: function(error, element) {
                    error.appendTo(element.parent());
                }
            });
});
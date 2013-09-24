$(document).ready(function() {
    // validator for registering
    var validator = $("#register-form").validate({
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

    // Animation for sidebar
    $('.cate-text').click(function() {
        $('.cate-text').removeClass('selected');
        $(this).addClass('selected');
        if ($(this).parent().hasClass('main-cate')) {
            $(this).parent().parent().children('.sub-cate-list').toggle(function() {
            });
        }
        return false;
    });

    // Slide the tile content when moused over
    $('.item').hoverIntent(hoverIntentParams);

    // login from pop-up
    $('#login-label').leanModal({ top : 100, closeButton: ".modal_close" });

    // do login
    $('#login-button').click(function() {
        var username = $('#username-input').val();
        var password = $('#password-input').val();
        var result = "begin";
        $.ajax({
                    type: "POST",
                    url: "login",
                    data: { "uname": username, "pwd": password },
                    success: function(html) {
                        checkLogin(html);
                    },
                    error: function(err) {
                        console.log("Login failed");
                        $('#fail-msg').removeClass('undisplayed');
                        return false;
                    }
                });
    });

    // register from pop-up
    $('#register-label').leanModal({ top : 100, closeButton: ".modal_close" });

    // do register
//    $('#login-button').click(function() {
//        var username = $('#username-input').val();
//        var password = $('#password-input').val();
//        var result = "begin";
//        $.ajax({
//                    type: "POST",
//                    url: "login",
//                    data: { "uname": username, "pwd": password },
//                    success: function(html) {
//                        checkLogin(html);
//                    },
//                    error: function(err) {
//                        console.log("Login failed");
//                        $('#fail-msg').removeClass('undisplayed');
//                        return false;
//                    }
//                });
//    });
});

var hoverIntentParams = {
    over : function() {
        var a = $(this).children("a");
        setTimeout(function() {
            $(a).animate({
                        marginTop : -200
                    }, 300);
        }, 100);
    },
    out : function() {
        var a = $(this).children("a");
        $(a).animate({
                    marginTop : 0
                }, 50);
    },
    timeout : 100
};

// If login success, redirect to main page
var checkLogin = function(html) {
    if (html == "") {
        $('#fail-msg').removeClass('undisplayed');
        return false;
    }
    document.location.href = "/";
}
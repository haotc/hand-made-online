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

    // Load initial products
    $.ajax({
                type: "GET",
                url: "get-products",
                data: { "page": 1, "pageSize": 2 },
                success: function(rs) {
                    var appendStr = "";
                    for (var i = 0; i < rs.length; i++) {
                        var item = rs[i];
                        appendStr = "<div class='item'><a><div class='wrapper'><div class='container'>"
                                + "<img src='" + item.imageUrl + "'/><div class='title'>" + item.name + "</div>" + "<div class='comment'>" + item.id + "</div>"
                                + "</div></div></a>"
                                + "<div class='description'><div class='header'><div class='title'><div class='text'>" + item.name
                                + "</div></div><div class='logo'><img src='" + item.imageUrl + "' />" + "</div></div><div class='detail'>"
                                + "<div class='text'>" + item.detailDesc + "</div><div class='rate'></div></div></div></div>";
                        $(appendStr).hoverIntent(hoverIntentParams).appendTo("#item-container");
                    }
                },
                error: function(err) {
                    console.log("Login failed");
                    $('#fail-msg').removeClass('undisplayed');
                    return false;
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

    $('#login-label').leanModal({ top : 100, closeButton: ".modal_close" });

    // login from pop-up
    $('#login-button').click(function() {
        var username = $('#username-input').val();
        var password = $('#password-input').val();
        var result = "begin";
        $.ajax({
                    type: "POST",
                    url: "login",
                    data: { "uname": username, "pwd": password },
                    success: function(html) {
                        if (html == "") {
                            $('#fail-msg').removeClass('undisplayed');
                            return false;
                        }
                        loginSucess(username);
                    },
                    error: function(err) {
                        console.log("Login failed");
                        $('#fail-msg').removeClass('undisplayed');
                        return false;
                    }
                });
    });

    $('#register-label').leanModal({ top : 100, closeButton: ".modal_close" });
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

// Hide and display some labels when login success
var loginSucess = function(username) {
    $('#fail-msg').addClass('undisplayed');
    $("#lean_overlay").fadeOut(200);
    $('#loginPopup').css({"display":"none"});
    $('#login-label').addClass('undisplayed');
    $('#login-name').html("Chào, " + "<b>" + username + "</b>");
    $('#login-name').removeClass('undisplayed');
    $('#logout-label').removeClass('undisplayed');
    $('#register-label').addClass('undisplayed');
}

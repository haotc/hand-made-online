$(document).ready(function() {
    // Slide the tile content when moused over
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
    $('.item').hoverIntent(hoverIntentParams);

    // Load initial products
    $.ajax({
                type: "GET",
                url: "get-products",
                data: {"page": 1, "pageSize": 20},
                success: function(rs) {
                    var appendStr = "";
                    for (var i = 0; i < rs.length; i++) {
                        var item = rs[i];
                        appendStr = "<div class='item'><a href='product-details?id=" + item.id + "'><div class='wrapper'><div class='container'>"
                                + "<img src='" + item.imageUrl + "'/><div class='title'>" + item.name + "</div>" + "<div class='comment'>" + item.numberOfSold + " lượt mua</div>"
                                + "<div class='price'>" + item.unitPrice + " Đ</div>" + "</div></div>"
                                + "<div class='description'><div class='header'><div class='title'><div class='text'>" + item.name
                                + "</div></div><div class='logo'><img src='" + item.imageUrl + "' />" + "</div></div><div class='detail'>"
                                + "<div class='text'>" + item.shortDesc + "</div><div class='rate'></div></div></div></a></div>";
                        $(appendStr).hoverIntent(hoverIntentParams).appendTo("#item-container");
                    }
                },
                error: function(err) {
                    console.log("Login failed");
                    $('#fail-msg').removeClass('undisplayed');
                    return false;
                }
            });
});
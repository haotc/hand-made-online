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

    // Load initial products step by step, each time load 8 items
    // get category id from model
    var categoryName = $('.cate-text.href.selected').val();
    var PAGE_SIZE = 8;
    var currentPage = 1;
    var loadProductList = function() {
        $.ajax({
                    type: "GET",
                    url: "get-products",
                    data: {"page": currentPage, "pageSize": PAGE_SIZE, "categoryName": categoryName},
                    success: function(rs) {
                        // append products to screen
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

                        // if result size < PAGE_SIZE - there is no remaining product, stop process, else continue loading
                        if (rs.length == PAGE_SIZE) {
                            currentPage++;
                            loadProductList();
                        }
                    },
                    error: function(err) {
                        console.log("Get products failed");
                        return false;
                    }
                });
    }
    loadProductList();

    // Animation for sidebar
    $('.cate-text.href').click(function() {
        $("#item-container").empty();
        categoryName = $(this).children('a').attr('href');
        currentPage = 1;
        loadProductList();
    });
});
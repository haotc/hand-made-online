$(document).ready(function() {
    $('.quantity').change(function() {
        var index = $(this).parent().parent().children().first().text();
        var quantity = $(this).val();
        $.ajax({
                    type: "GET",
                    url: "change-cart",
                    data: {"index": index, "quantity": quantity},
                    success: function(rs) {
                    },
                    error: function(err) {
                        console.log("Change cart failed");
                        return false;
                    }
                });
        var unitPrice = $(this).parent().parent().children().children('.unit-price').children('span').first().text();
        var itemTotal = $(this).parent().parent().children().children('.cost').children('span').first().text();
        $(this).parent().parent().children().children('.cost').children('span').first().text(quantity * unitPrice);
        var costTotal = $(this).parent().parent().parent().children().last().children().last().children().children('span').text();
        $(this).parent().parent().parent().children().last().children().last().children().children('span').text(costTotal - itemTotal + quantity * unitPrice);
    });
});
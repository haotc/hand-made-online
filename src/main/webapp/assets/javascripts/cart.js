$(document).ready(function() {
    $('.quantity').click(function() {
        var quantity = $(this).val();
        var unitPrice = $(this).parent().parent().children().children('.unit-price').children('span').first().text();
        var itemTotal = $(this).parent().parent().children().children('.cost').children('span').first().text();
        $(this).parent().parent().children().children('.cost').children('span').first().text(quantity * unitPrice);
        var costTotal = $(this).parent().parent().parent().children().last().children().last().children().children('span').text();
        $(this).parent().parent().parent().children().last().children().last().children().children('span').text(costTotal - itemTotal + quantity * unitPrice);
    });

    // check if user has logged in before beginning checkout process
    $('#checkout-button').click(function() {
        $('#loginPopup').setAttribute('display', true);
    });
});
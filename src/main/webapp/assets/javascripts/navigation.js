$(document).ready(function() {
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
});
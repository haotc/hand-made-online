$(document).ready(function() {
    // validator for registering
    $("#shipping-address-form").validate({
                rules: {
                    recipientName: "required",
                    recipientMail: {
                        email: true
                    },
                    recipientPhone: "required",
                    recipientAddress: "required"
                },
                messages: {
                    recipientName: "Hãy điền tên người nhận hàng",
                    recipientMail: {
                        email: "Email chưa hợp lệ"
                    },
                    recipientPhone: "Hãy nhập số điện thoại người nhận hàng",
                    recipientAddress: "Hãy nhập địa chỉ giao hàng"
                },
                errorPlacement: function(error, element) {
                    error.appendTo(element.parent());
                }
            });
});
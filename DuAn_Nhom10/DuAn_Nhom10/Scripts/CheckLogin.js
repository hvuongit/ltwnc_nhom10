$(document).ready(function () {

    //Khi bàn phím được nhấn và thả ra thì sẽ chạy phương thức này
    $("#formDemo").validate({
        rules: {
            user: "required",
            password: "required"

        },
        messages: {
            user: "Vui lòng nhập tên đăng nhập",
            password: "Vui lòng nhập mật khẩu"

        }
    });
});
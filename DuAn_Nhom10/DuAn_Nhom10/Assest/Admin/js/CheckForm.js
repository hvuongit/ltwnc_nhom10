$(document).ready(function () {

    //Khi bàn phím được nhấn và thả ra thì sẽ chạy phương thức này
    $("#FormUser").validate({
        rules: {
            userName: "required",
            password: "required",
            name: "required",
            adress: "required",
            email: "required",
            phone: "required",
            permission: "required"
            
        },
        messages: {
            user: "Vui lòng nhập tên đăng nhập",
            password: "Vui lòng nhập mật khẩu"

        }
    });
});
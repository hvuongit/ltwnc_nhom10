
    //$("#av-user").hide();
    //button login via google
    function onSignIn(googleUser) {
        //ẩn đăng nhập khi successful login
        $("#nav-login").hide();

        
        var profile = googleUser.getBasicProfile();
        $(".avatar").attr("src", profile.getImageUrl());
        $("#email-user").text(profile.getEmail());
        $("#av-user").show();
    }
    function signOut() {
        var auth2 = gapi.auth2.getAuthInstance();
        auth2.signOut().then(function () {
            alert("Bạn đã đăng xuất");
        });
        $("#av-user").hide();
        $("#nav-login").show();
    }

    //customize google login button
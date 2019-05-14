$(document).ready(function () {
    $('[data-toggle="tooltip"]').tooltip();
    $(".btn-info").css({
        "width": "80%",
        "margin-left": "0px"
    });
    $(".container-fluid").css("max-width", "60%");
    $(".col-left").css("width", "85%");
    $(".btn-mid").text("►");
    
    $(".btn-mid").css("padding", "8px 3px 10px 10px");

    $(".btn-mid").click(function () {
        $(".col-right").fadeToggle("fast", function () {
            if ($(".col-right").is(":visible")) {
                $(".col-left").removeAttr("style");
                $(".btn-info").removeAttr("style");
                $(".container-fluid").css("max-width", "70%");
                $(".btn-mid").text("◀");
                $(".btn-mid").css("padding", "8px 10px 5px 5px");
                //remove google login button's attributes
                $(".abcRioButton").removeAttr("style");
            }
            else {
                $(".btn-info").css({
                    "width": "80%",
                    "margin-left": "0px"
                });
                $(".container-fluid").css("max-width", "60%");
                $(".col-left").css("width", "85%");
                $(".btn-mid").text("►");
                
                $(".btn-mid").css("padding", "8px 3px 10px 10px");
            }
        }); 
    });

    
});


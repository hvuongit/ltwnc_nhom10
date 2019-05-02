$(document).ready(function () {
    $('[data-toggle="tooltip"]').tooltip();
    $(".btn-info").css({
        "width": "70%",
        "margin-left": "0px"
    });
    $(".container-fluid").css("max-width", "60%");
    $(".col-left").css("width", "85%");
    $(".btn-mid").text("►");
    $(".login").css("width", "85%");
    $(".btn-mid").css("padding", "3px 3px 3px 6px");

    $(".btn-mid").click(function () {
        $(".col-right").fadeToggle("fast", function () {
            if ($(".col-right").is(":visible")) {
                $(".col-left").removeAttr("style");
                $(".btn-info").removeAttr("style");
                $(".login").removeAttr("style");
                $(".container-fluid").css("max-width", "70%");
                $(".btn-mid").text("◀");
                $(".btn-mid").css("padding", "3px 6px 3px 3px");
            }
            else {
                $(".btn-info").css({
                    "width": "70%",
                    "margin-left": "0px"
                });
                $(".container-fluid").css("max-width", "60%");
                $(".col-left").css("width", "85%");
                $(".btn-mid").text("►");
                $(".login").css("width", "85%");
                $(".btn-mid").css("padding", "3px 3px 3px 6px");
            }
        }); 
    });
});
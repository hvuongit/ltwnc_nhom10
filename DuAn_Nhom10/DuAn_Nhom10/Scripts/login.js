$(document).ready(function () {
    $(".btn-mid").click(function () {
        $(".col-right").fadeOut("slow");
        $(".btn-mid").toggleClass("btn-mid-new");
        $(".btn-mid-new").removeClass("btn-mid");
        $(".btn-mid-new").text("►");
    });
});
$(document).ready(function () {
    $(".btn-mid-new").click(function () {
        $(".col-right").fadeIn("slow");
        $(".btn-mid-new").toggleClass("btn-mid");
        $(".btn-mid").removeClass("btn-mid-new");
        $(".btn-mid").text("◀");
    });
});
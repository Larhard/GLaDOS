function href_button(button) {
    location.href = $(this).attr('data-href');
}

$(document).ready(function() {
    $(document).on("click", ".href", href_button)
});

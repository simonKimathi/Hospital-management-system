//open lightbox with href #lightbox, matching its data-lightbox
var lightbox = $("a[href$='#lightbox']");
$(lightbox).click(function() {
    //alert('clicked'); //as test
    event.preventDefault();
    var content = $('#' + $(this).data("lightbox") + '.paslo_lightbox').addClass("active"); //get the matching content and add active class
    var modalWidth = $(this).data("width");
    var close = '<span class="close">x</span>'; //add close button
    var modal = $(content).prepend(close).wrap('<div class="lightbox_overlay"></div>'); //add transparent dark background div around lightbox
    $(modal).show(); //show lightbox
    $(".paslo_lightbox.active").width(modalWidth);
});

function closeModal() {
    //alert( "clicked" );
    $('.paslo_lightbox.active span.close').remove(); //remove close button
    $('.paslo_lightbox.active').unwrap(); //remove transparent background div
    $('.paslo_lightbox.active').removeClass("active"); //remove active class
    $('.paslo_lightbox').hide(); //hide lightbox
}

//close lightbox when press X
$(document).on("click", ".paslo_lightbox span.close", function(e) {
    closeModal();
});

//close lightbox when press anywhere outside lightbox
$(document).on("click", ".lightbox_overlay", function(e) {
    if ($(e.target).is(".lightbox_overlay")) { //only select the transparent background
        closeModal();
    }
});

//close lightbox when press escape button
$(document).keyup(function(event) {
    if (event.which == '27') {
        closeModal();
    }
});

function open_login (){
    $('.login_wrapper').show();
    $('.form').hide();
    $('.seller_policy').hide();
    $('.login_form').show();
    $('.login_switch').text('Forgot your Password?');
    $('.register_list').css('background', '#d2d8d8');
    $('.login_list').css('background', '#fff');
}
function open_register (){
    $('.register_wrapper').show();
    $('.form').hide();
    $('.seller_policy').hide();
    $('.register_form').show();
    $('.login_list').css('background', '#d2d8d8');
    $('.register_list').css('background', '#fff');
}

//open specific document
$(document).on("click", ".form-switcher > li a", function(e) {
    //alert ('test');
    $('.form_wrapper').hide();
    if ($(e.target).is(".login")) {
        open_login();
    } else {
        open_register();
    }
});
$(document).on("click", ".lightbox", function(e) {
    //alert ('test');
    $('.form_wrapper').hide();
    if ($(this).data("form") == "register") {
        open_register();
    } else {
        open_login();
    }
});

$(document).on("click", ".login_switch_link > .login_switch", function(e) {
    //alert ('test');
    if ($('.login_form').is(":visible")) {
        $('.login_form').hide();
        $('.password_form').show();
        $('.login_switch').text('Login');
    } else {
        $('.password_form').hide();
        $('.login_form').show();
        $('.login_switch').text('Forgot your Password?');
    }
});

$(document).on("click", ".seller_policy_link", function(e) {
    if ($('.seller_policy').is(":visible")) {
        $('.seller_policy').hide();
    } else {
        $('.seller_policy').show();
    }
});

function ucfirst(str,force){
    str=force ? str.toLowerCase() : str;
    return str.replace(/(\b)([a-zA-Z])/,
        function(firstLetter){
            return   firstLetter.toUpperCase();
        });
}

$(document).on("change", "#user_login", function(e) {
    var cp_value= ucfirst($(this).val(),true) ;
    $('#user_email').val(cp_value +' Store');
});

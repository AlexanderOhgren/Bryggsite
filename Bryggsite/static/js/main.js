window.addEventListener("scroll", text_popup);

function text_popup() {
    var slide_text = document.querySelectorAll(".slide-text-container");

    for(var i = 0; i < slide_text.length; i++) {
        var window_height = window.innerHeight;
        var reveal_top = slide_text[i].getBoundingClientRect().top;
        var slide_point = 30;

        if(reveal_top < window_height - slide_point) {
            slide_text[i].style.animation = "side-slide 1s";
            console.log("hejsan");
        }
    }
}

function scroll_left() {
    var left = document.querySelector(".scroll-container");
    left.scrollBy(-350, 0)
}

function scroll_right() {
    var right = document.querySelector(".scroll-container");
    right.scrollBy(350, 0)
}

function closeMenu() {
    document.getElementById("my_side_menu").style.width = "0";
}

function openMenu() {
    document.getElementById("my_side_menu").style.width = "250px";
}

function overlay_on() {
    document.getElementById("opacity-overlay").style.display = "block";
}

function overlay_off() {
    document.getElementById("opacity-overlay").style.display = "none";
}
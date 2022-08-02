/**Initialize Swiper**/
var swiper = new Swiper('.mySwiper', {
    slidesPerView: 3,
    centeredSlides: true,
    spaceBetween: 30,
    pagination: {
        el: ".swiper-pagination",
        type: "fraction",
    },
    loop: true,
    navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
    },
});

var appendNumber = 4;


document
    .querySelector('.append-slide')
    .addEventListener('click', function (e, imgPath, name, enName) {
        e.preventDefault();
        swiper.appendSlide(
            '<div class="swiper-slide"> ' +
            '  <div class="card">' +
            '  <div class="image-content" style="background-image: url(' + imgPath + '); background-repeat: no-repeat; background-position: center center; background-size: cover;">' +
            '</div>' +
            ' <div class="card-body">' +
            ' <h4 class="card-title">' + name +
            '  <br /> <h5>' + enName + '</h5>  </h4>' +
            '</div>' +
            ' </div>' +
            '</div>'
        );
    });




var swiper2 = new Swiper('.mySwiper2', {
    slidesPerView: 3,
    centeredSlides: true,
    spaceBetween: 30,
    pagination: {
        el: ".swiper-pagination",
        type: "fraction",
    },
    loop: true,
    navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
    },
});

var appendNumber2 = 3;


document
    .querySelector('.append-slide2')
    .addEventListener("click", function (e2, imgPath2, name2, enName2) {
        e2.preventDefault();
        swiper2.appendSlide(
            '<div class="swiper-slide"> ' +
            '  <div class="card">' +
            '  <div class="image-content" style="background-image: url(' + imgPath2 + '); background-repeat: no-repeat; background-position: center center; background-size: cover;">' +
            '</div>' +
            ' <div class="card-body">' +
            ' <h4 class="card-title">' + name2 +
            '  <br /> <h5>' + enName2 + '</h5>  </h4>' +
            '</div>' +
            ' </div>' +
            '</div>'
        );
    });
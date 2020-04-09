function setBackground() {
	$('[setBackground]').each(function () {
		var background = $(this).attr('setBackground')
		$(this).css({
			"background-image": "url(" + background + ")",
			"background-size": "cover",
			"background-position": "center center"
		})
	})
	$('[setBackgroundRepeat]').each(function () {
		var background = $(this).attr('setBackgroundRepeat')
		$(this).css({
			"background-image": "url(" + background + ")",
			"background-repeat": "repeat"
		})
	})
}

function toggleMenu() {
	$('.toggle-btn').on('click', function () {
		$('.toggle-btn').toggleClass('active')
		$('.nav-mobile').toggleClass('active')
		$('.back-drop').toggleClass('active')
		$('body').toggleClass('over-hidden')
	});
	$('.button-search').on('click', function () {
		$('.search-wrap').toggleClass('active')
		$('.back-drop').toggleClass('active')
		$('body').toggleClass('over-hidden')
	});
	$('.back-drop').on('click', function () {
		$('.toggle-btn').removeClass('active')
		$('.nav-mobile').removeClass('active')
		$('.back-drop').removeClass('active')
		$('body').removeClass('over-hidden')
	});
	$('.back-drop').on('click', function () {
		$('.search-wrap').removeClass('active')
		$('.back-drop').removeClass('active')
		$('body').removeClass('over-hidden')
	});
}

function toolNavMapping() {
	try {
		return new MappingListener({
			selector: ".header .menu",
			mobileWrapper: ".header .nav-mobile",
			mobileMethod: "appendTo",
			desktopWrapper: ".header .menu-wrapper",
			desktopMethod: "appendTo",
			breakpoint: 1025
		}).watch()
	} catch (e) {}
}

function toolSearchMapping() {
	try {
		return new MappingListener({
			selector: ".header .head-wrap .head .head__searchbox",
			mobileWrapper: ".header .header-bottom .menu-wrapper .search-wrap ",
			mobileMethod: "appendTo",
			desktopWrapper: ".header .head-wrap .head .head__language",
			desktopMethod: "insertBefore",
			breakpoint: 1025
		}).watch()
	} catch (e) {}
}

function Headers() {
	$(window).scroll(function () {
		if ($(window).scrollTop() >= 50) {
			$('header .header-bottom').addClass('fixed');
			$('header .head-wrap').addClass('visible');
		} else {
			$('header .header-bottom').removeClass('fixed');
			$('header .head-wrap').removeClass('visible');
		}
	});

}

function Aos() {
	AOS.init({
		disable: 'phone',
		disable: "mobile",
		startEvent: "DOMContentLoaded",
		initClassName: "aos-init",
		animatedClassName: "aos-animate",

		delay: 0,
		duration: 700,
		easing: "ease",
		once: true,
		mirror: false,
		anchorPlacement: "top-bottom"
	});
}

function swiperInit() {
	let ResultSlider = new Swiper('.result-slider .swiper-container', {
		speed: 1000,
		autoplay: {
			delay: 3500
		},
		loop: true,
		navigation: {
			clickable: true,
			nextEl: '.result-slider .swiper-btn-next',
			prevEl: '.result-slider .swiper-btn-prev'
		},
	})
	let PrizeSlider = new Swiper('.prize-slider .swiper-container', {
		speed: 1000,
		// autoplay: {
		//     delay: 3500
		// },
		loop: true,
		slidesPerView: 5,
		spaceBetween: 20,
		navigation: {
			clickable: true,
			nextEl: '.prize-slider .swiper-btn-next',
			prevEl: '.prize-slider .swiper-btn-prev'
		},
		breakpoints: {
			576: {
				slidesPerView: 1,
			},
			768: {
				slidesPerView: 2,
			},
			1025: {
				slidesPerView: 3,
			},
			1200: {
				slidesPerView: 4,
			}
		}
	})

	let ProBuySlider = new Swiper('.pro-buy .swiper-container', {
		speed: 1000,
		loop: true,
		navigation: {
			clickable: true,
			nextEl: '.pro-buy .swiper-btn-next',
			prevEl: '.pro-buy .swiper-btn-prev'
		},
	})

	let ProDonateSlider = new Swiper('.pro-donate .swiper-container', {
		speed: 1000,
		loop: true,
		navigation: {
			clickable: true,
			nextEl: '.pro-donate .swiper-btn-next',
			prevEl: '.pro-donate .swiper-btn-prev'
		},
	})

}

function DataTable() {
	var items = $(".table .item");
    var numItems = items.length;
    var perPage = 4;

    items.slice(perPage).hide();

    $('#pagination-container').pagination({
        items: numItems,
        itemsOnPage: perPage,
        prevText: "&laquo;",
        nextText: "&raquo;",
        onPageClick: function (pageNumber) {
            var showFrom = perPage * (pageNumber - 1);
            var showTo = showFrom + perPage;
            items.hide().slice(showFrom, showTo).show();
        }
    });
}

function modalToggle() {
	$('#modal').on('click', function () {
		$('#modal').toggleClass('active')
		$('.modal-overlay').toggleClass('active')
		$('.modal').toggleClass('active')
		$('body').toggleClass('over-hidden')
	});
	$('.close-btn').on('click', function () {
		$('#modal').removeClass('active')
		$('.modal-overlay').removeClass('active')
		$('.modal').removeClass('active')
		$('body').removeClass('over-hidden')
	});
	$('.modal-overlay').on('click', function () {
		$('.modal').removeClass('active')
		$('.modal-overlay').removeClass('active')
		$('body').removeClass('over-hidden')
	});
}

$(document).ready(function () {
	swiperInit()
	Headers()
	setBackground()
	DataTable()
	toggleMenu()
	toolNavMapping()
	toolSearchMapping()
	Aos()
	modalToggle()
})
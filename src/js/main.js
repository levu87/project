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
	$('.mobile-toggle').on('click', function () {
		$('.mobile-toggle').toggleClass('active')
		$('.mobile-menu').toggleClass('active')
		$('.back-drop').toggleClass('active')
		$('body').toggleClass('over-hidden')
	});
	$('.back-drop').on('click', function () {
		$('.mobile-toggle').removeClass('active')
		$('.mobile-menu').removeClass('active')
		$('.back-drop').removeClass('active')
		$('body').removeClass('over-hidden')
	});
}
function toolNavMapping() {
	try {
		return new MappingListener({
			selector: ".header .main-menu",
			mobileWrapper: ".header .mobile-menu",
			mobileMethod: "appendTo",
			desktopWrapper: ".header .main-wrap .right",
			desktopMethod: "prependTo",
			breakpoint: 1025
		}).watch()
	} catch (e) {}
}

function Headers(){
	var e = 0;
    $(window).scroll(function () {
        var i = $(window).scrollTop();
        $("body header").toggleClass("hide", i > e), e = $(window).scrollTop(), i > 0 ? $("header .header__top").addClass("hidden") : $("header .header__top").removeClass("hidden"),i > 0 ? $("header .header__bottom").addClass("bg") : $("header .header__bottom").removeClass("bg"), $(window).scrollTop() >= $(document).height() - $(window).height() && $(".load-more").trigger("click")
    })
}
function Aos(){
	AOS.init({
		disable: 'phone',
		disable: "mobile", // accepts following values: 'phone', 'tablet', 'mobile', boolean, expression or function
		startEvent: "DOMContentLoaded", // name of the event dispatched on the document, that AOS should initialize on
		initClassName: "aos-init", // class applied after initialization
		animatedClassName: "aos-animate", // class applied on animation

		delay: 0, // values from 0 to 3000, with step 50ms
		duration: 700, // values from 0 to 3000, with step 50ms
		easing: "ease", // default easing for AOS animations
		once: true, // whether animation should happen only once - while scrolling down
		mirror: false, // whether elements should animate out while scrolling past them
		anchorPlacement: "top-bottom" // defines which position of the element regarding to window should trigger the animation
	});
}
function compareZoom(){
	$('.box-compare .zoom').click(function () {
 
		if ($(this).hasClass('in')) {
		
		 $(this).removeClass('in');
		 $('.box-compare').removeClass('active');
		 $(this).addClass('out');
		} else {
		  $(this).removeClass('out');
		 $('.box-compare').addClass('active');
		 $(this).addClass('in');
		}
	  });
}
function swiperInit(){
	let HomeBanner = new Swiper('.home-banner .swiper-container', {
        speed: 1000,
        navigation: {
            clickable: true,
            nextEl: '.home-banner .swiper-next',
            prevEl: '.home-banner .swiper-prev'
        },
        pagination: {
            el: '.home-banner .swiper-pagination',
            clickable: true
        },
	})
	var galleryThumbs = new Swiper('.project-detail .gallery-thumbs', {
		spaceBetween: 10,
		slidesPerView: 4,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
	  });
	  var galleryTop = new Swiper('.project-detail .gallery-top', {
		spaceBetween: 10,
		navigation: {
		  nextEl: '.gallery-top .swiper-button-next',
		  prevEl: '.gallery-top .swiper-button-prev',
		},
		thumbs: {
		  swiper: galleryThumbs
		}
	  });
}
function autorun(){
	$('.home-utilities .cicre span').each(function () {
	  $(this).prop('Counter',0).animate({
		  Counter: $(this).text()
	  }, {
		  duration: 5000,
		  easing: 'swing',
		  step: function (now) {
			  $(this).text(Math.ceil(now));
			  $('.big').addClass('active');           
		  }
	  });
	//   var something = $(".circle .item")
	//   .css({border:  '1.6rem solid #0799d9'})
	  
	//   .show()        
	//   setTimeout(function(){
	// 	  something.css({border: '1.6rem solid #ffffff'});
	//   },5000);
  });
  }
  function showmore(){
	$(".home-news .list-item .item").slice(0,6).show();
	$(".view-more").click(function(e){
	  e.preventDefault();
	  $(".home-news .list-item .item:hidden").slice(0,3).fadeIn("slow");
	  
	  if($(".home-news .list-item .item:hidden").length == 0){
		 $(".view-more").fadeOut("slow");
		}
	});
  }
  function gotop() {
	$('#gotop').on('click', function () {
	  $('html,body').animate({
		scrollTop: 0
	  }, 1000)
	})
  }
  function sidebarMenu() {
	$('.has-submenu').on('click', function () {
		if ($(this).find('ul').is(':hidden')) {
		$(this).find('ul').slideDown()
		$(this).addClass('active')
		
		} else {
		$(this).find('ul').slideUp()
		$(this).removeClass('active')
		}
	});
	$('.sidebar-menu .side-menu-mobile-header').on('click', function () {
		$('.sidebar-menu .menu-list').slideToggle()
	})
}
function CustomSelect() {
	var x, i, j, selElmnt, a, b, c;
	/*look for any elements with the class "custom-select":*/
	x = document.getElementsByClassName("custom-select");
	for (i = 0; i < x.length; i++) {
	  selElmnt = x[i].getElementsByTagName("select")[0];
	  /*for each element, create a new DIV that will act as the selected item:*/
	  a = document.createElement("DIV");
	  a.setAttribute("class", "select-selected");
	  a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;
	  x[i].appendChild(a);
	  /*for each element, create a new DIV that will contain the option list:*/
	  b = document.createElement("DIV");
	  b.setAttribute("class", "select-items select-hide");
	  for (j = 1; j < selElmnt.length; j++) {
		/*for each option in the original select element,
		create a new DIV that will act as an option item:*/
		c = document.createElement("a");
		c.innerHTML = selElmnt.options[j].innerHTML;
		c.setAttribute('href', selElmnt.options[j].value)
		c.addEventListener("click", function (e) {
		  /*when an item is clicked, update the original select box,
		  and the selected item:*/
		  var y, i, k, s, h;
		  s = this.parentNode.parentNode.getElementsByTagName("select")[0];
		  h = this.parentNode.previousSibling;
		  for (i = 0; i < s.length; i++) {
			if (s.options[i].innerHTML == this.innerHTML) {
			  s.selectedIndex = i;
			  h.innerHTML = this.innerHTML;
			  y = this.parentNode.getElementsByClassName("same-as-selected");
			  for (k = 0; k < y.length; k++) {
				y[k].removeAttribute("class");
			  }
			  this.setAttribute("class", "same-as-selected");
			  break;
			}
		  }
		  h.click();
		});
		b.appendChild(c);
	  }
	  x[i].appendChild(b);
	  a.addEventListener("click", function (e) {
		// khi hộp chọn được nhấp, đóng bất kỳ hộp chọn nào khác, và mở / đóng hộp chọn hiện tại
		e.stopPropagation();
		closeAllSelect(this);
		this.nextSibling.classList.toggle("select-hide");
		this.classList.toggle("select-arrow-active");
	  });
	}
  
	function closeAllSelect(elmnt) {
	  /*a function that will close all select boxes in the document,
	  except the current select box:*/
	  var x, y, i, arrNo = [];
	  x = document.getElementsByClassName("select-items");
	  y = document.getElementsByClassName("select-selected");
	  for (i = 0; i < y.length; i++) {
		if (elmnt == y[i]) {
		  arrNo.push(i)
		} else {
		  y[i].classList.remove("select-arrow-active");
		}
	  }
	  for (i = 0; i < x.length; i++) {
		if (arrNo.indexOf(i)) {
		  x[i].classList.add("select-hide");
		}
	  }
	}
	/*if the user clicks anywhere outside the select box,
	then close all select boxes:*/
	document.addEventListener("click", closeAllSelect);
  }
function tabActive(){
	$('.menu-list li').click(function(){
		var tab_id = $(this).attr('data-tab');

		$('.menu-list li').removeClass('active');
		$('.tab-content').removeClass('active');

		$(this).addClass('active');
		$("#"+tab_id).addClass('active');
	})
}

function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function(e) {
            $('#imagePreview').css('background-image', 'url('+e.target.result +')');
            $('#imagePreview').hide();
            $('#imagePreview').fadeIn(650);
        }
        reader.readAsDataURL(input.files[0]);
    }
}
$("#imageUpload").change(function() {
    readURL(this);
});

function handleFileSelect(evt) {
	var files = evt.target.files; // FileList object
	// Loop through the FileList and render image files as thumbnails.
	for (var i = 0, f; f = files[i]; i++) {
	// Only process image files.
	if (!f.type.match('image.*')) {
	continue;
	}
	var reader = new FileReader();
	// Closure to capture the file information.
	reader.onload = (function(theFile) {
	return function(e) {
	// Render thumbnail.
	var span = document.createElement('span');
	span.innerHTML = ['<img class="thumb" src="', e.target.result,
	'" title="', escape(theFile.name), '"/>'].join('');
	document.getElementById('list').insertBefore(span, null);
	};
	})(f);

	// Read in the image file as a data URL.
	reader.readAsDataURL(f);
	}
	}
	$('#files').change(handleFileSelect);
function textEditor(){
	$('#summernote').summernote();
}
function userToggle(){
	// $('.account-after .user').click(function () {
	// 	$('.account-after .list-item').toggleClass('active')
	// })

	$(function() {
		$(".account-after .user").on("click", function(e) {
		  $(".account-after .list-item").addClass("active");
		  e.stopPropagation()
		});
		$(document).on("click", function(e) {
		  if ($(e.target).is(".account-after .list-item") === false) {
			$(".account-after .list-item").removeClass("active");
		  }
		});
	  });
}
$(document).ready(function () {
	swiperInit()
	setBackground()
	toggleMenu()
	userToggle()
	toolNavMapping()
	Aos()
	compareZoom()
	autorun()
	showmore()
	Headers()
	gotop()
	sidebarMenu()
	tabActive()
	CustomSelect()
	handleFileSelect()
	textEditor()
	edit()
	readURL(input)
	const listViewButton = document.querySelector('.list-view-button');
	const gridViewButton = document.querySelector('.grid-view-button');
	const list = document.querySelector('.list');

	listViewButton.onclick = function () {
	list.classList.remove('grid-view-filter');
	list.classList.add('list-view-filter');
	gridViewButton.classList.remove('active');
	listViewButton.classList.add('active');
	}

	gridViewButton.onclick = function () {
	list.classList.remove('list-view-filter');
	list.classList.add('grid-view-filter');
	gridViewButton.classList.add('active');
	listViewButton.classList.remove('active');
	}

	
	
});
function edit(){
	CKEDITOR.replace( 'editor1' );
}

$(document).on("click", ".browse", function() {
  var file = $(this).parents().find(".file");
  file.trigger("click");
});
$('input[type="file"]').change(function(e) {
  var fileName = e.target.files[0].name;
  $("#file").val(fileName);

  var reader = new FileReader();
  reader.onload = function(e) {
    // get loaded data and render thumbnail.
    document.getElementById("preview").src = e.target.result;
  };
  // read the image file as a data URL.
  reader.readAsDataURL(this.files[0]);
});



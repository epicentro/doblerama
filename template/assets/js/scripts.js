/*
Version: 1.4
*/
;
(function()
{
	"use strict"; // use strict to start
	$(document).on('ready',function()
	{
		/* === Preloader === */
		var $preloader=$("#preloader");
		$preloader.delay(200).fadeOut("slow");
		
		/* === Oneplus menu === */
		$("#header-menu-alt").html('<ul class="menuzord-menu">' + $("#menu-list").html() + "</ul>");
		jQuery("#header-menu, #header-menu-alt").menuzord(
		{
			indicatorFirstLevel: "<i class='fa fa-caret-down'></i>",
			indicatorSecondLevel: "<i class='fa fa-caret-right'></i>"
		});
		/* === nav sticky header === */
		var navBottom = $(".nav-bottom").offset();
		$(window).on('scroll', function()
		{
			var w = $(window).width();
			if ($(".nav-bottom").length == 0)
			{
				if (w > 768)
				{
					if ($(this).scrollTop() > 1)
					{
						$('header').addClass("sticky");
					}
					else
					{
						$('header').removeClass("sticky");
					}
				}
			}
			else
			{
				if (w > 768)
				{
					if ($(this).scrollTop() > navBottom.top + 100)
					{
						$('header').addClass("sticky");
					}
					else
					{
						$('header').removeClass("sticky");
					}
				}
			}
		});
		/* === sticky header alt === */
		$(window).on('scroll', function()
		{
			var w = $(window).width();
			if (w > 768)
			{
				if ($(this).scrollTop() > 1)
				{
					$('.mainmenu').slideUp(function()
					{
						$('.menu-appear-alt').css(
						{
							position: "fixed",
							top: 0,
							left: 0,
							width: w,
							zIndex: 99999
						});
						$('.menu-appear-alt').slideDown();
					});
				}
				else
				{
					$('.menu-appear-alt').slideUp(function()
					{
						$('.menu-appear-alt').css(
						{
							position: "relative",
							top: 0,
							left: 0,
							width: w,
							zIndex: 99999
						});
						$('.mainmenu').slideDown();
					});
				}
			}
			var $preloader=$(".nav-bottom");
     		$preloader.css("z-Index", 100000);
			if (navBottom)
			{
				if ($(window).scrollTop() > (navBottom.top))
				{
					$(".nav-bottom").css(
					{
						"position": "fixed",
						"top": "0px",
						"left": "0px"
					});
				}
				else
				{
					$(".nav-bottom").css(
					{
						"position": "fixed",
						top: navBottom.top - $(window).scrollTop() + "px"
					});
				}
			}
		});
		/* === Onepage Menu === */
		$(".op-nav li").on("click", function()
		{
			if ($(".showhide").is(":visible"))
			{
				$(".showhide").trigger("click");
			}
			$(".op-nav li").removeClass("active");
			$(this).addClass("active");
		});
		/* === Search === */
		(function()
		{
			$('.search-trigger').on('click', function(e)
			{
				$('body').addClass('active-search');
			});
			$('.search-close').on('click', function(e)
			{
				$('body').removeClass('active-search');
			});
		}());
		/* === Page scrolling feature === */				
		$('a.page-scroll').on('click', function(event)
		{
			var $anchor = $(this);
			$('html, body').stop().animate(
			{
				scrollTop: $($anchor.attr('href')).offset().top - 60
			}, 1500, 'easeInOutExpo');
			event.preventDefault();
		});
		/* === for onepage menu scroll === */
		if (typeof smoothScroll == 'object')
		{
			smoothScroll.init();
		}
		/* === Full Screen Banner === */
		$(window).on('resizeEnd', function()
		{
			$(".fullscreen-banner").height($(window).height());
		});
		$(window).resize(function()
		{
			if (this.resizeTO) clearTimeout(this.resizeTO);
			this.resizeTO = setTimeout(function()
			{
				$(this).trigger('resizeEnd');
			}, 300);
		}).trigger("resize");
		/* === Tab to Collapse === */
		var $nav_tabs=$('.nav-tabs');				
		if ($nav_tabs.length > 0)
		{
			$nav_tabs.tabCollapse();
		}
		/* === Detect IE version === */
		(function()
		{
			function getIEVersion()
			{
				var match = navigator.userAgent.match(/(?:MSIE |Trident\/.*; rv:)(\d+)/);
				return match ? parseInt(match[1], 10) : false;
			}
			if (getIEVersion())
			{
				$('html').addClass('ie' + getIEVersion());
			}
		}());
		/* === Counter === */
		var $preloader=$(".counter-section");
     	$preloader.on('inview', function(event, visible, visiblePartX, visiblePartY)		
		{
			if (visible)
			{
				$(this).find('.timer').each(function()
				{
					var $this = $(this);
					$(
					{
						Counter: 0
					}).animate(
					{
						Counter: $this.text()
					},
					{
						duration: 2000,
						easing: 'swing',
						step: function()
						{
							$this.text(Math.ceil(this.Counter));
						}
					});
				});
				$(this).off('inview');
			}
		});				
		/* === CountDown === */
		var $countdown=$('.countdown');				
		if ($countdown.length > 0)
		{
			$countdown.countdown(
			{
				date: "31 december 2017 12:00:00",
				format: "on"
			});
		}
		/* === magnificPopup === */
		var $tt_lightbox=$('.tt-lightbox');				
		if ($tt_lightbox.length > 0)
		{
			$tt_lightbox.magnificPopup(
			{
				type: 'image',
				mainClass: 'mfp-fade',
				removalDelay: 160,
				fixedContentPos: false
					// other options
			});
		}		
		var $popup_video=$('.popup-video');				
		if ($popup_video.length > 0)
		{
			$popup_video.magnificPopup(
			{
				disableOn: 700,
				type: 'iframe',
				mainClass: 'mfp-fade',
				removalDelay: 160,
				preloader: false,
				fixedContentPos: false
			});
		}
		/* === Gallery Thumb Carousel === */
		var $gallery_thumb=$('.gallery-thumb');				
		if ($gallery_thumb.length > 0)
		{
			$gallery_thumb.flexslider(
			{
				animation: "slide",
				controlNav: "thumbnails",
			});
		}
		/* === Circle Thumb Testimonial === */		
		var $circle_thumb=$('.circle-thumb');				
		if ($circle_thumb.length > 0)
		{
			$circle_thumb.flexslider(
			{
				animation: "slide",
				controlNav: "thumbnails"
			});
		}
		/* === Square Thumb Testimonial === */
		var $square_thumb=$('.square-thumb');				
		if ($square_thumb.length > 0)
		{
			$square_thumb.flexslider(
			{
				animation: "slide",
				controlNav: "thumbnails"
			});
		}
		/* === Logo Thumb Testimonial === */
		var $logo_thumb=$('.logo-thumb');				
		if ($logo_thumb.length > 0)
		{
			$logo_thumb.flexslider(
			{
				animation: "slide",
				controlNav: "thumbnails"
			});
		}
		/* === Logo Thumb Right Testimonial === */
		var $logo_thumb_right=$('.logo-thumb-right');				
		if ($logo_thumb_right.length > 0)
		{
			$logo_thumb_right.flexslider(
			{
				animation: "slide",
				controlNav: "thumbnails"
			});
		}
		/* === Parallax Testimonial on agency demo === */
		var $parallax_carousel=$('.parallax-carousel');				
		if ($parallax_carousel.length > 0)
		{
			$parallax_carousel.flexslider(				
			{
				animation: "slide"
			});
		}
		/* === Quote Carousel === */
		if ($('.quote-carousel').length > 0)
		{
			$('.quote-carousel').owlCarousel(
			{
				loop: true,
				autoHeight: true,
				responsive:
				{
					0:
					{
						items: 1
					},
					600:
					{
						items: 1
					},
					1000:
					{
						items: 1
					}
				}
			});
		}
		/* === Featured item carousel === */
		var $featured_carousel=$('.featured-carousel');				
		if ($featured_carousel.length > 0)
		{
			$featured_carousel.owlCarousel(
			{
				loop: true,
				margin: 12,
				responsive:
				{
					0:
					{
						items: 1
					},
					600:
					{
						items: 2
					},
					1000:
					{
						items: 3
					}
				}
			});
		}
		/* === SEO Featured Service carousel === */		
		var $seo_featured_carousel=$('.seo-featured-carousel');				
		if ($seo_featured_carousel.length > 0)
		{
			$seo_featured_carousel.owlCarousel(
			{
				loop: true,
				margin: 30,
				responsive:
				{
					0:
					{
						items: 1
					},
					600:
					{
						items: 2
					},
					1000:
					{
						items: 4
					}
				}
			});
		}
		/* === Latest Blog Carousel === */		
		var $blog_carousel=$('.blog-carousel');				
		if ($blog_carousel.length > 0)
		{
			$blog_carousel.owlCarousel(
			{
				loop: true,
				margin: 26,
				responsive:
				{
					0:
					{
						items: 1
					},
					600:
					{
						items: 2
					},
					1000:
					{
						items: 3
					}
				}
			});
		}
		/* === project carousel in digital agency demo === */
		var $project_carousel=$('.project-carousel');				
		if ($project_carousel.length > 0)
		{
			$project_carousel.owlCarousel(
			{
				loop: true,
				responsive:
				{
					0:
					{
						items: 1
					},
					600:
					{
						items: 1
					},
					1000:
					{
						items: 1
					}
				}
			});
		}
		/* === career carousel in digital agency demo === */
		var $career_carousel=$('.career-carousel');				
		if ($career_carousel.length > 0)
		{
			$career_carousel.owlCarousel(
			{
				loop: true,
				autoPlay: true,
				responsive:
				{
					0:
					{
						items: 1
					},
					600:
					{
						items: 1
					},
					1000:
					{
						items: 1
					}
				}
			});
		}
		/* === blogGrid === */
		if ($('#blogGrid').length > 0)
		{
			var $grid = $('#blogGrid').imagesLoaded(function()
			{
				// init Masonry after all images have loaded
				$grid.masonry(
				{
					itemSelector: '.blog-grid-item',
				});
			});
		}
		/* === Progress Bar === */
		var $preloader=$(".progress");
     	$preloader.on('inview', function(event, visible, visiblePartX, visiblePartY)
		{
			if (visible)
			{
				$.each($('div.progress-bar'), function()
				{
					$(this).css('width', $(this).attr('aria-valuenow') + '%');
				});
				$(this).off('inview');
			}
		});
		/* ======= Contact Form ======= */
		var $contactForm=$("#contactForm");
		$contactForm.on('submit', function(e)
		{
			e.preventDefault();
			var $action = $(this).prop('action');
			var $data = $(this).serialize();
			var $this = $(this);
			$this.prevAll('.alert').remove();
			$.post($action, $data, function(data)
			{
				if (data.response == 'error')
				{
					$this.before('<div class="alert danger-border"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button> <i class="fa fa-times-circle"></i> ' + data.message + '</div>');
				}
				if (data.response == 'success')
				{
					$this.before('<div class="alert success-border"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button><i class="fa fa-thumbs-o-up"></i> ' + data.message + '</div>');
					$this.find('input, textarea').val('');
				}
			}, "json");
		});		
		/* ======= Stellar for background scrolling ======= */
		var $parallax_bg=$('.parallax-bg');
		if ($parallax_bg.length > 0)
		{
			$parallax_bg.imagesLoaded(function()
			{
				$(window).stellar(
				{
					horizontalScrolling: false,
					verticalOffset: 0,
					horizontalOffset: 0,
					responsive: true,
					hideDistantElements: true
				});
			});
		}
		/* ======= shuffle js ======= */
		$(window).on('load', function()
		{
			$('.portfolio-container').each(function(i, e)
			{
				var ttGrid = $(this).find('.portfolio');
				var self = this;
				ttGrid.shuffle(
				{
					itemSelector: '.portfolio-item' // the selector for the items in the grid
				});
				/* reshuffle when user clicks button filter item */
				$(this).find('.portfolio-filter li').on('click', function(e)
				{
					e.preventDefault();
					// set active class
					$(self).find('.portfolio-filter li').removeClass('active');
					$(this).addClass('active');
					// get group name from clicked item
					var ttGroupName = $(this).attr('data-group');
					// reshuffle grid
					ttGrid.shuffle('shuffle', ttGroupName);
				});
			});
		});
		/* ======= Portfolio Slider ======= */
		$(window).on('load', function()
		{
			if ($('.portfolio-slider').length > 0)
			{
				$('.portfolio-wrapper').each(function(i, e)
				{
					var ttPortfolio = $(this).find('.portfolio-slider');
					var ttDirection = ttPortfolio.attr('data-direction');
					ttPortfolio.flexslider(
					{
						animation: "slide",
						direction: ttDirection,
						slideshowSpeed: 3000,
						start: function()
						{
							imagesLoaded($(".portfolio"), function()
							{
								setTimeout(function()
								{
									$('.portfolio-filter li:eq(0)').trigger("click");
								}, 500);
							});
						}
					});
				});
			}
		});		
		/* ======= Scrollup Top ======= */
		$(document).ready(function(){
			$(window).scroll(function(){
				if ($(this).scrollTop() > 100) {
					$('.scrollup').fadeIn();
				} else {
					$('.scrollup').fadeOut();
				}
			});
			$('.scrollup').click(function(){
				$("html, body").animate({ scrollTop: 0 }, 600);
				return false;
			});
		});
		
		/* ======= Portfolio Individual Gallery ======= */
		var $contactForm=$("portfolio-slider");
		$contactForm.each(function()
		{
			var _items = $(this).find("li > a");
			var items = [];
			for (var i = 0; i < _items.length; i++)
			{
				items.push(
				{
					src: $(_items[i]).attr("href"),
					title: $(_items[i]).attr("title")
				});
			}
			$(this).parent().find(".action-btn").magnificPopup(
			{
				items: items,
				type: 'image',
				mainClass: 'mfp-fade',
				removalDelay: 160,
				fixedContentPos: false,
				gallery:
				{
					enabled: true
				}
			});
		});
	});
})(jQuery);
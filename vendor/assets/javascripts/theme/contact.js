/* JS Document */

/******************************

 [Table of Contents]

 1. Vars and Inits
 2. Set Header
 3. Init Search
 4. Init Menu
 5. Init Google Map


 ******************************/

$(document).ready(function () {
	"use strict";

	/* 

	1. Vars and Inits

	*/

	var menu = $('.menu');
	var header = $('.header');
	var menuActive = false;
	var burger = $('.hamburger');
	var map;

	setHeader();

	$(window).on('resize', function () {
		setHeader();
	});

	$(document).on('scroll', function () {
		setHeader();
	});

	initSearch();
	initMenu();

	/* 

	2. Set Header

	*/

	function setHeader() {
		if ($(window).scrollTop() > 100) {
			header.addClass('scrolled');
		} else {
			header.removeClass('scrolled');
		}
	}

	/* 

	3. Init Search

	*/

	function initSearch() {
		var search = $('.search_button');

		if (search.length) {
			search.on('click', function () {
				$('.search_form_container').toggleClass('active');
			});
		}
	}

	/* 

	4. Init Menu

	*/

	function initMenu() {
		if (menu.length) {
			if (burger.length) {
				burger.on('click', function () {
					if (menuActive) {
						closeMenu();
					} else {
						openMenu();

						$(document).one('click', function cls(e) {
							if ($(e.target).hasClass('menu_mm')) {
								$(document).one('click', cls);
							} else {
								closeMenu();
							}
						});
					}
				});
			}
		}
	}

	function openMenu() {
		menu.addClass('active');
		menuActive = true;
	}

	function closeMenu() {
		menu.removeClass('active');
		menuActive = false;
	}

	/* 

	5. Init Map

	*/

	if($(window).width() > 991)
		map = L.map('contact_map').setView([1.35, 103.710], 14);
	else
		map = L.map('contact_map').setView([1.3483478, 103.6906815], 14);

	L.tileLayer('https://api.mapbox.com/styles/v1/{style_id}/tiles/{z}/{x}/{y}?access_token={accessToken}', {
		attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
		maxZoom: 18,
		style_id: 'mapbox/streets-v11',
		accessToken: 'pk.eyJ1Ijoib3Nob3BnaXJpIiwiYSI6ImNqd3hwODNhcTB0Yzc0NG84YmljOHplZG8ifQ.5Ilv3CdVJ4qptj8RbQYE8g'
	}).addTo(map);

	var marker = L.marker(
		[1.3483478, 103.6906815],
		{iconUrl: '/marker-icon-2x.png'}
	).addTo(map);
	$("img[src$='/marker-icon-2x.png']").each(function() {
		$(this).attr('src', '/marker-icon-2x.png');
	})
	$("img[src$='/marker-shadow.png']").remove();

	marker.bindPopup("<b>Nanyang Technological University</b>").openPopup();
});
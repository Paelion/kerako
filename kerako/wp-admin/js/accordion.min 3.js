!function(e){e(document).ready(function(){e(".accordion-container").on("click keydown",".accordion-section-title",function(n){"keydown"===n.type&&13!==n.which||(n.preventDefault(),function(n){var e=n.closest(".accordion-section"),o=e.find("[aria-expanded]").first(),a=e.closest(".accordion-container"),i=a.find(".open"),t=i.find("[aria-expanded]").first(),s=e.find(".accordion-section-content");if(e.hasClass("cannot-expand"))return;a.addClass("opening"),e.hasClass("open")?(e.toggleClass("open"),s.toggle(!0).slideToggle(150)):(t.attr("aria-expanded","false"),i.removeClass("open"),i.find(".accordion-section-content").show().slideUp(150),s.toggle(!1).slideToggle(150),e.toggleClass("open"));setTimeout(function(){a.removeClass("opening")},150),o&&o.attr("aria-expanded",String("false"===o.attr("aria-expanded")))}(e(this)))})})}(jQuery);
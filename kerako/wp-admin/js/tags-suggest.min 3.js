!function(r){if(void 0!==window.tagsSuggestL10n&&void 0!==window.uiAutocompleteL10n){var s=0,a=window.tagsSuggestL10n.tagDelimiter||",";r.fn.wpTagsSuggest=function(t){var i,o,n=r(this),u=(t=t||{}).taxonomy||n.attr("data-wp-taxonomy")||"post_tag";return delete t.taxonomy,t=r.extend({source:function(t,a){var e;o!==t.term?(e=function(t){return l(t).pop()}(t.term),r.get(window.ajaxurl,{action:"ajax-tag-search",tax:u,q:e}).always(function(){n.removeClass("ui-autocomplete-loading")}).done(function(t){var e,o=[];if(t){for(e in t=t.split("\n")){var n=++s;o.push({id:n,name:t[e]})}a(i=o)}else a(o)}),o=t.term):a(i)},focus:function(t,e){n.attr("aria-activedescendant","wp-tags-autocomplete-"+e.item.id),t.preventDefault()},select:function(t,e){var o=l(n.val());return o.pop(),o.push(e.item.name,""),n.val(o.join(a+" ")),r.ui.keyCode.TAB===t.keyCode?(window.wp.a11y.speak(window.tagsSuggestL10n.termSelected,"assertive"),t.preventDefault()):r.ui.keyCode.ENTER===t.keyCode&&(window.tagBox&&(window.tagBox.userAction="add",window.tagBox.flushTags(r(this).closest(".tagsdiv"))),t.preventDefault(),t.stopPropagation()),!1},open:function(){n.attr("aria-expanded","true")},close:function(){n.attr("aria-expanded","false")},minLength:2,position:{my:"left top+2",at:"left bottom",collision:"none"},messages:{noResults:window.uiAutocompleteL10n.noResults,results:function(t){return 1<t?window.uiAutocompleteL10n.manyResults.replace("%d",t):window.uiAutocompleteL10n.oneResult}}},t),n.on("keydown",function(){n.removeAttr("aria-activedescendant")}).autocomplete(t).autocomplete("instance")._renderItem=function(t,e){return r('<li role="option" id="wp-tags-autocomplete-'+e.id+'">').text(e.name).appendTo(t)},n.attr({role:"combobox","aria-autocomplete":"list","aria-expanded":"false","aria-owns":n.autocomplete("widget").attr("id")}).on("focus",function(){l(n.val()).pop()&&n.autocomplete("search")}).autocomplete("widget").addClass("wp-tags-autocomplete").attr("role","listbox").removeAttr("tabindex").on("menufocus",function(t,e){e.item.attr("aria-selected","true")}).on("menublur",function(){r(this).find('[aria-selected="true"]').removeAttr("aria-selected")}),this}}function l(t){return t.split(new RegExp(a+"\\s*"))}}(jQuery);
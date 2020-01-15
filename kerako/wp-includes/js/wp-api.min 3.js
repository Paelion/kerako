!function(e){"use strict";e.wp=e.wp||{},wp.api=wp.api||new function(){this.models={},this.collections={},this.views={}},wp.api.versionString=wp.api.versionString||"wp/v2/",!_.isFunction(_.includes)&&_.isFunction(_.contains)&&(_.includes=_.contains)}(window),function(e){"use strict";var t,i;e.wp=e.wp||{},wp.api=wp.api||{},wp.api.utils=wp.api.utils||{},wp.api.getModelByRoute=function(t){return _.find(wp.api.models,function(e){return e.prototype.route&&t===e.prototype.route.index})},wp.api.getCollectionByRoute=function(t){return _.find(wp.api.collections,function(e){return e.prototype.route&&t===e.prototype.route.index})},Date.prototype.toISOString||(t=function(e){return 1===(i=String(e)).length&&(i="0"+i),i},Date.prototype.toISOString=function(){return this.getUTCFullYear()+"-"+t(this.getUTCMonth()+1)+"-"+t(this.getUTCDate())+"T"+t(this.getUTCHours())+":"+t(this.getUTCMinutes())+":"+t(this.getUTCSeconds())+"."+String((this.getUTCMilliseconds()/1e3).toFixed(3)).slice(2,5)+"Z"}),wp.api.utils.parseISO8601=function(e){var t,i,n,o,s=0,a=[1,4,5,6,7,10,11];if(i=/^(\d{4}|[+\-]\d{6})(?:-(\d{2})(?:-(\d{2}))?)?(?:T(\d{2}):(\d{2})(?::(\d{2})(?:\.(\d{3}))?)?(?:(Z)|([+\-])(\d{2})(?::(\d{2}))?)?)?$/.exec(e)){for(n=0;o=a[n];++n)i[o]=+i[o]||0;i[2]=(+i[2]||1)-1,i[3]=+i[3]||1,"Z"!==i[8]&&void 0!==i[9]&&(s=60*i[10]+i[11],"+"===i[9]&&(s=0-s)),t=Date.UTC(i[1],i[2],i[3],i[4],i[5]+s,i[6],i[7])}else t=Date.parse?Date.parse(e):NaN;return t},wp.api.utils.getRootUrl=function(){return e.location.origin?e.location.origin+"/":e.location.protocol+"//"+e.location.host+"/"},wp.api.utils.capitalize=function(e){return _.isUndefined(e)?e:e.charAt(0).toUpperCase()+e.slice(1)},wp.api.utils.capitalizeAndCamelCaseDashes=function(e){return _.isUndefined(e)?e:(e=wp.api.utils.capitalize(e),wp.api.utils.camelCaseDashes(e))},wp.api.utils.camelCaseDashes=function(e){return e.replace(/-([a-z])/g,function(e){return e[1].toUpperCase()})},wp.api.utils.extractRoutePart=function(e,t,i,n){var o;return t=t||1,i=i||wp.api.versionString,0===e.indexOf("/"+i)&&(e=e.substr(i.length+1)),o=e.split("/"),n&&(o=o.reverse()),_.isUndefined(o[--t])?"":o[t]},wp.api.utils.extractParentName=function(e){var t,i=e.lastIndexOf("_id>[\\d]+)/");return i<0?"":((t=(t=e.substr(0,i-1)).split("/")).pop(),t=t.pop())},wp.api.utils.decorateFromRoute=function(e,t){_.each(e,function(e){_.includes(e.methods,"POST")||_.includes(e.methods,"PUT")?_.isEmpty(e.args)||(_.isEmpty(t.prototype.args)?t.prototype.args=e.args:t.prototype.args=_.extend(t.prototype.args,e.args)):_.includes(e.methods,"GET")&&(_.isEmpty(e.args)||(_.isEmpty(t.prototype.options)?t.prototype.options=e.args:t.prototype.options=_.extend(t.prototype.options,e.args)))})},wp.api.utils.addMixinsAndHelpers=function(t,e,i){function n(e,t,i,n,o){var s,a,r,p;return p=jQuery.Deferred(),a=e.get("_embedded")||{},_.isNumber(t)&&0!==t?(a[n]&&(r=_.findWhere(a[n],{id:t})),r=r||{id:t},(s=new wp.api.models[i](r)).get(o)?p.resolve(s):s.fetch({success:function(e){p.resolve(e)},error:function(e,t){p.reject(t)}}),p.promise()):(p.reject(),p)}var o=!1,s=["date","modified","date_gmt","modified_gmt"],a={setDate:function(e,t){var i=t||"date";if(_.indexOf(s,i)<0)return!1;this.set(i,e.toISOString())},getDate:function(e){var t=e||"date",i=this.get(t);return!(_.indexOf(s,t)<0||_.isNull(i))&&new Date(wp.api.utils.parseISO8601(i))}},d=function(e,t){_.each(e.models,function(e){e.set("parent_post",t)})},r={getMeta:function(e){return this.get("meta")[e]},getMetas:function(){return this.get("meta")},setMetas:function(e){var t=this.get("meta");_.extend(t,e),this.set("meta",t)},setMeta:function(e,t){var i=this.get("meta");i[e]=t,this.set("meta",i)}},p={getRevisions:function(){return function(e,t,i,n){var o,s,a,r="",p="",c=jQuery.Deferred();return o=e.get("id"),s=e.get("_embedded")||{},_.isNumber(o)&&0!==o?(_.isUndefined(i)||_.isUndefined(s[i])?r={parent:o}:p=_.isUndefined(n)?s[i]:s[i][n],a=new wp.api.collections[t](p,r),_.isUndefined(a.models[0])?a.fetch({success:function(e){d(e,o),c.resolve(e)},error:function(e,t){c.reject(t)}}):(d(a,o),c.resolve(a)),c.promise()):(c.reject(),c)}(this,"PostRevisions")}},c={getTags:function(){var e=this.get("tags"),t=new wp.api.collections.Tags;return _.isEmpty(e)?jQuery.Deferred().resolve([]):t.fetch({data:{include:e}})},setTags:function(e){var i,n=this,o=[];if(_.isString(e))return!1;_.isArray(e)?(new wp.api.collections.Tags).fetch({data:{per_page:100},success:function(t){_.each(e,function(e){(i=new wp.api.models.Tag(t.findWhere({slug:e}))).set("parent_post",n.get("id")),o.push(i)}),e=new wp.api.collections.Tags(o),n.setTagsWithCollection(e)}}):this.setTagsWithCollection(e)},setTagsWithCollection:function(e){return this.set("tags",e.pluck("id")),this.save()}},l={getCategories:function(){var e=this.get("categories"),t=new wp.api.collections.Categories;return _.isEmpty(e)?jQuery.Deferred().resolve([]):t.fetch({data:{include:e}})},setCategories:function(e){var i,n=this,o=[];if(_.isString(e))return!1;_.isArray(e)?(new wp.api.collections.Categories).fetch({data:{per_page:100},success:function(t){_.each(e,function(e){(i=new wp.api.models.Category(t.findWhere({slug:e}))).set("parent_post",n.get("id")),o.push(i)}),e=new wp.api.collections.Categories(o),n.setCategoriesWithCollection(e)}}):this.setCategoriesWithCollection(e)},setCategoriesWithCollection:function(e){return this.set("categories",e.pluck("id")),this.save()}},u={getAuthorUser:function(){return n(this,this.get("author"),"User","author","name")}},g={getFeaturedMedia:function(){return n(this,this.get("featured_media"),"Media","wp:featuredmedia","source_url")}};return _.isUndefined(t.prototype.args)||(_.each(s,function(e){_.isUndefined(t.prototype.args[e])||(o=!0)}),o&&(t=t.extend(a)),_.isUndefined(t.prototype.args.author)||(t=t.extend(u)),_.isUndefined(t.prototype.args.featured_media)||(t=t.extend(g)),_.isUndefined(t.prototype.args.categories)||(t=t.extend(l)),_.isUndefined(t.prototype.args.meta)||(t=t.extend(r)),_.isUndefined(t.prototype.args.tags)||(t=t.extend(c)),_.isUndefined(i.collections[e+"Revisions"])||(t=t.extend(p))),t}}(window),function(){"use strict";var i=window.wpApiSettings||{},e=["Comment","Media","Comment","Post","Page","Status","Taxonomy","Type"];wp.api.WPApiBaseModel=Backbone.Model.extend({initialize:function(){-1===_.indexOf(e,this.name)&&(this.requireForceForDelete=!0)},sync:function(e,i,t){var n;return t=t||{},_.isNull(i.get("date_gmt"))&&i.unset("date_gmt"),_.isEmpty(i.get("slug"))&&i.unset("slug"),_.isFunction(i.nonce)&&!_.isEmpty(i.nonce())&&(n=t.beforeSend,t.beforeSend=function(e){if(e.setRequestHeader("X-WP-Nonce",i.nonce()),n)return n.apply(this,arguments)},t.complete=function(e){var t=e.getResponseHeader("X-WP-Nonce");t&&_.isFunction(i.nonce)&&i.nonce()!==t&&i.endpointModel.set("nonce",t)}),this.requireForceForDelete&&"delete"===e&&(i.url=i.url()+"?force=true"),Backbone.sync(e,i,t)},save:function(e,t){return!(!_.includes(this.methods,"PUT")&&!_.includes(this.methods,"POST"))&&Backbone.Model.prototype.save.call(this,e,t)},destroy:function(e){return!!_.includes(this.methods,"DELETE")&&Backbone.Model.prototype.destroy.call(this,e)}}),wp.api.models.Schema=wp.api.WPApiBaseModel.extend({defaults:{_links:{},namespace:null,routes:{}},initialize:function(e,t){t=t||{},wp.api.WPApiBaseModel.prototype.initialize.call(this,e,t),this.apiRoot=t.apiRoot||i.root,this.versionString=t.versionString||i.versionString},url:function(){return this.apiRoot+this.versionString}})}(),function(){"use strict";window.wpApiSettings;wp.api.WPApiBaseCollection=Backbone.Collection.extend({initialize:function(e,t){this.state={data:{},currentPage:null,totalPages:null,totalObjects:null},_.isUndefined(t)?this.parent="":this.parent=t.parent},sync:function(e,i,t){var n,o,s=this;return t=t||{},_.isFunction(i.nonce)&&!_.isEmpty(i.nonce())&&(n=t.beforeSend,t.beforeSend=function(e){if(e.setRequestHeader("X-WP-Nonce",i.nonce()),n)return n.apply(s,arguments)},t.complete=function(e){var t=e.getResponseHeader("X-WP-Nonce");t&&_.isFunction(i.nonce)&&i.nonce()!==t&&i.endpointModel.set("nonce",t)}),"read"===e&&(t.data?(s.state.data=_.clone(t.data),delete s.state.data.page):s.state.data=t.data={},void 0===t.data.page?(s.state.currentPage=null,s.state.totalPages=null,s.state.totalObjects=null):s.state.currentPage=t.data.page-1,o=t.success,t.success=function(e,t,i){if(_.isUndefined(i)||(s.state.totalPages=parseInt(i.getResponseHeader("x-wp-totalpages"),10),s.state.totalObjects=parseInt(i.getResponseHeader("x-wp-total"),10)),null===s.state.currentPage?s.state.currentPage=1:s.state.currentPage++,o)return o.apply(this,arguments)}),Backbone.sync(e,i,t)},more:function(e){if((e=e||{}).data=e.data||{},_.extend(e.data,this.state.data),void 0===e.data.page){if(!this.hasMore())return!1;null===this.state.currentPage||this.state.currentPage<=1?e.data.page=2:e.data.page=this.state.currentPage+1}return this.fetch(e)},hasMore:function(){return null===this.state.totalPages||null===this.state.totalObjects||null===this.state.currentPage?null:this.state.currentPage<this.state.totalPages}})}(),function(){"use strict";var s,a={},c=window.wpApiSettings||{};window.wp=window.wp||{},wp.api=wp.api||{},_.isEmpty(c)&&(c.root=window.location.origin+"/wp-json/"),s=Backbone.Model.extend({defaults:{apiRoot:c.root,versionString:wp.api.versionString,nonce:null,schema:null,models:{},collections:{}},initialize:function(){var e,t=this;Backbone.Model.prototype.initialize.apply(t,arguments),e=jQuery.Deferred(),t.schemaConstructed=e.promise(),t.schemaModel=new wp.api.models.Schema(null,{apiRoot:t.get("apiRoot"),versionString:t.get("versionString"),nonce:t.get("nonce")}),t.schemaModel.once("change",function(){t.constructFromSchema(),e.resolve(t)}),t.get("schema")?t.schemaModel.set(t.schemaModel.parse(t.get("schema"))):!_.isUndefined(sessionStorage)&&(_.isUndefined(c.cacheSchema)||c.cacheSchema)&&sessionStorage.getItem("wp-api-schema-model"+t.get("apiRoot")+t.get("versionString"))?t.schemaModel.set(t.schemaModel.parse(JSON.parse(sessionStorage.getItem("wp-api-schema-model"+t.get("apiRoot")+t.get("versionString"))))):t.schemaModel.fetch({success:function(e){if(!_.isUndefined(sessionStorage)&&(_.isUndefined(c.cacheSchema)||c.cacheSchema))try{sessionStorage.setItem("wp-api-schema-model"+t.get("apiRoot")+t.get("versionString"),JSON.stringify(e))}catch(e){}},error:function(e){window.console.log(e)}})},constructFromSchema:function(){var i,n,o,s,a=this,r=c.mapping||{models:{Categories:"Category",Comments:"Comment",Pages:"Page",PagesMeta:"PageMeta",PagesRevisions:"PageRevision",Posts:"Post",PostsCategories:"PostCategory",PostsRevisions:"PostRevision",PostsTags:"PostTag",Schema:"Schema",Statuses:"Status",Tags:"Tag",Taxonomies:"Taxonomy",Types:"Type",Users:"User"},collections:{PagesMeta:"PageMeta",PagesRevisions:"PageRevisions",PostsCategories:"PostCategories",PostsMeta:"PostMeta",PostsRevisions:"PostRevisions",PostsTags:"PostTags"}},e=a.get("modelEndpoints"),p=new RegExp("(?:.*[+)]|/("+e.join("|")+"))$");i=[],n=[],o=a.get("apiRoot").replace(wp.api.utils.getRootUrl(),""),s={models:{},collections:{}},_.each(a.schemaModel.get("routes"),function(e,t){t!==a.get(" versionString")&&t!==o&&t!=="/"+a.get("versionString").slice(0,-1)&&(p.test(t)?i.push({index:t,route:e}):n.push({index:t,route:e}))}),_.each(i,function(e){var t,i=wp.api.utils.extractRoutePart(e.index,2,a.get("versionString"),!0),n=wp.api.utils.extractRoutePart(e.index,1,a.get("versionString"),!1),o=wp.api.utils.extractRoutePart(e.index,1,a.get("versionString"),!0);n===a.get("versionString")&&(n=""),"me"===o&&(i="me"),""!==n&&n!==i?(t=wp.api.utils.capitalizeAndCamelCaseDashes(n)+wp.api.utils.capitalizeAndCamelCaseDashes(i),t=r.models[t]||t,s.models[t]=wp.api.WPApiBaseModel.extend({url:function(){var e=a.get("apiRoot")+a.get("versionString")+n+"/"+(_.isUndefined(this.get("parent"))||0===this.get("parent")?_.isUndefined(this.get("parent_post"))?"":this.get("parent_post")+"/":this.get("parent")+"/")+i;return _.isUndefined(this.get("id"))||(e+="/"+this.get("id")),e},nonce:function(){return a.get("nonce")},endpointModel:a,route:e,name:t,methods:e.route.methods,endpoints:e.route.endpoints})):(t=wp.api.utils.capitalizeAndCamelCaseDashes(i),t=r.models[t]||t,s.models[t]=wp.api.WPApiBaseModel.extend({url:function(){var e=a.get("apiRoot")+a.get("versionString")+("me"===i?"users/me":i);return _.isUndefined(this.get("id"))||(e+="/"+this.get("id")),e},nonce:function(){return a.get("nonce")},endpointModel:a,route:e,name:t,methods:e.route.methods,endpoints:e.route.endpoints})),wp.api.utils.decorateFromRoute(e.route.endpoints,s.models[t],a.get("versionString"))}),_.each(n,function(e){var t,i,n=e.index.slice(e.index.lastIndexOf("/")+1),o=wp.api.utils.extractRoutePart(e.index,1,a.get("versionString"),!1);""!==o&&o!==n&&a.get("versionString")!==o?(t=wp.api.utils.capitalizeAndCamelCaseDashes(o)+wp.api.utils.capitalizeAndCamelCaseDashes(n),i=r.models[t]||t,t=r.collections[t]||t,s.collections[t]=wp.api.WPApiBaseCollection.extend({url:function(){return a.get("apiRoot")+a.get("versionString")+o+"/"+this.parent+"/"+n},model:function(e,t){return new s.models[i](e,t)},nonce:function(){return a.get("nonce")},endpointModel:a,name:t,route:e,methods:e.route.methods})):(t=wp.api.utils.capitalizeAndCamelCaseDashes(n),i=r.models[t]||t,t=r.collections[t]||t,s.collections[t]=wp.api.WPApiBaseCollection.extend({url:function(){return a.get("apiRoot")+a.get("versionString")+n},model:function(e,t){return new s.models[i](e,t)},nonce:function(){return a.get("nonce")},endpointModel:a,name:t,route:e,methods:e.route.methods})),wp.api.utils.decorateFromRoute(e.route.endpoints,s.collections[t])}),_.each(s.models,function(e,t){s.models[t]=wp.api.utils.addMixinsAndHelpers(e,t,s)}),a.set("models",s.models),a.set("collections",s.collections)}}),wp.api.endpoints=new Backbone.Collection,wp.api.init=function(e){var t,i,n,o={};return e=e||{},o.nonce=_.isString(e.nonce)?e.nonce:c.nonce||"",o.apiRoot=e.apiRoot||c.root||"/wp-json",o.versionString=e.versionString||c.versionString||"wp/v2/",o.schema=e.schema||null,o.modelEndpoints=e.modelEndpoints||["me","settings"],o.schema||o.apiRoot!==c.root||o.versionString!==c.versionString||(o.schema=c.schema),a[o.apiRoot+o.versionString]||(t=(t=wp.api.endpoints.findWhere({apiRoot:o.apiRoot,versionString:o.versionString}))||new s(o),n=(i=jQuery.Deferred()).promise(),t.schemaConstructed.done(function(e){wp.api.endpoints.add(e),wp.api.models=_.extend(wp.api.models,e.get("models")),wp.api.collections=_.extend(wp.api.collections,e.get("collections")),i.resolve(e)}),a[o.apiRoot+o.versionString]=n),a[o.apiRoot+o.versionString]},wp.api.loadPromise=wp.api.init()}();
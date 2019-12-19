!function(d){"use strict";var e,t,o;o=wp.media.view.MediaFrame.VideoDetails.extend({createStates:function(){this.states.add([new wp.media.controller.VideoDetails({media:this.media}),new wp.media.controller.MediaLibrary({type:"video",id:"add-video-source",title:wp.media.view.l10n.videoAddSourceTitle,toolbar:"add-video-source",media:this.media,menu:!1}),new wp.media.controller.MediaLibrary({type:"text",id:"add-track",title:wp.media.view.l10n.videoAddTrackTitle,toolbar:"add-track",media:this.media,menu:"video-details"})])}}),e=d.MediaWidgetModel.extend({}),t=d.MediaWidgetControl.extend({showDisplaySettings:!1,oembedResponses:{},mapModelToMediaFrameProps:function(e){var t;return(t=d.MediaWidgetControl.prototype.mapModelToMediaFrameProps.call(this,e)).link="embed",t},fetchEmbed:function(){var t,d=this;t=d.model.get("url"),d.oembedResponses[t]||(d.fetchEmbedDfd&&"pending"===d.fetchEmbedDfd.state()&&d.fetchEmbedDfd.abort(),d.fetchEmbedDfd=wp.apiRequest({url:wp.media.view.settings.oEmbedProxyUrl,data:{url:d.model.get("url"),maxwidth:d.model.get("width"),maxheight:d.model.get("height"),discover:!1},type:"GET",dataType:"json",context:d}),d.fetchEmbedDfd.done(function(e){d.oembedResponses[t]=e,d.renderPreview()}),d.fetchEmbedDfd.fail(function(){d.oembedResponses[t]=null}))},isHostedVideo:function(){return!0},renderPreview:function(){var e,t,d,i,o,a,s,m,n,r=this,l="",p=!1;d=r.model.get("attachment_id"),i=r.model.get("url"),s=r.model.get("error"),(d||i)&&((a=r.selectedAttachment.get("mime"))&&d?_.contains(_.values(wp.media.view.settings.embedMimes),a)||(s="unsupported_file_type"):d||((m=document.createElement("a")).href=i,(n=m.pathname.toLowerCase().match(/\.(\w+)$/))?_.contains(_.keys(wp.media.view.settings.embedMimes),n[1])||(s="unsupported_file_type"):p=!0),p&&(r.fetchEmbed(),r.oembedResponses[i]&&(o=r.oembedResponses[i].thumbnail_url,l=r.oembedResponses[i].html.replace(/\swidth="\d+"/,' width="100%"').replace(/\sheight="\d+"/,""))),e=r.$el.find(".media-widget-preview"),t=wp.template("wp-media-widget-video-preview"),e.html(t({model:{attachment_id:d,html:l,src:i,poster:o},is_oembed:p,error:s})),wp.mediaelement.initialize())},editMedia:function(){var e,t,d,i=this;t=i.mapModelToMediaFrameProps(i.model.toJSON()),e=new o({frame:"video",state:"video-details",metadata:t}),(wp.media.frame=e).$el.addClass("media-widget"),d=function(e){i.selectedAttachment.set(e),i.model.set(_.extend(_.omit(i.model.defaults(),"title"),i.mapMediaToModelProps(e),{error:!1}))},e.state("video-details").on("update",d),e.state("replace-video").on("replace",d),e.on("close",function(){e.detach()}),e.open()}}),d.controlConstructors.media_video=t,d.modelConstructors.media_video=e}(wp.mediaWidgets);
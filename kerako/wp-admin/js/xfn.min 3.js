jQuery(document).ready(function(n){n("#link_rel").prop("readonly",!0),n("#linkxfndiv input").bind("click keyup",function(){var e=n("#me").is(":checked"),i="";n("input.valinp").each(function(){e?n(this).prop("disabled",!0).parent().addClass("disabled"):(n(this).removeAttr("disabled").parent().removeClass("disabled"),n(this).is(":checked")&&""!==n(this).val()&&(i+=n(this).val()+" "))}),n("#link_rel").val(e?"me":i.substr(0,i.length-1))})});
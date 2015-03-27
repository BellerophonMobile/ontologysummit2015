$(document).ready(function () {

  // Highlight the current page in the navbar
  $(".nav li").removeClass("active");
  var naventries = navpath.split(',');
  for (var i = 0; i < naventries.length; i++) {
    $("#n-" + naventries[i]).addClass('active');
  }

  // Prepare the social media links
  var url = encodeURIComponent(window.location.href);
  var title = encodeURIComponent(document.title);

  var fixsocial = function(index) {
    var href = $(this).attr("href");
    href = href.replace("%24URL", url);
    href = href.replace("%24TITLE", title);

    $(this).attr("href", href);
    $(this).attr("onclick",
                 "window.open('" + href + "','share','width=600,height=400');");
  }
  
  $("a.btn-social-icon").each(fixsocial);
  $("a.btn-social").each(fixsocial);

});

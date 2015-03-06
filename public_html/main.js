$(document).ready(function () {
  
  $(".nav li").removeClass("active");
  $(category).addClass('active');

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

$(document).ready(function () {
  $(".slidingDiv").hide();

  $('.show_hide').click(function (e) {
    $(".slidingDiv").slideToggle("fast");
    var val = $(this).text() == "- close" ? "+ see breakdown" : "- close";
    $(this).hide().text(val).fadeIn("fast");
    e.preventDefault();
  });
});
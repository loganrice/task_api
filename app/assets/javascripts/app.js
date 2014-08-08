$(document).ready(function() {
  $("#project-list").on("click", "a", function() {
    $('a').removeClass("active");
    $(this).addClass("active");
    var link = $(this).attr("href") + "/tasks"
    $(".task-form").attr("action", link);
  });

  $("#project_name").keypress(function(event) {
    if (event.which == 13) {
        event.preventDefault();
        $("#new_project").submit();
    }
  });
});
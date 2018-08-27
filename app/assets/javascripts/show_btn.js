$(document).on('turbolinks:load', function() {
    document.getElementsByClassName("form_control").addEvenListener("keydown", show_btn);
   function show_btn() {
        alert("ddff");
        document.getElementById("but_create").style.display= "block";
    }

});

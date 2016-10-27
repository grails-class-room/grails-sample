// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better
// to create separate JavaScript files as needed.
//
//= require jquery/jquery.js
//= require bootstrap/js/bootstrap.js
//= require vue/vue.js
//= require vue-form/vue-form.js
//= require vue-resource/vue-resource.js
//= require bootstrap-datepicker/bootstrap-datepicker.min.js
//= require bootstrap-datepicker/bootstrap-datepicker.pt-BR.min.js
//= require vue-validator/vue-validator.js
//= require_self

if (typeof jQuery !== 'undefined') {
    (function($) {
        $('#spinner').ajaxStart(function() {
            $(this).fadeIn();
        }).ajaxStop(function() {
            $(this).fadeOut();
        });
    })(jQuery);
}

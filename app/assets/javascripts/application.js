// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require material_kit
//= require owl.carousel
//= require jquery_nested_form
//= require bootstrap-datepicker/locales/bootstrap-datepicker.es.js
//= require_tree .

$(function(e){
	$(document).on('nested:fieldAdded', function(event){
    // this field was just inserted into your form
     $(".datepicker").datepicker({
     dateFormat: 'dd/mm/yyyy',
     autoSize:true,
     language: 'es',
     orientation: 'top'
     });
	});
});

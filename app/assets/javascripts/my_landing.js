function redirect(){
	window.location.replace("users/sign_up");
}

function showResults() {
	  var tipo= $("#tipo_select").val()
	  var ciudad= $("#ciudad_txtfield").val()
	  var fecha= $("#fecha_txtfield").val()
	  var url= '/explore?param1='+tipo+'&param2='+ciudad+'&param3='+fecha
	  //window.open('/inmuebles?distrito_id='+distrito+'&servicio_id='+servicio+'&tipo_inmueble_id='+tipo)
	  window.location.replace(url);
}

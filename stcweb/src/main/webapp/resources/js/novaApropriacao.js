
$(function() {
	$("#dataEntrada, #dataDocumento").datepicker(
			{
				dateFormat : 'dd/mm/yy',
				dayNames : [ 'Domingo', 'Segunda', 'Ter�a', 'Quarta', 'Quinta',
						'Sexta', 'S�bado', 'Domingo' ],
				dayNamesMin : [ 'D', 'S', 'T', 'Q', 'Q', 'S', 'S', 'D' ],
				dayNamesShort : [ 'Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex',
						'S�b', 'Dom' ],
				monthNames : [ 'Janeiro', 'Fevereiro', 'Mar�o', 'Abril',
						'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro',
						'Outubro', 'Novembro', 'Dezembro' ],
				monthNamesShort : [ 'Jan', 'Fev', 'Mar', 'Abr', 'Mai', 'Jun',
						'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez' ],
				nextText : 'Pr�ximo',
				prevText : 'Anterior'
			});

});

function comboPgtoEvent() {
	switch ($("#comboPgto").val()) {

	case "aVista":
		if($("#divPrazo").is(":visible")){
			$("#divPrazo").toggle('slow', function() {
				$("#divPrazo").hide();
			});
		}
		if($("#divEntradaPrazo").is(":visible")){
			$("#divEntradaPrazo").toggle('slow', function() {
				$("#divEntradaPrazo").hide();
			});
		}
		break;

	case "prazo":
		if($("#divEntradaPrazo").is(":visible")){
			$("#divEntradaPrazo").toggle('slow', function() {
				$("#divEntradaPrazo").hide();
			});
		}
		$("#divPrazo").slideDown("slow");
		break;

	case "entradaPrazo":
		$("#divEntradaPrazo").slideDown("slow");
		if($("#divPrazo").is(":visible")){
			$("#divPrazo").toggle('slow', function() {
				$("#divPrazo").hide();
			});
		}
		break;

	default:
			$("#divEntradaPrazo").hide();
			$("#divPrazo").hide();
		break;
	}
}
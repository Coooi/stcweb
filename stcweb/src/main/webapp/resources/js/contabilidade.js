
$(function() {
	$("#dataRef").datepicker(
			{	
				changeMonth: true,
		        changeYear: true,
		        showButtonPanel: true,
		        closeText : "Selecionar",
		        todayText: "adf",
				dateFormat : 'mm/yy',
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
				prevText : 'Anterior',
				onClose: function(dateText, inst) {  
		            var month = $("#ui-datepicker-div .ui-datepicker-month :selected").val(); 
		            var year = $("#ui-datepicker-div .ui-datepicker-year :selected").val(); 
		            $(this).val($.datepicker.formatDate('mm/yy', new Date(year, month, 1)));
		        }
				
			});
	 $("#dataRef").focus(function () {
	        $(".ui-datepicker-calendar").hide();
	        $("#ui-datepicker-div").position({
	            my: "center top",
	            at: "center bottom",
	            of: $(this)
	        });    
	    });

});
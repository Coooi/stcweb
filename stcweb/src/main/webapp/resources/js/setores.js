jQuery(document).ready(function() {
	$(".conteudo-arg").hide();
	$("#novoSetor").bind("click", function(){
			$(".conteudo-arg").toggle('slow', function() {
				$(".conteudo-arg").show();
			});
			$( "#novoSetor" ).fadeToggle( "slow", "linear" );
	});
	$("#cancelar").bind("click", function(){
		$(".conteudo-arg").toggle('slow', function() {
			$(".conteudo-arg").hide();
		});
		$( "#novoSetor" ).toggle( "swing", "linear" );
	});
	$('#selectall').change('click',function () {
	    $('.tbConsultaSetores input').prop('checked', this.checked);
	});   
});
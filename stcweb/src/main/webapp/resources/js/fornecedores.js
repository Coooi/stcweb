jQuery(document).ready(function() {
	$(".conteudo-arg").hide();
	$("#novoFornecedor").bind("click", function(){
			$(".conteudo-arg").toggle('slow', function() {
				$(".conteudo-arg").show();
			});
			$( "#novoFornecedor" ).fadeToggle( "slow", "linear" );
	});
	$("#cancelar").bind("click", function(){
		$(".conteudo-arg").toggle('slow', function() {
			$(".conteudo-arg").hide();
		});
		$( "#novoFornecedor" ).toggle( "swing", "linear" );
	});
	$('#selectall').change('click',function () {
	    $('.tbConsultaFornecedores input').prop('checked', this.checked);
	});   
});


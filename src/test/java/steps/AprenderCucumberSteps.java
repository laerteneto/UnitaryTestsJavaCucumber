package steps;
import org.junit.Assert;

import io.cucumber.java.pt.Dado;
import io.cucumber.java.pt.Então;
import io.cucumber.java.pt.Quando;

public class AprenderCucumberSteps {

	@Dado("que criei o arquivo corretamente")
	public void queCrieiOArquivoCorretamente() {
	}

	@Quando("executá-lo")
	public void executáLo() {

	}

	@Então("a especificação deve finalizar com sucesso")
	public void aEspecificaçãoDeveFinalizarComSucesso() {

	}

	private Integer contador = 0;

	@Dado("que o valor do contador é {int}")
	public void queOValorDoContadorÉ(Integer int1) {
		contador = int1;
	}

	@Quando("eu incrementar em {int}")
	public void euIncrementarEm(Integer int1) {
		contador = contador + int1;
	}

	@Então("o valor do contador será {int}")
	public void oValorDoContadorSerá(Integer int1) {
		Assert.assertEquals(int1, contador);
	}

}
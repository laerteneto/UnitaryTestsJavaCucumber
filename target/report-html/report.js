$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("file:src/test/resources/features/aprender_cucumber.feature");
formatter.feature({
  "name": "Aprender Cucumber",
  "description": "  Como um aluno\n  Eu quero aprender a utilizar Cucumber\n  Para que eu possa automatizar critérios de aceitação",
  "keyword": "Funcionalidade"
});
formatter.scenario({
  "name": "Deve executar especificação",
  "description": "",
  "keyword": "Cenário"
});
formatter.step({
  "name": "que criei o arquivo corretamente",
  "keyword": "Dado "
});
formatter.match({
  "location": "steps.AprenderCucumberSteps.queCrieiOArquivoCorretamente()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "executá-lo",
  "keyword": "Quando "
});
formatter.match({
  "location": "steps.AprenderCucumberSteps.executáLo()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "a especificação deve finalizar com sucesso",
  "keyword": "Então "
});
formatter.match({
  "location": "steps.AprenderCucumberSteps.aEspecificaçãoDeveFinalizarComSucesso()"
});
formatter.result({
  "status": "passed"
});
formatter.scenario({
  "name": "Deve incrementar contador",
  "description": "",
  "keyword": "Cenário",
  "tags": [
    {
      "name": "@ignore"
    }
  ]
});
formatter.step({
  "name": "que o valor do contador é 15",
  "keyword": "Dado "
});
formatter.match({
  "location": "steps.AprenderCucumberSteps.queOValorDoContadorÉ(java.lang.Integer)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "eu incrementar em 3",
  "keyword": "Quando "
});
formatter.match({
  "location": "steps.AprenderCucumberSteps.euIncrementarEm(java.lang.Integer)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "o valor do contador será 18",
  "keyword": "Então "
});
formatter.match({
  "location": "steps.AprenderCucumberSteps.oValorDoContadorSerá(java.lang.Integer)"
});
formatter.result({
  "status": "passed"
});
});
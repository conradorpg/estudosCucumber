const assert = require('assert');
const { Given, When, Then } = require('cucumber');

const ehSextaFeira = hoje => {
    if (hoje === "sexta-feira") {
        return "Sim";
    } else {
        return "Não";
    }
}

Given('hoje é {string}', pegarDia => {
    this.hoje = pegarDia;
});

When('pergunto se é sexta-feira ainda', () => {
    this.respostaAtual = ehSextaFeira(this.hoje);
});

Then('Então eu deveria dizer {string}', respostaEsperada => {
    assert.equal(this.respostaAtual, respostaEsperada);
});
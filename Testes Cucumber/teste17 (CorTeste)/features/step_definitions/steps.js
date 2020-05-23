const assert = require('assert');
const { Given, When, Then } = require('cucumber');

function corDoDia(dia) {
    switch (dia) {
        case 'um':
            return 'azul'
        case 'dois':
            return 'amarelo'
    }
}

Given('que o número é {string}', function(dia) {
    this.hoje = dia;
});

When('eu pergunto qual é a cor', function() {
    this.valorObtido = corDoDia(this.hoje);
});

Then('a resposta deve ser {string}', function(valorEsperado) {
    assert.equal(this.valorObtido, valorEsperado)
});
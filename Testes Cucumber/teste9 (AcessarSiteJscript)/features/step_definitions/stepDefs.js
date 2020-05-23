var browser = require('./configuracao-webdriver-usando-phantom.js').browser;

Given('Eu estou na home do site Guru', function() {
    browser.goto "http://demo.guru99.com"
});

When('Entro com os dados cadastrados', function() {
    browser.goto "http://demo.guru99.com/V4/index.php"

    browser.text_field(name: "uid").set("conrado@b2ml.com.br")

    browser.text_field(name: "password").set("mngr241348")

    browser.button(name: "btnLogin").click
});

Then('O acesso é realizado', function() {
    puts " Acesso realizado com sucesso!"
});
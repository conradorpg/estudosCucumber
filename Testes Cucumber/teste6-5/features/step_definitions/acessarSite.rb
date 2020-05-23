require 'watir'
require 'colorize'
require 'selenium-webdriver'

browser = Watir::Browser.new

#Cadastrar Vendedor

Given(/^Eu estou na home do Mobilpay$/) do
  end
  
  When(/^Entro com os dados cadastrados$/) do    

    # browser.goto "https://adquirencia.mobilpay.com.br/login"

    browser.goto "http://192.168.10.58:4200//login"

    browser.text_field(id:"login").set("luiz.guilherme@b2ml.com.br")

    browser.text_field(id:"senha").set("123456")    

    browser.button(class:"login_btn").click

    browser.div(class:"amenu").click

    browser.a(routerlink:"/vendedores").click
    
    browser.button(class:"btn btn-warning btn-block mt-xl").click

    browser.text_field(name:"nome").set("VendedorCucumber")

    browser.text_field(name:"cpf").set("12345678912")

    browser.text_field(name:"login").set("Cucumber")

    browser.text_field(name:"email").set("conrado+99@b2ml.com.br")

    browser.text_field(name:"telefone").set("65498798654")

    browser.element(name:"estado").click

    browser.span(text: "Acre").click

    browser.element(name:"cidade").click

    browser.span(text: "Acrelândia").click    

    browser.text_field(name:"metaMensal").set("10")

    browser.button(class:"btn btn-success ng-star-inserted").click

    sleep 5

end
  
  Then(/^O acesso é realizado$/) do
    puts " Executado com sucesso!"    
  end
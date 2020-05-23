require 'watir'
require 'colorize'

browser = Watir::Browser.new

Given(/^Eu estou na home do Mobilpay$/) do
    # browser.goto "http://demo.guru99.com"
  end
  
  When(/^Entro com os dados cadastrados$/) do    

    browser.goto "https://adquirencia.mobilpay.com.br/login"

    browser.text_field(id:"login").set("conrado+1@b2ml.com.br")

    browser.text_field(id:"senha").set("823021")    

    browser.button(class:"login_btn").click

    browser.div(class:"amenu").click

    browser.a(routerlink:"/acoes").click

    browser.text_field(id:"NomeCliente").set("casa")

    acaoVend = browser.find_element(id:"AcaoVendedor")

    acaoVend.select "0"

    browser.p-multiselect(id: "Pendente").click

    browser.button(class:"btn btn-primary btn-block mt-xl").click
  end
  
  Then(/^O acesso é realizado$/) do
    puts " Executado com sucesso!"    
  end
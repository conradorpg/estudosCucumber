require 'watir'
require 'colorize'
require 'selenium-webdriver'

browser = Watir::Browser.new

Given(/^Eu estou na home do Mobilpay$/) do
  end
  
  When(/^Entro com os dados cadastrados$/) do    

    browser.goto "https://adquirencia.mobilpay.com.br/login"                       

    browser.text_field(id:"login").set("conrado+1@b2ml.com.br")

    browser.text_field(id:"senha").set("823021")    

    browser.button(class:"login_btn").click

    browser.div(class:"amenu").click

    browser.a(routerlink:"/acoes").click

    browser.div(class:"col-md-offset-9 col-md-3").button(class:"btn btn-warning btn-block mt-xl").click

    # browser.label(class:"ng-tns-c13-5 ui-dropdown ui-widget ui-state-default ui-corner-all ui-helper-clearfix").click
    
    # browser.div(class:"ui-helper-hidden-accessible ui-dropdown-hidden-select").click

    # browser.option(class:"ng-tns-c13-5 ng-star-inserted").label(class:"ng-tns-c13-5 ui-dropdown-label ui-inputtext ui-corner-all ng-star-inserted").click

    browser.text_field(class:"form-control ng-untouched ng-pristine ng-invalid").set("Assinar Documentação")

    # browser.span(class:"ui-chkbox-icon ui-clickable pi pi-check").set("yes")

    browser.text_field(class:"ng-tns-c15-6 ui-inputtext ui-widget ui-state-default ui-corner-all ui-autocomplete-input ng-star-inserted").set("Casa da Pesca")

    browser.button(class:"btn btn-success ng-star-inserted").click

    sleep 10

    #----------------------------------------------#

  #   browser.text_field(id:"NomeCliente").set("casa")

  #   browser.select_list(id:"AcaoVendedor").click

  #   browser.checkbox(index:"0").click

  #   browser.button(class:"btn btn-primary btn-block mt-xl").click

  #------------------------------------------------#

end
  
  Then(/^O acesso é realizado$/) do
    puts " Executado com sucesso!"    
  end
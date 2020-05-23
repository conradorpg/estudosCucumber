require 'watir'
require 'colorize'

browser = Watir::Browser.new

Given(/^Eu estou na home do site Guru$/) do
  end
  
  When(/^Entro com os dados cadastrados$/) do    

    browser.goto "http://localhost/jScriptJson/index.html"

    browser.text_field(id:"name").set("Conrado")

    browser.text_field(id: "email").set("conrado@b2ml.com.br")

    browser.button(id: "btnSubmit").click
  end
  
  Then(/^O acesso é realizado$/) do
    puts " Executado com sucesso!"    
  end


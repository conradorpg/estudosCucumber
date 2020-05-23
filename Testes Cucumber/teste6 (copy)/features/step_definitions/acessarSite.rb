require 'watir'
require 'colorize'

browser = Watir::Browser.new

Given(/^Eu estou na home do site MobilPay$/) do
    browser.goto "http://52.3.219.64/login"
  end
  
  When(/^Entro com os dados cadastrados$/) do    

    # browser.goto "http://52.3.219.64/login"

    browser.text_field(name: "login").set("conrado@b2ml.com.br")

    browser.text_field(name: "senha").set("485026")

    browser.button(class: "login_btn").click

    browser.ui


  end
  
  Then(/^O acesso é realizado$/) do
    puts " Acesso realizado com sucesso!"

    
  end
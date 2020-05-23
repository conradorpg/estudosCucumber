require 'watir'

require 'colorize'

browser = Watir::Browser.new

Given(/^acesso a página inicial do Facebook$/) do
    
    browser.goto "http://www.facebook.com"

  end
  
  When(/^entro com os detalhes do login$/) do

    browser.text_field(name: "email").set("conrompg@gmail.com")

    browser.text_field(name: "pass").set("")

    browser.button(name: "login").click

  end
  
  Then(/^os detalhes do login são exibidos$/) do
    puts " Login Realizado com Sucesso!"
  end
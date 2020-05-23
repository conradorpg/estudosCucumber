require 'watir'
require 'colorize'

browser = Watir::Browser.new

Given(/^Eu estou na home do site Guru$/) do
    browser.goto "http://demo.guru99.com"
  end
  
  When(/^Entro com os dados cadastrados$/) do    

    browser.goto "http://demo.guru99.com/V4/index.php"

    browser.text_field(name: "uid").set("conrado@b2ml.com.br")

    browser.text_field(name: "password").set("mngr241348")

    browser.button(name: "btnLogin").click
  end
  
  Then(/^O acesso é realizado$/) do
    puts " Acesso realizado com sucesso!"

    
  end
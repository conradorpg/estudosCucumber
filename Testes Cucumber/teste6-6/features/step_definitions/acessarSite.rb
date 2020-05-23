require 'watir'
require 'colorize'

browser = Watir::Browser.new

Given(/^Eu estou na home do site Guru$/) do
    browser.goto "http://www.watir.com"
  end
  
  When(/^Entro com os dados cadastrados$/) do    

    browser.goto "http://www.watir.com/examples/forms_with_input_elements.html"

    browser.text_field(id:"new_user_first_name").set("Conrado")

    browser.text_field(id:"new_user_last_name").set("Gomes")

    browser.text_field(id:"new_user_email").set("conrado@b2ml.com.br")

    browser.text_field(id:"new_user_email_confirm").set("conrado@b2ml.com.br")

    browser.select_list(id:"new_user_country").select_value '6'

    sleep 5
  end
  
  Then(/^O acesso é realizado$/) do
    puts " Acesso realizado com sucesso!"

    
  end
#language:pt
#!/usr/bin/env ruby
Dado("que o usuário esteja no formulário de cadastro") do  
    visit "https://google.com.br"
  end
  
  Dado("informe o seguinte dados:") do |table|
    # table is a Cucumber::MultilineArgument::DataTable
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("realizar o cadastro") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então("usuário vê a seguinte mensagem: {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
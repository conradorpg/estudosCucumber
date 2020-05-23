
#language:pt
Selenium::WebDriver::Chrome::Service.driver_path="chromedriver"
Dado(/^o site do Facebook$/) do
    @driver = Selenium::WebDriver.for :chrome
    @driver.get "http://www.facebook.com"
  end
  
  Quando(/^apresentar o campo Criar uma Nova Conta$/) do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando(/^Preencher os campos e acionar o comando Criar$/) do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então(/^o Facebook irá exibir a tela inicial$/) do
    pending # Write code here that turns the phrase above into concrete actions
  end
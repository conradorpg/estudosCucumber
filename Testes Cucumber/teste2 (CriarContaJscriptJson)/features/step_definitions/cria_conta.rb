
#language:pt
Selenium::WebDriver::Chrome::Service.driver_path="chromedriver"
Dado(/^o site jScriptJson/) do
    # @driver = Selenium::WebDriver.for :chrome
    # @driver.get "http://localhost/jScriptJson/"
  end
  
  Quando("for apresentado o campo nome e email") do
    browser.goto "http://localhost/jScriptJson/"   
  end
  
  Quando("Preencher os campos e acionar o comando submit") do
    browser.text_field(id: "name").set("Conrado")

    browser.text_field(id: "email").set("conrado@b2ml.com.br")

    browser.button(id: "btnSubmit").click
  end
  
  Então("a página irá exibir a mensagem com o nome e email inseridos!") do
    
  end
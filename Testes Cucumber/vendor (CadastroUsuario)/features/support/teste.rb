#fazendo a requisição da Gem do Selenium Webdriver
require 'selenium-webdriver'
#Indicando para o Selenium qual é o caminho do Driver do Chrome
Selenium::WebDriver::Chrome::Service.driver_path="C:/chromedriver.exe"
#Declarandoa variável @Driver atribuindo o Webdriver do Chrome
@driver = Selenium::WebDriver.for :chrome
#Pedindo para ir para o endereço do Google
@driver.get "http://www.google.com"
#Comando para procurar o elemento pelo id da página e enviar a string para o campo
@driver.find_element(:id, "lst-ib").send_keys("Testes Automatizados com Selenium WebDriver")
#comando para digitar enter no campo
@driver.find_element(:id, "lst-ib").submit
#comando e espera em segundos
sleep 10
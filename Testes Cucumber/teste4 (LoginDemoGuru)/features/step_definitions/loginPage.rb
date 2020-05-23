require 'watir'

require 'colorize'

browser = Watir::Browser.new

Given (/^I am on the Guru99 homepage$/)do

browser.goto "http://demo.guru99.com"

end

When (/^enter blank details for Register$/)do

browser.text_field(name: "emailid").set(" ")

browser.button(name: "btnLogin").click

end

Then (/^error email shown$/)do

puts " Email is Required".red

browser.close

end

When (/^enter details for Register$/)do

browser = Watir::Browser.new

browser.goto "http://demo.guru99.com/V4/index.php"

browser.text_field(name: "uid").set("conrado@b2ml.com.br")

browser.text_field(name: "password").set("mngr241348")

browser.button(name: "btnLogin").click

end

Then (/^login details shown$/)do

puts " Sucessfully register"

browser.close

end

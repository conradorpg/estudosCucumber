Given(/^I have variable a$/) do
    @a = 50
  end
  
  Given(/^I have variable b$/) do
    @b = 70
  end
  
  When(/^I Multiplication a and b$/) do
    @multi = @a * @b
  end
  
  Then(/^I display the Result$/) do
    puts "Multiplication of #{@a} and #{@b} is #{@multi}"
  end
require 'mechanize'
MECHANIZE = Mechanize.new

Given(/^that I am on the home page$/) do
  PAGE = MECHANIZE.get("file://localhost#{Dir.getwd}/site/index.html")
  # question now is do we need sinatra or node js installed to serve some simple web pages ...
  # could be publishing things on github pages ...
end

Then(/^I should see "(.*?)"$/) do |content|
  PAGE.body.should =~ /#{content}/
end

When(/^I click on "(.*?)"$/) do |link|
  PAGE.body.should =~ /#{link}/
  PAGE = MECHANIZE.click(link)
end
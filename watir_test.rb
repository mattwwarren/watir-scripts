#/usr/bin/ruby

require "rubygems"
require "watir-webdriver"

browser = Watir::Browser.new :ff
browser.goto "interactivity.ifactory.com"
browser.link(:text => "Running in Parallel").click
browser.text_field(:tag_name => "input", :name => "author").set "watir"
browser.text_field(:tag_name => "input", :name => "email").set "matt@ifactory.com"
browser.text_field(:tag_name => "input", :name => "comment").set "Hey, guess what... I got watir working!"
browser.close

puts "Well, this worked"

require 'watir-webdriver'
puts "Your message to spam:"
message = gets
puts "Username of person to spam:"
username = gets
browser = Watir::Browser.new :chrome
while true
	browser.goto "https://" + username + ".sarahah.com/"
	sleep(5)
	browser.text_field(:class => "form-control remove-border").set "#{message}"
	sleep(2)
	browser.button(:id => "Send").click
	sleep(3)

end

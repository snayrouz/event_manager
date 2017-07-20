require 'csv'
puts "Event Manager Initialized!"

contents = CSV.open "event_attendees.csv", headers: true, header_converters: symbol
contents.each do |row|
  name = row[:first_name]
  zipcode = row[:zipcode]

  # if the zipcode is exactly five digits, assume that it is ok    
  # if the zipcode is more than 5 digits, truncate it to the first 5 digits
  # if the zipcode is less than 5 digits, add zeros to the front until it becomes five digits
  # else zipcode
  puts "#{name} #{zipcode}"
end

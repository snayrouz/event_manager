require 'csv'
puts "Event Manager Initialized!"

contents = CSV.open "event_attendees.csv", headers: true, header_converters: symbol
contents.each do |row|
  name = row[:first_name]
  zipcode = row[:zipcode]
  puts "#{name} #{zipcode}"
end









# lines = File.read "event_attendees.csv"
# lines.each_with_index do |line, index|
#   next if row_index == 1
#   columns = line.split(",")
#   name = columns[2]
#   puts name
# end

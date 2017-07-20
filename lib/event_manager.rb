puts "Event Manager Initialized!"

lines = File.read "event_attendees.csv"
lines.each_with_index do |line, index|
  next if row_index == 1
  columns = line.split(",")
  name = columns[2]
  puts name
end

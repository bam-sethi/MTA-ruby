# Take the line and stop that a user is getting on at and the line and stop that user is getting off at and prints the total number of stops for the trip.

# There are 3 subway lines:

# The N line has the following stops: Times Square, 34th, 28th, 23rd, Union Square, and 8th

# The L line has the following stops: 8th, 6th, Union Square, 3rd, and 1st

# The 6 line has the following stops: Grand Central, 33rd, 28th, 23rd, Union Square, and Astor Place.

# All 3 subway lines intersect at Union Square, but there are no other intersection points. (For example, this means the 28th stop on the N line is different than the 28th stop on the 6 line.)

# Hints

# Get the program to work for a single line before trying to tackle multiple lines.
# Diagram how the program works by drawing out the subway lines and their stops and intersection.
# The subway lines are keys in an object, while the values are an array of all the stops on each line.
# The key to the lab is the intersection of the lines at Union Square.
# Make sure the stops that are the same for different lines have different names (i.e. 23rd on the N and on the 6 need to be differentiated).

subway = { 'LINE N' => [ 'TS', '38', '28N', '23', 'US', '8' ], 'LINE L' => ['8', '6', 'US', '3', '1'], 'LINE 6' => ['GC', '33', '28', '23', 'US', 'AP'] }


puts("LINE N = TS, 38, 28N, 23, US, 8")
puts("LINE L = 8, 6, US, 3, 1")
puts("LINE 6 = GC, 33, 28, 23, US, AP")

puts "MTA Journey Planner"
puts "Please choose a Line: "
answer = gets.chomp

puts "Please choose your initial stop"
initStop = gets.chomp
puts "Please choose your destination stop"
destStop = gets.chomp

a = subway[answer].index(initStop).to_i


b = subway[answer].index(destStop).to_i


case answer

when 'LINE N'
  stops = a.to_i - b.to_i
  puts stops.abs

when 'LINE L'
  stops = a.to_i - b.to_i
  puts stops.abs

when 'LINE 6'
  stops = a.to_i - b.to_i
  puts stops.abs

end






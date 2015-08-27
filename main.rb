#MTA-Ruby

subway = { 'line_n' => [ 'TS', '38', '28N', '23', 'US', '8' ], 'line_l' => [ '8L', '6', 'US', '3', '1'], 'line_6' => [ 'GC', '33', '28S', '23', 'US', 'AP'] }

puts("line_n= TS, 38, 28N, 23, US, 8")
puts("line_l = 8L, 6, US, 3, 1")
puts("line_6 = GC, 33, 28S, 23, US, AP")


puts "MTA Journey Planner"

puts "Please choose a start Line: "
start = gets.chomp
puts "Please choose an end Line: "
stop = gets.chomp

puts "Please choose your initial stop"
initStop = gets.chomp
puts "Please choose your destination stop"
destStop = gets.chomp


a = subway[start].index(initStop).to_i
b = subway[stop].index(destStop).to_i


if start == stop
  stops = a.to_i - b.to_i
  puts stops.abs

elsif start != stop
  partOneOfYourEpicJourney =  a - subway[start].index('US')
  partTwoOfYourEpicJourney = subway[stop].index('US') - b
  epic = partOneOfYourEpicJourney.abs + partTwoOfYourEpicJourney.abs
  # puts epic
  puts epic.to_s + " stops."
end
  









$weights = []
$dates = []

def get_weight(line)
  workout = line.split(' ')
  date = workout[0]
  weight = workout[1]
  puts "Your weight on #{date} was #{weight}"
  $weights << weight
  $dates << date
end

File.open("weight.txt", "r") do |f|
  f.each_line do |line|
  get_weight(line)
  end
end

puts "Total workouts: #{$weights.count}"

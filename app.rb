weights = []

def get_weight(line)
  workout = line.split(' ')
  date = workout[0]
  weight = workout[1]
  puts "#{date}"
end

File.open("weight.txt", "r") do |f|
  f.each_line do |line|
  get_weight(line)
  end
end
# File is closed automatically at end of block

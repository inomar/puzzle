num = []
(1..10000).each do |i|
    j = i * 3 + 1
    loop do
      j = j.even? ? j / 2 : j * 3 + 1
      break 0 if j == 1
      break num << i if j == i
    end
end
puts num.count
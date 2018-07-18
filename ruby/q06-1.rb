(1..1000).each do |i|
    j = i * 3 + 1
    k = 0
    loop do
      k = j.even? ? j / 2 : j * 3 + 1
    end
end
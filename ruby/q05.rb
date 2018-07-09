def calcurate(num)
    count = 0
    (0..2).each do |i|
      (0..10).each do |l|
        (0..15).each do |m|
          (0..15).each do |n|
            count += 1 if 500*i + 100*l + 50*m + 10*n == 1000 && i+l+m+n <= 15
          end
        end
      end
    end
    count
end

puts calcurate(1000)
n = 100
cards = Array.new(n, false)

(2..n).each do |i|
    j = i - 1
    while j < cards.size
        cards[j] = !cards[j]
        j += i
    end
end

cards.each.with_index(1) do |c, i|
    puts "#{i} : #{c}" if !c
end
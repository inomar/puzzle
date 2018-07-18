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

# 解
def is_loop(n)
    check = n * 3 + 1
    while check != 1 do
        check = check.even? ? check /2 : check * 3 + 1
        return true if check == n
    end
    return false
end

puts 2.step(10000, 2).count { |i| is_loop(i) }
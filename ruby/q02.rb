opt = ['+', '-', '*', '/', '']
(1000..9999).each do |i|
   num = i.to_s.split('') 
   opt.each do |o|
    opt.each do |p|
      opt.each do |t|
        next if o.empty? && p.empty? && t.empty?
        next if (num[1].to_i.zero? && p.empty?) || (num[2].to_i.zero? && t.empty?)
        next if (num[1].to_i.zero? && o == '/') || (num[2].to_i.zero? && p == '/') || (num[3].to_i.zero? && t == '/')
        operator = [ num[0], o, num[1], p, num[2], t, num[3] ].join
        puts "#{i} : #{operator} = #{eval(operator)}" if eval(operator).to_s.reverse == i.to_s
      end
    end
   end
end
opt = ['+', '-', '*', '/', '']
(1000..9999).each do |i|
   num = i.to_s.split('') 
   opt.each do |o|
    opt.each do |p|
      opt.each do |t|
        next if (num[1].to_i == 0 && o == '/') || 
        (num[2].to_i == 0 && p == '/') || 
        (num[3].to_i == 0 && t == '/')
        next if (num[1].to_i == 0 && p == '') ||
        (num[2].to_i == 0 && t == '')
        next if o == '' && p == '' && t ==''
        operator = [ num[0], o, num[1], p, num[2], t, num[3] ].join
        puts "#{i} : #{operator} = #{eval(operator)}" if eval(operator).to_s.reverse == i.to_s
      end
    end
   end
end
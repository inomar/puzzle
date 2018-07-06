def cutbar(m,n,current)
  if current >= n
    0
  elsif current < m 
    1 + cutbar(m,n,current*2)
  else
    1 + cutbar(m,n,current + m)
  end
end

puts cutbar(3,20,1)
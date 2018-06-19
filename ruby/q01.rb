i = 11
while true
  if i.to_s == i.to_s.reverse &&
     i.to_s(2) == i.to_s(2).reverse &&
     i.to_s(8) == i.to_s(8).reverse
     puts i.to_s
     puts i.to_s(2)
     puts i.to_s(8)
     break
  end
  i += 1
end
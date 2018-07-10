require "date"

begin_date = Date.new(1964, 10, 10)
last_date = Date.new(2020, 07, 30)

(begin_date..last_date).each do |date|
    str_date = date.strftime("%Y%m%d").to_i.to_s(2)
    puts str_date.to_i(2) if str_date == str_date.reverse
end
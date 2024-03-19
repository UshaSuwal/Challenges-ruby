def square_each_digit num
  arr=to_array(num)
  arr.each.map {|i| i**2}
end


def to_array(num)
  a=num.to_s.split('').map {|x| x.to_i}
  return a
end
to_array(123)


def string_compressor(string)
  arr = string.chars
  final = ""

  if arr == arr.uniq
    return string
  else
    count = 1
    previous = arr[0]

    arr.each_with_index do |char, index|
      if index == 0
        next
      end
      if char == previous
        count+= 1
      else
        final<< previous +count.to_s
        count= 1
        previous = char
      end
    end

    final<<previous + count.to_s
  end

  return final
end

puts string_compressor("aaajjjjbjbbbbjjjjiiiijjjjkkkkssssjjjjfffkkjjiiij")

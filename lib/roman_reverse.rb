def roman_reverse(number)
  numeral_hash = { "I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500,"M"=> 1000}
  total = 0
  numeral_arr = number.split("")
  i = 0
  while i < (numeral_arr.length)
    if numeral_hash.values_at(numeral_arr[i]).join("").to_i < numeral_hash.values_at(numeral_arr[i+1]).join("").to_i
      total -= numeral_hash.values_at(numeral_arr[i]).join("").to_i
      i += 1
    else
      total += numeral_hash.values_at(numeral_arr[i]).join("").to_i
      i += 1
    end
  end
  total
end

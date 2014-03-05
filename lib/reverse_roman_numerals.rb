def reverse_roman_numerals(input_string)
  number = 0
  roman_pairs = { "M" => 1000, 
                  "CM" => 900,
                  "D" => 500,
                  "CD" => 400,
                  "C" => 100,
                  "XC" => 90,
                  "L" => 50,
                  "XL" => 40,
                  "X" => 10,
                  "IX" => 9,
                  "V" => 5,
                  "IV" => 4,
                  "I" => 1 }

  while input_string.length > 0

    if input_string.length > 1 && roman_pairs.has_key?(input_string[-2]+input_string[-1])
      number += roman_pairs[input_string.slice(-2,2)]
      input_string = input_string.slice(0,input_string.length-2)

    else 
      number += roman_pairs[input_string[-1]]
      input_string = input_string.slice(0,input_string.length-1) 
    end  
  end
  number
end

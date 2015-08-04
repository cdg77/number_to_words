class Fixnum
  define_method(:numbers) do
  zero_to_one_hundred = { "1" => "one", "2" => "two", "3" => "three", "4" => "four",
                          "5" => "five","6" => "six", "7" => "seven", "8" => "eight", "9" => "nine",
                          "10" => "ten", "11" => "eleven", "12" => "twelve", "13" => "thirteen", "14" => "fourteen",
                          "15" => "fifteen", "16" => "sixteen", "17" => "seventeen", "18" => "eighteen", "19" => "nineteen",
                          "20" => "twenty", "30" => "thirty", "40" => "forty", "50" => "fifty",
                          "60" => "sixty", "70" => "seventy", "80" => "eighty", "90" => "ninety",
                          "100" => "one hundred"
                          }

  number_prefix = { "2" => "twenty", "3" => "thirty", "4" => "forty", "5" => "fifty",
                    "6" => "sixty", "7" => "seventy", "8" => "eighty", "9" => "ninety"
                    }

  number_lengths = { "3" => "hundred", "4" => "thousand" }

  english_number_array = []
  idx = 0

  self_string = self.to_s
  self_array = self_string.split("")
  self_length = self_string.length()
  suffix_length = self_string.length()

  if self == 0
    return "zero"

  elsif (self <= 20) || (self == 30) || (self == 40) || (self == 50) || (self == 60) || (self == 70) ||
    (self == 80) || (self == 90) || (self == 100)
    english_number = zero_to_one_hundred.fetch(self_string)
    return english_number
  end

  self_array.each() do |digit|
    if suffix_length == 3
      english_number_part = zero_to_one_hundred.fetch(digit)
      english_number_array.push(english_number_part)
      english_number_part = number_lengths.fetch(self_length.to_s)
      english_number_array.push(english_number_part)
      idx += 1
      suffix_length = ""
    elsif digit == "0"
      idx += 1
    elsif idx == (self_length - 1)
      english_number_part = zero_to_one_hundred.fetch(digit)
      english_number_array.push(english_number_part)
      idx += 1
    else
      english_number_part = number_prefix.fetch(digit)
      english_number_array.push(english_number_part)
      idx += 1
    end
  end

  english_number = english_number_array.join(" ")
  return english_number
end
end

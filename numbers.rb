class Fixnum
  define_method(:numbers) do
  zero_to_one_hundred = { "0" => "zero", "1" => "one", "2" => "two", "3" => "three", "4" => "four", "5" => "five",
  "6" => "six", "7" => "seven", "8" => "eight", "9" => "nine", "10" => "ten", "11" => "eleven", "12" => "twelve", "13" => "thirteen",
  "14" => "fourteen", "15" => "fifteen", "16" => "sixteen", "17" => "seventeen", "18" => "eighteen", "19" => "nineteen", "20" => "twenty",
  "30" => "thirty", "40" => "forty", "50" => "fifty", "60" => "sixty", "70" => "seventy", "80" => "eighty", "90" => "ninety", "100" => "one hundred"}
  number_prefix = { "2" => "twenty", "3" => "thirty", "4" => "forty", "5" => "fifty", "6" => "sixty", "7" => "seventy", "8" => "eighty", "9" => "ninety"}

  word_array = []
  two_digit_array = []

  #english_number = zero_to_one_hundred.fetch(self)
  number_string = self.to_s
  number_length = number_string.length()
  number_split_array = number_string.split("")

  number_split_array.each() do |digit|
  if number_length >= 2 && self > 19
    number_part = number_prefix.fetch(digit)
    number_length = number_length - 1

  elsif self <= 19
    two_digit_array.push(digit)
    number_length = number_length - 1

  else
    number_length = number_length - 1

  end



  if self <= 19
  number_lt_nineteen = two_digit_array.join().to_s
  number_part = zero_to_one_hundred.fetch(number_lt_nineteen)
  word_array.push(number_part)
  else
  word_array.push(number_part)
  end



  end

  english_number = word_array.join(" ")

  return english_number
  end
end

def get_value(str)
  numbers = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  if str =~ /[0-9]/
    return str.to_i
  else
    return numbers.index(str)
  end
end

sum = 0
regexp_forward = /[0-9]|one|two|three|four|five|six|seven|eight|nine|zero/
dont_judge_me_lol = /[0-9]|eno|owt|eerht|ruof|evif|xis|neves|thgie|enin|orez/
open('input.txt').read.split("\n").each do |line|
  first_digit = line.match(regexp_forward)[0]
  last_digit = line.reverse.match(dont_judge_me_lol)[0]
  # puts "#{line} #{first_digit} #{last_digit}"
  sum += get_value(first_digit) * 10
  sum += get_value(last_digit.reverse)
end

puts sum


sum = 0
open('input.txt').read.split("\n").each do |line|
  line.each_char do |char|
    if char =~ /[0-9]/
      sum += char.to_i * 10
      break
    end
  end
  line.reverse.each_char do |char|
    if char =~ /[0-9]/
      sum += char.to_i
      break
    end
  end
end

puts sum


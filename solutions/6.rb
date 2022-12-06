input = File.read("input6")
# 1st star
puts input.chars.inject(0){|s, x|input[s..s + 3].chars != input[s..s + 3].chars.uniq ? s + 1 : s} + 4
# 2nd star
puts input.chars.inject(0){|s, x|input[s..s + 13].chars != input[s..s + 13].chars.uniq ? s + 1 : s} + 14
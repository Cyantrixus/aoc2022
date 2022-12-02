# 1st star
puts File.read("input1").split("\r\n\r\n").map(&:split).map{|x|x.map(&:to_i)}.map(&:sum).max
# 2nd star
puts File.read("input1").split("\r\n\r\n").map(&:split).map{|x|x.map(&:to_i)}.map(&:sum).sort[-3..-1].sum
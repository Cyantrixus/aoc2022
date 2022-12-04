# 1 star
puts File.read("input4").split.map{|x|x.split(",").map{|x|x.split("-").map(&:to_i)}.map{|x|(x[0]..x[1]).to_a}}.map{|x|x[0].intersection(x[1])==x[0]||x[0].intersection(x[1])==x[1]}.count(true)
# 2 star
puts File.read("input4").split.map{|x|x.split(",").map{|x|x.split("-").map(&:to_i)}.map{|x|(x[0]..x[1]).to_a}}.map{|x|x[0].intersection(x[1]).size != 0}.count(true)
points = {
    0 => {0 => 3, 1 => 0, 2 => 6},
    1 => {0 => 6, 1 => 3, 2 => 0},
    2 => {0 => 0, 1 => 6, 2 => 3}
}
# 1st star
puts File.read("input2").split("\r\n").map(&:split).map{|x|[x[0].ord-"A".ord,x[1].ord-"X".ord]}.map{|x|points[x[1]][x[0]]+x[1]+1}.sum
# 2nd star
puts File.read("input2").split("\r\n").map(&:split).map{|x|[x[0].ord-"A".ord,(x[0].ord-"A".ord+(x[1].ord-"X".ord-1))%3]}.map{|x|points[x[1]][x[0]]+x[1]+1}.sum
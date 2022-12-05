input = File.read("input5.txt").split("\n\n")
blocks = input[0].split("\n").map{|x|x.chars.each_slice(4).to_a.map{|x|x[1]}}[0..-2]
stacks = Array.new(blocks[0].size).map{|x|[]}
blocks.each{|x|
    x.each_with_index{|b, i|
        stacks[i] << b if b != " "
    }
}
actions = input[1].split("\n").map{|x|x.scan(/\d+/).map(&:to_i)}
# 1st star
actions.each{|x|
    x[0].times{|c|
        a = stacks[x[1]-1].shift(1)[0]
        stacks[x[2]-1].unshift(a)
    }
}
puts stacks.map{|x|x[0]}*""

# rebuild blocks to start for 2nd star
stacks = Array.new(blocks[0].size).map{|x|[]}
blocks.each{|x|
    x.each_with_index{|b, i|
        stacks[i] << b if b != " "
    }
}
actions.each{|x|
    a = stacks[x[1]-1].shift(x[0])
    a.size.times{|c|
        stacks[x[2]-1].unshift(a.pop)
    }
}
puts stacks.map{|x|x[0]}*""
# 1 star
puts File.read("input3").split.map{|a|[a[0..a.size/2-1].chars,a[a.size/2..a.size-1].chars]}.map{|a|a[0].intersection(a[1])[0]}.map{|a|a.upcase == a ? a.ord - "A".ord + 27 : a.ord - "a".ord + 1}.sum
# 2 star
puts File.read("input3").split.each_slice(3).to_a.map{|a|a.map(&:chars)}.map{|a|a.reduce(:intersection)[0]}.map{|a|a.upcase == a ? a.ord - "A".ord + 27 : a.ord - "a".ord + 1}.sum
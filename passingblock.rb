# ✅ Implementation of array select function
# ✅ [1,2,3,4].select {|i| i%2 == 0}
class Array
  def select
    result = []
    self.each do |i|
      result << i if block_given? && yield(i)
    end
    result
  end
end

puts [1,2,3,4,5].select {|i| i%2 == 0 } # -> 2 4
puts [1,2,3,4,5].select # []
# 💡 Add element values with their indices in a Ruby array

# ❌ Verbose approach using `each_with_index`
input_array = [1,2,3,4,5]
result = []
input_array.each_with_index { |element, index| result << (element + index) }
print result # -> [1, 3, 5, 7, 9]


# ✅ Cleaner by calling `map` on `each_with_index` result Enumerator
result = input_array.each_with_index.map {|element, index| element+index }
print result # -> [1, 3, 5, 7, 9]
#♦️Ruby metaprogramming instance_eval method
class User
  def initialize(first_name)
    @first_name = first_name
  end
end

user = User.new("Ram")

# ✅ Access instance variables directly without attr_reader methods
puts user.instance_eval("@first_name") # -> Ram

# ✅ Dynamically define methods at runtime 🚀
user.instance_eval do 
  def display_full_name(last_name)
    print "#{@first_name} #{last_name}"
  end
end

user.display_full_name("nandan") # -> Ram nandan

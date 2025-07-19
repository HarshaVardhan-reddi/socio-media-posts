# Constants for accessing first elements
FIRST_MOVIE   = 0
FIRST_COMPANY = 0

# Sample user data
user_details = { personals: {name: "Raju", age: 21, movies_watched: ["F1", "Superman"]}}

# ❌ Direct slicing on a missing key can raise errors
user_details[:personals][:movies_watched].first  # => "F1"
# user_details[:companies].first                   # => undefined method `first' for nil (NoMethodError)

# ✅ Using `dig` is safer: returns nil if any key is missing
# ✅ Dig helps safely traverse nested hashes and even access array values without risking nil errors
user_details.dig(:personals, :movies_watched, FIRST_MOVIE) # => "F1"
user_details.dig(:companies, FIRST_COMPANY)                # => nil
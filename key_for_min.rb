# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

  def key_for_min_value(name_hash = {})
    loweset = ""
    temp = []
    temp_sort = []
    name_hash.each do |key, value|
      temp << value
    end
    temp.each do |value|
      if temp_sort.count == 0
        temp_sort << value
      elsif value < temp_sort
        temp_sort.unshift(value)
      else 
        temp_sort.shift(value)
      end
      temp_sort
  end


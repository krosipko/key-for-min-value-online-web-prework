# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

  def key_for_min_value(name_hash = {})
    lowest = ""
    temp = []
    name_hash.each do |key, value|
      temp << value
    end
    temp.each do |value|
      if temp[0] > temp[1]
        temp.delete_at[0]
      elsif temp[0] < temp[1]
        temp.delete_at[1]
      end
    end
    name_hash.each do |key, value|
      if value == temp[0]
        lowest = temp[0]
      end
    end
  end
# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

require 'pry'

  def key_for_min_value(name_hash = {})
    loweset = ""
    temp = []
    temp_sort = []
    tsc = 0
    name_hash.each do |key, value|
      temp << value
    end
    temp.each do |value|
      tsc = temp_sort.count
      if tsc == 0
        temp_sort << value
      elsif value < temp_sort[0]
        temp_sort.unshift(value)
      else 
        temp_sort.shift(value)
      end
    end
    name_hash.index(temp_sort[0])
  end


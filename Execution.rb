
#Phase 1
# def my_min(list)
#     lowest = nil 
    
#     list.each_with_index do |ele1, i|
#         lowest = ele1 if lowest.nil?
#         list.each_with_index do |ele2, j|
#             next if i == j
#             if ele1 < ele2
#                lowest = ele1 if ele1 < lowest
#             end
#         end
#     end
#     return lowest
# end
#O(n^2)

#Phase 2
# def my_min(list)
#     lowest = list[0]

#     list.each {|ele| lowest = ele if ele < lowest }
#     lowest
# end
# #O(n)

# # list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# # p my_min(list)  # =>  -5
require 'byebug'

# def largest_contiguous_subsum(list)
  
#   result_arr = []

#   list.each.with_index do |ele, i|
    
#     (0...list.length).each do |j|
#       if j >= i
#       result_arr << list[i..j]
#       end
#     end
    
#   end
  
#   sums_of_arr = []
  
#   result_arr.each do |sub_arr|

    
#      sums_of_arr << sub_arr.sum
    

#   end

#   sums_of_arr.max

# end



def largest_contiguous_subsum(array)
    largest_sum = nil

    current_sum = nil

    array.each do |ele|
        if current_sum.nil?
            current_sum = ele
            largest_sum = ele
            next
        end
        largest_sum = current_sum if current_sum > largest_sum 
        current_sum += ele
        # debugger
    end

    current_sum = array.sum
   
    array.reverse[0...-1].each do |ele|
        largest_sum = current_sum if current_sum > largest_sum 
        current_sum -= ele
    end

    current_sum = nil

    array.each do |i|
         if current_sum.nil?
            current_sum = i
            next
         end
         largest_sum = current_sum if current_sum > largest_sum 
        current_sum = i
    end

    current_sum = array.sum

    array.each do |i|
        largest_sum = current_sum if current_sum > largest_sum 
        current_sum -= i
    end
    return largest_sum
end

# Time complexity of O(n)

list = [5, 3, -7]
p largest_contiguous_subsum(list) # => 8

list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])

list = [-5, -1, -3]
p largest_contiguous_subsum(list) # => -1 (from [-1])

#phase 2

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
def my_min(list)
    lowest = list[0]

    list.each {|ele| lowest = ele if ele < lowest }
    lowest
end
#O(n)

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5


def 

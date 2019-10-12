
def stock_picker(arr)
 profit = 0
 bestDays =[]
  for b in 0...arr.length
    for s in (b + 1)...arr.length
        if((arr[s] - arr[b])>profit)
          profit = arr[s]-arr[b]
          selling = arr[s]
          buying = arr[b]
        end
    end
  end
  puts "profit: #{profit}"
  buyingIndex = arr.find_index(buying)
  sellingIndex = arr.find_index(selling)
  bestDays << [buyingIndex,sellingIndex]
  puts bestDays
end

stock_picker([17,3,6,9,15,8,6,1,10])

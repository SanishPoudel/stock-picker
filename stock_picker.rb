#example array
array = [17,3,6,9,15,8,6,10,1]

def stock_picker(array)

  # profit is for comparing, sell_index and buy_index will be returned by the function, sell and buy will be used in iteration.
  profit = 0
  sell_index = 0
  buy_index = 0
  buy = 0

  # using a nested loop to brute force through every possible buying and selling
  while buy < array.length do
    sell = buy
        while sell < array.length do 
          if (array[sell] - array[buy]) > profit
            profit = array[sell] - array[buy]
            sell_index = sell
            buy_index = buy
          end
      sell += 1
    end
    buy += 1
  end
  value = [buy_index, sell_index]
  end

# printing the result
p stock_picker(array)
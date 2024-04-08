array = [17,3,6,9,15,8,6,10,1]

def stock_picker(array)
  smallest = array[0]
  largest = array[1]
  value = []
  array.each do |item|
      if smallest > item
        smallest = item
      elsif largest < item
        largest = item
      end

      if (array.index smallest) < (array.index largest)
        value = [smallest, largest]
      end

  end
  value
end

puts stock_picker(array)
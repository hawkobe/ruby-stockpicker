def stock_picker(array)
  differences = []

  array.each_with_index do |price1, idx1|
    array.each_with_index do |price2, idx2|
      next if idx1 > idx2
      if price2 > price1
        differences << [(price2 - price1), idx2, idx1]
      end
    end
  end

  day_index = Array.new.push(differences.max[2], differences.max[1])

  day_index

end
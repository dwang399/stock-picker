def stock_picker(array)
    best_buy_price = 0
    best_sell_price = 0
    array.each do |buy_day|
      array.each do |sell_day|
        if array.find_index(buy_day) <     array.find_index(sell_day)
          negative_profit = buy_day - sell_day
          if negative_profit < (best_buy_price - best_sell_price)
            best_buy_price = buy_day
            best_sell_price = sell_day
          end
        end
      end
    end
    new_array = [array.find_index(best_buy_price), array.find_index(best_sell_price)]
end
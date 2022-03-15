def stock_picker(stockArray)
    # do something
    hash = {}
    array = []
    # pushes an array of [stock_price, index] into an empty array
    stockArray.each_with_index do |stock, idx|
        array.push([stock, idx])
    end

    # sorts nested array by stock prices
    array = array.sort_by {|k| k[0]}

    # logic for checking low and high, seeing if index of low is higher than index of high, 
    # and if not taking a step up and comparing second low and high to low and second high, etc

end

stocks = [17,3,6,9,15,8,6,1,10]
stock_picker(stocks)
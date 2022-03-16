require "pry-byebug"

def stock_picker(stockArray)
    # do something
    hash = {}
    array = []
    valid = []
    # pushes an array of [stock_price, index] into an empty array
    stockArray.each_with_index do |stock, idx|
        array.push([stock, idx])
    end

    # sorts nested array by stock prices
    array = array.sort_by {|k| k[0]}

    # logic for checking low and high, seeing if index of low is higher than index of high, 
    # and if not taking a step up and comparing second low and high to low and second high, etc
    array.each do |stock|
        array.each do |stock2|
            # binding.pry
            if stock[1] == stock2[1]
                next
            elsif stock[1] < stock2[1]
                next
            else
                profit = stock[0] - stock2[0]
                validStock = Hash[]
                validStock[:stock1] = stock[0]
                validStock[:stockDay1] = stock[1]
                validStock[:stock2] = stock2[0]
                validStock[:stockDay2] = stock2[1]
                validStock[:profit] = profit
                valid.push(validStock)
            end
        end
    end
    bestStocks = valid.max { |profita, profitb| profita[:profit]<=>profitb[:profit]}
    return [bestStocks[:stockDay2], bestStocks[:stockDay1]]
end

stocks = [17,3,6,9,15,8,6,1,10]
p stock_picker(stocks)
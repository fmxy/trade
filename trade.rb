require 'csv'

# closing value for 5 selected DAX components from 01-01-2015 to 31-12-2016
adidas = CSV.read('ADS.DE.csv', :headers=>true)['Close']
beiersdorf = CSV.read('BEI.DE.csv', :headers=>true)['Close']
deutschePost = CSV.read('DPW.DE.csv', :headers=>true)['Close']
telekom = CSV.read('DTE.DE.csv', :headers=>true)['Close']
eon = CSV.read('EOAN.DE.csv', :headers=>true)['Close']

stocks = [adidas, beiersdorf, deutschePost, telekom, eon]
# converting Strings to floats
stocks = stocks.map{ |arr| arr.map{ |v| v.to_f } }

$cash = 10000.00

# basic functionality methods, no check if cash goes below 0 at this point!
def buy (stock, amount)
    $cash-= stock * amount + 3
end

def sell (stock, amount)
    $cash+= stock * amount - 3
end

# iteration loop
for day in 0..adidas.length
    
    # decide what to buy based on day-to-day growth rate
    growth = []
    for stock in stocks 
        growth.push(stock[day] / stock [day+1])
    end
    
    # the aim is to always have the top 3 stocks based on their day-to-day growth and sell them the next day (unless they are in the top 3 again)
    # since 3€ is a low cost per trade, it is ignored at this stage 
    # always buy as many stocks of the most-rising stock as possible while keeping 3 different types of stocks overall
    
    # use buy/sell methods with checks to not fall below 0 and determine how much can be bought
    # write trades to file or console by adding according statements to buy/sell methods 
    # try different strategies based on monthly/weekly growth rates or an algorithm that checks all possible durations 

end

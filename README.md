# trade

Clone this repository and execute `trade.rb` by calling the following line in your terminal:
    
    `ruby trade.rb`
    
Make sure the `.csv` files are stored in the same location as `trade.rb` and not moved after cloning.

## developer notes

Yahoo Finances unfortunately discontinued API support for historical stock data. This solution therefore only uses 5 selected DAX companies instead of all 30 which could have been easily fetched using the `yahoo-finance` ruby gem. The above usage guide is trivial as no output is produced at this point. This repository's sole purpose is to show the thought process that went into tackling the problem. 

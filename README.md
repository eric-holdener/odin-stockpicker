# odin-stockpicker

This mini project took more thought into the logic of creating the algorithm than the first two in the course. In the end, I found that the best way at my current skillset to accomplish this task is to first iterate through the array passed in, getting the values and indexes (days) matched up. This allowed me to then sort by stock price, from low to high, organizing my thoughts more and also the data more cleanly for analyzing, while keeping track of what day they came from. 

From there, I iterated through this newly returned array twice, to get an initial pair of price and day and a comparison value. If the stock being compared to the initial pair was the same or on an earlier day, we continued the loop and did nothing. Otherwise, if the days were in the correct order, we stored all the data for that combination, including profit, in a hash, then appended that hash to an array, creating a nested hash as we went. 

After iterating through all possible combinations, it was just a simple task to call max on the array to find the max profit, and return the days to buy the stock from the hash that contained the max profit.
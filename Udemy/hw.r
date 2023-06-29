# Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

profits <- revenue - expenses
print(profits)
taxed_profit <- profits * 0.7
print(taxed_profit)

profit_margin <- taxed_profit / revenue
print(round(profit_margin * 100))

good <- taxed_profit > mean(taxed_profit)
bad <- !good
print(good)
print(bad)

best <- taxed_profit == max(taxed_profit)
worst <- taxed_profit == min(taxed_profit)
print(best)
print(worst)


# units of thousands 
revenue.1000 <- round(revenue/1000)
expenses.1000 <- round(expenses/1000)
profits.1000 <- round(profits/1000)
taxed_profit.1000 <- round(taxed_profit/1000)
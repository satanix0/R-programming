library("sqldf")
library("readxl")

q2 <- read_excel("q2.xls")
sqldf("SELECT * FROM q2 limit 10") # displays 10 rows
sqldf("select Profit as 'p', Quantity from q2 limit 10") # displays 10 rows aliasing profit as 'p'

# filtering the data
sqldf("SELECT Discount,Quantity,region from q2 where region=='Central' limit 20 ") # nolint: line_length_linter.

# sorting
sqldf("SELECT * from q2 where order by City desc limit 5")
sqldf("SELECT City,Profit,State from q2 where order by City, State desc limit 20") # nolint: line_length_linter.
sqldf("SELECT * from q2 where order by City desc, State limit 5")

# like
sqldf("SELECT City,Profit from q2 where city like 'H%' limit 5")
sqldf("SELECT City,Profit from q2 where city like 'He%' limit 5")
sqldf("SELECT City,Profit from q2 where city like '%H' limit 5")
sqldf("SELECT City,Profit from q2 where city like '%H%' limit 5")
sqldf("SELECT City,Profit from q2 where city like '_h%' limit 5")

# aggregate function
sqldf("select sum(Profit) as 'Total Profit' from q2")
sqldf("select min(Profit) as 'Minimum Profit' from q2")
sqldf("select max(Profit) as 'Maximum Profit' from q2")
sqldf("select count(Profit) as 'No. of Rec' from q2")

# nested queries
a <<- sqldf("select max(profit) from q2")
a
b <- sqldf("select region,Profit from q2 where
Profit== (Select max(Profit) from q2)")
b
sqldf("select region,Profit from q2 where
Profit== (Select min(Profit) from q2)")
sqldf("select city from q2 where
Profit== (Select max(Profit) from q2)")
sqldf("select City, Profit from q2 where
Profit==(Select min(Profit) from q2)")
a <- sqldf("select Segment from q2 ")
a
head(a, n = 10)
tail(a, n = 10)
sqldf("select distinct Segment from q2 ")

b <- sqldf("select Segment, profit from q2 order by Profit")
head(b)


# Groupby Clause
sqldf("select sum(sales) from q2")
sqldf("select region,sum(sales) from q2 group by region")
sqldf("select sum(profit),region from q2 group by region")
sqldf("select sum(sales),category from q2 group by category")
sqldf("select state,sum(profit) from q2 group by state")
# IN is used to select from a fixed set of values.
sqldf("select region,sum(sales) as TotalSales from q2
        where region IN ('Central','West') group by region")
sqldf("select region,sum(sales),sum(profit),sum(sales)-sum(profit) as cost from q2 group by region")

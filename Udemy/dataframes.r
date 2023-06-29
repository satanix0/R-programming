df <- read.csv(file = "datasets//DemographicData.csv")
head(df)

View(df)


head(df)
filter <- df$Internet.users < 2
df[filter, ]
df[dfCdf$Birth.rate > 40, ]
df[dfCdf$Birth.rate > 40 & df$lnternet.users < 2, ]
df[df$Income.Group == "High income", ]
levels(df$Income.Group)
df[df$Country.Name == "Malta", ]


# QPlot

library(ggplot2)

qplot(data = df, x = Internet.users)
qplot(data = df, x = Income.Group, y = Birth.rate)
qplot(
    data = df, x = Income.Group, y = Birth.rate,
    size = I(3)
)
qplot(
    data = df, x = Income.Group, y = Birth.rate,
    size = I(3), color = I("blue"), geom = "boxplot"
)


# Visualization
qplot(
    data = df, x = Internet.users,
    y = Birth.rate
)
qplot(
    data = df, x = Internet.users,
    y = Birth.rate, size = I(4),
    color = Income.Group
)


# New Columns to be added into df
Countries_2012_Dataset <- c("Aruba", "Afghanistan", "Angola", "Albania", "United Arab Emirates", "Argentina", "Armenia", "Antigua and Barbuda", "Australia", "Austria", "Azerbaijan", "Burundi", "Belgium", "Benin", "Burkina Faso", "Bangladesh", "Bulgaria", "Bahrain", "Bahamas, The", "Bosnia and Herzegovina", "Belarus", "Belize", "Bermuda", "Bolivia", "Brazil", "Barbados", "Brunei Darussalam", "Bhutan", "Botswana", "Central African Republic", "Canada", "Switzerland", "Chile", "China", "Cote d'Ivoire", "Cameroon", "Congo, Rep.", "Colombia", "Comoros", "Cabo Verde", "Costa Rica", "Cuba", "Cayman Islands", "Cyprus", "Czech Republic", "Germany", "Djibouti", "Denmark", "Dominican Republic", "Algeria", "Ecuador", "Egypt, Arab Rep.", "Eritrea", "Spain", "Estonia", "Ethiopia", "Finland", "Fiji", "France", "Micronesia, Fed. Sts.", "Gabon", "United Kingdom", "Georgia", "Ghana", "Guinea", "Gambia, The", "Guinea-Bissau", "Equatorial Guinea", "Greece", "Grenada", "Greenland", "Guatemala", "Guam", "Guyana", "Hong Kong SAR, China", "Honduras", "Croatia", "Haiti", "Hungary", "Indonesia", "India", "Ireland", "Iran, Islamic Rep.", "Iraq", "Iceland", "Israel", "Italy", "Jamaica", "Jordan", "Japan", "Kazakhstan", "Kenya", "Kyrgyz Republic", "Cambodia", "Kiribati", "Korea, Rep.", "Kuwait", "Lao PDR", "Lebanon", "Liberia", "Libya", "St. Lucia", "Liechtenstein", "Sri Lanka", "Lesotho", "Lithuania", "Luxembourg", "Latvia", "Macao SAR, China", "Morocco", "Moldova", "Madagascar", "Maldives", "Mexico", "Macedonia, FYR", "Mali", "Malta", "Myanmar", "Montenegro", "Mongolia", "Mozambique", "Mauritania", "Mauritius", "Malawi", "Malaysia", "Namibia", "New Caledonia", "Niger", "Nigeria", "Nicaragua", "Netherlands", "Norway", "Nepal", "New Zealand", "Oman", "Pakistan", "Panama", "Peru", "Philippines", "Papua New Guinea", "Poland", "Puerto Rico", "Portugal", "Paraguay", "French Polynesia", "Qatar", "Romania", "Russian Federation", "Rwanda", "Saudi Arabia", "Sudan", "Senegal", "Singapore", "Solomon Islands", "Sierra Leone", "El Salvador", "Somalia", "Serbia", "South Sudan", "Sao Tome and Principe", "Suriname", "Slovak Republic", "Slovenia", "Sweden", "Swaziland", "Seychelles", "Syrian Arab Republic", "Chad", "Togo", "Thailand", "Tajikistan", "Turkmenistan", "Timor-Leste", "Tonga", "Trinidad and Tobago", "Tunisia", "Turkey", "Tanzania", "Uganda", "Ukraine", "Uruguay", "United States", "Uzbekistan", "St. Vincent and the Grenadines", "Venezuela, RB", "Virgin Islands (U.S.)", "Vietnam", "Vanuatu", "West Bank and Gaza", "Samoa", "Yemen, Rep.", "South Africa", "Congo, Dem. Rep.", "Zambia", "Zimbabwe")
Codes_2012_Dataset <- c("ABW", "AFG", "AGO", "ALB", "ARE", "ARG", "ARM", "ATG", "AUS", "AUT", "AZE", "BDI", "BEL", "BEN", "BFA", "BGD", "BGR", "BHR", "BHS", "BIH", "BLR", "BLZ", "BMU", "BOL", "BRA", "BRB", "BRN", "BTN", "BWA", "CAF", "CAN", "CHE", "CHL", "CHN", "CIV", "CMR", "COG", "COL", "COM", "CPV", "CRI", "CUB", "CYM", "CYP", "CZE", "DEU", "DJI", "DNK", "DOM", "DZA", "ECU", "EGY", "ERI", "ESP", "EST", "ETH", "FIN", "FJI", "FRA", "FSM", "GAB", "GBR", "GEO", "GHA", "GIN", "GMB", "GNB", "GNQ", "GRC", "GRD", "GRL", "GTM", "GUM", "GUY", "HKG", "HND", "HRV", "HTI", "HUN", "IDN", "IND", "IRL", "IRN", "IRQ", "ISL", "ISR", "ITA", "JAM", "JOR", "JPN", "KAZ", "KEN", "KGZ", "KHM", "KIR", "KOR", "KWT", "LAO", "LBN", "LBR", "LBY", "LCA", "LIE", "LKA", "LSO", "LTU", "LUX", "LVA", "MAC", "MAR", "MDA", "MDG", "MDV", "MEX", "MKD", "MLI", "MLT", "MMR", "MNE", "MNG", "MOZ", "MRT", "MUS", "MWI", "MYS", "NAM", "NCL", "NER", "NGA", "NIC", "NLD", "NOR", "NPL", "NZL", "OMN", "PAK", "PAN", "PER", "PHL", "PNG", "POL", "PRI", "PRT", "PRY", "PYF", "QAT", "ROU", "RUS", "RWA", "SAU", "SDN", "SEN", "SGP", "SLB", "SLE", "SLV", "SOM", "SRB", "SSD", "STP", "SUR", "SVK", "SVN", "SWE", "SWZ", "SYC", "SYR", "TCD", "TGO", "THA", "TJK", "TKM", "TLS", "TON", "TTO", "TUN", "TUR", "TZA", "UGA", "UKR", "URY", "USA", "UZB", "VCT", "VEN", "VIR", "VNM", "VUT", "PSE", "WSM", "YEM", "ZAF", "COD", "ZMB", "ZWE")
Regions_2012_Dataset <- c("The Americas", "Asia", "Africa", "Europe", "Middle East", "The Americas", "Asia", "The Americas", "Oceania", "Europe", "Asia", "Africa", "Europe", "Africa", "Africa", "Asia", "Europe", "Middle East", "The Americas", "Europe", "Europe", "The Americas", "The Americas", "The Americas", "The Americas", "The Americas", "Asia", "Asia", "Africa", "Africa", "The Americas", "Europe", "The Americas", "Asia", "Africa", "Africa", "Africa", "The Americas", "Africa", "Africa", "The Americas", "The Americas", "The Americas", "Europe", "Europe", "Europe", "Africa", "Europe", "The Americas", "Africa", "The Americas", "Africa", "Africa", "Europe", "Europe", "Africa", "Europe", "Oceania", "Europe", "Oceania", "Africa", "Europe", "Asia", "Africa", "Africa", "Africa", "Africa", "Africa", "Europe", "The Americas", "The Americas", "The Americas", "Oceania", "The Americas", "Asia", "The Americas", "Europe", "The Americas", "Europe", "Asia", "Asia", "Europe", "Middle East", "Middle East", "Europe", "Middle East", "Europe", "The Americas", "Middle East", "Asia", "Asia", "Africa", "Asia", "Asia", "Oceania", "Asia", "Middle East", "Asia", "Middle East", "Africa", "Africa", "The Americas", "Europe", "Asia", "Africa", "Europe", "Europe", "Europe", "Asia", "Africa", "Europe", "Africa", "Asia", "The Americas", "Europe", "Africa", "Europe", "Asia", "Europe", "Asia", "Africa", "Africa", "Africa", "Africa", "Asia", "Africa", "Oceania", "Africa", "Africa", "The Americas", "Europe", "Europe", "Asia", "Oceania", "Middle East", "Asia", "The Americas", "The Americas", "Asia", "Oceania", "Europe", "The Americas", "Europe", "The Americas", "Oceania", "Middle East", "Europe", "Europe", "Africa", "Middle East", "Africa", "Africa", "Asia", "Oceania", "Africa", "The Americas", "Africa", "Europe", "Africa", "Africa", "The Americas", "Europe", "Europe", "Europe", "Africa", "Africa", "Middle East", "Africa", "Africa", "Asia", "Asia", "Asia", "Asia", "Oceania", "The Americas", "Africa", "Europe", "Africa", "Africa", "Europe", "The Americas", "The Americas", "Asia", "The Americas", "The Americas", "The Americas", "Asia", "Oceania", "Middle East", "Oceania", "Middle East", "Africa", "Africa", "Africa", "Africa")

mydf <- data.frame(
    Country = Countries_2012_Dataset,
    Code = Codes_2012_Dataset,
    Region = Regions_2012_Dataset
)

head(mydf)

#  merging data frames df and mydf
head(df)
head(mydf)
newdf <- merge(x = df, y = mydf, by.x = "Country.Code", by.y = "Code")
head(newdf)
# Removing Unnecessary Column
newdf$Country.Name <- NULL
head(newdf)

qplot(
    data = newdf, x = Internet.users, y = Birth.rate,
    color = Region, size = I(3)
)

# Change Point Shape - Shape= 0-25
qplot(
    data = newdf, x = Internet.users, y = Birth.rate,
    color = Region, size = I(3), shape = I(17)
)


# Change Point Trancparency - alpha= 0-1
qplot(
    data = newdf, x = Internet.users, y = Birth.rate,
    color = Region, size = I(3), shape = I(19),
    alpha = I(0.1)
)

# Add Title
qplot(
    data = newdf, x = Internet.users, y = Birth.rate,
    color = Region, size = I(3), shape = I(17),
    main = "Something Simple"
)

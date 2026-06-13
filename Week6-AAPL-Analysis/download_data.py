import yfinance as yf

# Download 5 years of AAPL data
df = yf.download('AAPL', period='5y')

# Save to CSV
df.to_csv('AAPL.csv')

print(f"Downloaded {len(df)} rows")
print(df.head())
print(df.tail())
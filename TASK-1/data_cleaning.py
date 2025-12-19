import pandas as pd

df = pd.read_csv("netflix_titles.csv")

# handle missing values (safe way)
df['director'] = df['director'].fillna('Unknown')
df['cast'] = df['cast'].fillna('Unknown')
df['country'] = df['country'].fillna('Unknown')
df = df.dropna(subset=['date_added'])

# remove duplicates
df = df.drop_duplicates()

# clean column names
df.columns = df.columns.str.lower().str.replace(' ', '_')

# standardize text
df['type'] = df['type'].str.lower()
df['country'] = df['country'].str.strip()
df['rating'] = df['rating'].str.upper()

# clean & convert date
df['date_added'] = df['date_added'].str.strip()
df['date_added'] = pd.to_datetime(df['date_added'], errors='coerce')

# fix data type
df['release_year'] = df['release_year'].astype(int)

# save cleaned data
df.to_csv("cleaned_netflix_data.csv", index=False)

print("✅ Data cleaning completed successfully")

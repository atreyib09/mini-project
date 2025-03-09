import pandas as pd

# Load the data
file_path = r"C:\Users\Atreyi\Downloads\SURVEY FOR GAMIFIED EDUCATION MANAGEMENT SYSTEM  (Responses) (2).xlsx"

data = pd.read_excel(file_path)

# Clean column names
data.columns = data.columns.str.strip().str.replace(r'[^\w\s]', '').str.replace('  ', ' ').str.lower()

# Display basic info
print(data.info())
print(data.head())
# Frequency counts for categorical columns
categorical_cols = data.select_dtypes(include='object').columns
for col in categorical_cols:
    print(f"\nValue counts for {col}:")
    print(data[col].value_counts())

# Summary stats for numerical column
print("\nSummary statistics for numerical data:")
print(data.describe())

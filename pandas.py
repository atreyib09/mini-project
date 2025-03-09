import pandas as pd


file_path = r"C:\Users\Atreyi\Downloads\SURVEY FOR GAMIFIED EDUCATION MANAGEMENT SYSTEM  (Responses) (2).xlsx"
data = pd.read_excel(file_path)
data.columns = data.columns.str.strip().str.replace(r'[^\w\s]', '').str.replace('  ', ' ').str.lower()
print(data.info())
print(data.head())
categorical_colums = data.select_dtypes(include='object').columns
for Column in categorical_columns:
    print(f"Value counts for {Column}:")
    print(data[column].value_counts())
print("\nSummary statistics for numerical data:")
print(data.describe())

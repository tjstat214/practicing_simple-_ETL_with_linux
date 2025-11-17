# Creating Transformed directory
mkdir -p Transformed

# Copying raw_data from RAW directory to Transformed directory
cp /home/tjstat/CDE_linux_assignment/RAW/raw_data.csv /home/tjstat/CDE_linux_assignment/Transformed

# Navigating into Transformed directory
cd /home/tjstat/CDE_linux_assignment/Transformed

# Renaming Variable_code column to variable_code
sed -i "1 s/Variable_code/variable_code/" raw_data.csv

# Filering the Year, Value, Units, and Variable_code columns and Redirecting as 2023_year_finance.csv
csvcut -c Year,Value,Units,variable_code raw_data.csv > 2023_year_finance.csv

#Confirming if the transformed file is in transform directory
filepath="/home/tjstat/CDE_linux_assignment/Transformed/2023_year_finance.csv"
if [ -f $filepath ]; then
echo "Transformed file available"
else
echo "Transformed file not available"
fi

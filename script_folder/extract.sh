#Creating data destination called RAW folder
mkdir -p RAW

#Navigating into the RAW folder created
cd RAW

# Downloading data with URL and assigning name with raw_data
export URL="https://www.stats.govt.nz/assets/Uploads/Annual-enterprise-survey/Annual-enterprise-survey-2023-financial-year-provisional/Download-data/annual-enterprise-survey-2023-financial-year-provisional.csv"
curl -o raw_data.csv $URL

#Checking if the file have been saved into the RAW folder.
filepath="/home/tjstat/CDE_linux_assignment/RAW/raw_data.csv"
if [ -f $filepath ]; then
echo "Source data is available in the RAW folder"
else 
echo "Source data not found "
fi 
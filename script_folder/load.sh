# Navigating into CDE_linux_assignment directory
cd /home/tjstat/CDE_linux_assignment

# Creating a "Gold" directory
mkdir -p Gold

# Loading/copying the transformed data into the Gold directory
cp /home/tjstat/CDE_linux_assignment/Transformed/2023_year_finance.csv /home/tjstat/CDE_linux_assignment/Gold

##Confirming if the transformed file is in Gold directory
filepath="/home/tjstat/CDE_linux_assignment/Gold/2023_year_finance.csv"
if [ -f $filepath ]; then
echo " Data loaded successfully into the Gold diectory "
else
echo " Data file not available in the folder "
fi 

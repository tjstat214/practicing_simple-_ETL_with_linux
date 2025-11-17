# Combining the ETL processes in one script
echo "Running ETL ......."
/home/tjstat/CDE_linux_assignment/extract.sh &&
/home/tjstat/CDE_linux_assignment/transform.sh &&
/home/tjstat/CDE_linux_assignment/load.sh

# Checking for transformation status
if [ $? -eq 0 ]; then
echo "ETL process successful"
else
echo "ETL failed, please Try again!"
fi
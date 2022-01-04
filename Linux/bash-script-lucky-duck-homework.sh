#!/bin/bash

# Setup script for Lucky Duck homework assignment.
# Removes and then creates necessary files,folders, and evidence data.

# Make sure to run the following commands to change permissions and to then run the script
# chmod u+x ./setup_script.sh
# ./setup_script.sh

echo "#############################################"
echo "## Welcome to the Lucky Duck setup script! ##"
echo "#############################################"

# remove files/directories if they already exist
echo "Cleaning up..."
[ -d ./Lucky_Duck_Investigations/ ] && rm -r ./Lucky_Duck_Investigations/
[ -d ./Dealer_Schedules_0310/ ] && rm -r ./Dealer_Schedules_0310/
[ -d ./Roulette_Player_WinLoss_0310/ ] && rm -r ./Roulette_Player_WinLoss_0310/
echo "Clean up successful!"

# create directories
echo "Creating directories..."
mkdir -p ./Lucky_Duck_Investigations/Roulette_loss_Investigation/Dealer_Analysis
mkdir -p ./Lucky_Duck_Investigations/Roulette_loss_Investigation/Player_Analysis
mkdir -p ./Lucky_Duck_Investigations/Roulette_loss_Investigation/Player_Dealer_Correlation
mkdir -p Dealer_Schedules_0310
mkdir -p Roulette_Player_WinLoss_0310
echo "Directories created successfully!"

# create files
echo "Creating files..."
touch ./Lucky_Duck_Investigations/Roulette_loss_Investigation/Dealer_Analysis/Notes_Dealer_Analysis 
touch ./Lucky_Duck_Investigations/Roulette_loss_Investigation/Player_Analysis/Notes_Player_Analysis
touch ./Lucky_Duck_Investigations/Roulette_loss_Investigation/Player_Dealer_Correlation/Notes_Player_Dealer_Correlation
echo "Files created successfully!"

echo "Adding evidence data files..."
cat <<'EOF' > Dealer_Schedules_0310/0310_Dealer_schedule
Hour AM/PM	BlackJack_Dealer_FNAME LAST	Roulette_Dealer_FNAME LAST	Texas_Hold_EM_dealer_FNAME LAST


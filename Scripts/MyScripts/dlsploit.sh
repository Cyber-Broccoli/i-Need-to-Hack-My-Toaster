#!/bin/bash
# Bash script to search for a given exploit on exploit-dbb and download all matches
# Then reading all exploit searching for specific terms 

echo "Keywords to search for on exploit-db:"
# Capture user input for search keywords
read SearchKeywords

# Creating a folder to store search results and downloaded exploits
results_folder="jin-sploits_output"
search_folder="search_results"
mkdir $results_folder
mkdir $results_folder/$search_folder

# Finding search related exploits in the title only
searchsploit $SearchKeywords -t | cut -d "|" -f 2 | awk -F "/" '{print $3}' > $results_folder/$search_folder/sploits_searchresults.txt

#for sploit in $(cat $results_folder/$search_folder/sploits_searchresults.txt)
for sploit in $(searchsploit $SearchKeywords -t | cut -d "|" -f 2 | awk -F "/" '{print $3}')

do
    cd $results_folder/
    searchsploit -m $sploit
    echo "Downloaded: $sploit"
    cd ..
done

echo " "
echo "All exploits downloaded."
echo " "
echo " "
echo "Specifics terms to search for in previously downloaded exploits:"

# Capture user input for terms to search for in downloaded exploits
read TermsSearch
echo " "
echo "Searching for - $TermsSearch - in all previously downloaded exploits..."
echo " " 
for file in $(ls $results_folder/)
do
    echo "Searching in $results_folder/$file ..."
    cat $results_folder/$file | grep "$TermsSearch"
done

#!/bin/bash
# Bash script to search for a given exploit on exploit-db and download all matches in raw format
# Then reading all exploit searching for specific terms 

echo "Keywords to search for on exploit-db:"
# Capture user input for search keywords
read SearchKeywords

# Creating a folder to store search results and downloaded exploits
results_folder="jin-rawsploits_output"
search_folder="search_results"
mkdir $results_folder
mkdir $results_folder/$search_folder
# Saving results of the search to a file
searchsploit $SearchKeywords -w -t | grep http | cut -f 2 -d "|" > $results_folder/$search_folder/rsploits_searchresults.txt

#for sploit in $(cat $results_folder/$search_folder/rsploits_searchresults.txt | grep http | cut -f 2 -d "|")
for e in $(searchsploit $SearchKeywords -w -t | grep http | cut -f 2 -d "|")

do
  cd $results_folder
  exp_name=$(echo $e | cut -d "/" -f 5)
  url=$(echo $e | sed 's/exploits/raw/')
  wget -q --no-check-certificate $url -O $exp_name
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

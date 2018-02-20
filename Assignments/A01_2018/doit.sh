#!/bin/bash
tweet_fuzzy=/Users/FLSingerman/Documents/Ottawa_U/Year_4_2017_18/Winter/Information_retrieval/Assignments/A01_2018
trec_eval=/Users/FLSingerman/Documents/Ottawa_U/Year_4_2017_18/Winter/Information_retrieval/Assignments/A01_2018/trec_eval.9.0
now=$(date  "+%Y%m%d-%H%M")
day=$(date +"%a-%b-%d")


echo "------------------------- Starting tweet_fuzzy ----------------------------"

echo "=================== Indexing data ==================="
java -cp tweetFuzzy.jar com.ir.project.Indexer --config tweet.config

echo "=================== Running IR on data ==================="
java -cp tweetFuzzy.jar com.ir.project.Workflow --test-name $day --config tweet.config 

echo "=================== Running Evaluation Scripts ==================="
./sortResults.py 
cd $trec_eval ; ./trec_eval -q ../Trec_microblog11-qrels.txt ../ResultsSorted.txt >> ../evaluation.txt


echo "=================== Completed ==================="
echo "Results and evaluation scripts can be found in $tweet_fuzzy/"


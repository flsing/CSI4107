#/Users/FLSingerman/Documents/Ottawa_U/Year_4_2017_18/Winter/Information_retrieval/Assignments/A01_2018/Results.txt

import pandas as pd
df = pd.read_csv('/Users/FLSingerman/Documents/Ottawa_U/Year_4_2017_18/Winter/Information_retrieval/Assignments/A01_2018/Results.txt', sep='\t', skipinitialspace=True)
df = df.sort_values(by=['topic_id','docno'], ascending=[True,False])
df.to_csv('/Users/FLSingerman/Documents/Ottawa_U/Year_4_2017_18/Winter/Information_retrieval/Assignments/A01_2018/ResultsSorted.txt', sep='\t', header=None, index=None)
import pandas as pd
import csv
df = pd.read_csv(r"C:\Users\neethu.nath.saama.co\Downloads\del_csv.csv")
df = df.reset_index(drop=True)
df.to_csv(r"C:\Users\neethu.nath.saama.co\Downloads\del_pipe.csv",sep="|",quotechar='"',  quoting=csv.QUOTE_ALL,index=False)
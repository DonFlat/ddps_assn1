import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

daset = pd.read_csv('insufficient_mem.csv')


# Distribution plot
# sns.displot(df['column_a'], kde=, bin=)

# Boxplot, data is where data come from
# sns.boxplot(x='day', y='total_bill', data=df)
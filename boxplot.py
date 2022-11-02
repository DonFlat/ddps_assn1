import matplotlib.pyplot as plt

labels = '25%', '50%', '75%', '100%'

l_25 = [295, 302, 302, 285, 298, 285, 283, 295, 313, 306]
l_50 = [151, 222, 155, 117, 222, 211, 223, 220, 134, 155]
l_75 = [95 , 149 , 144 , 143 , 93 , 123 , 89 , 97 , 154 , 95]
l_100 = [69 , 95 , 91 , 61 , 76 , 81 , 70 , 81 , 75 , 99 ]

plt.grid(True)

plt.boxplot([l_25, l_50, l_75, l_100], 
medianprops={'color': 'red', 'linewidth': '1.5'},
flierprops={'marker': 'o', 'markerfacecolor': 'red', 'markersize': 10},
labels=labels
)

plt.xlabel('percentage memory available to Spark')
plt.ylabel('Processing time (s)')

plt.savefig("insufficient_mem.png")
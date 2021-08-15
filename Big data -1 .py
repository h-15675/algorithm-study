import pandas as pd
import matplotlib.pyplot as plt
import numpy as np
df = pd.read_csv('./data.csv', encoding='utf-8')
plt.rc('font', family='Malgun Gothic')
X = np.arange(len(df))
plt.figure(figsize=(38,10))
plt.bar(X-0.0, df['GOLD'], label='1등급', width=0.4)
plt.bar(X+0.2, df['SILVER'], label='2등급', width=0.2)
plt.bar(X+0.4, df['BRONZE'], label='3등급', width=0.2)
plt.bar(X+0.6, df['PP'], label='참가상', width=0.2)
plt.xticks(X, df['CN'])
plt.legend()
plt.xlabel('등급')
plt.ylabel('명수')
plt.ylim(0, 4000)
plt.title('센터별 최신 등급 비율')
plt.show()
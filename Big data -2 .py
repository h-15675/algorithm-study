import pandas as pd
import matplotlib.pyplot as plt
import numpy as np
df = pd.read_csv('./M-N.csv', encoding='utf-8')
plt.rc('font', family='Malgun Gothic')
X = np.arange(len(df))
plt.figure(figsize=(25,8))
plt.bar(X-0.0, df['N'], label='월별 질문수', width=0.8, color='lightskyblue')
plt.xticks(X, df['M'])
plt.legend()
plt.xlabel('월')
plt.ylabel('질문수')
plt.ylim(0, 1000)
plt.title('온라인 운동 상담 이용 실태(20.12~22.08.19)')
plt.savefig('온라인 운동 상담 이용 실태(20.12~22.08.19).png')
import pandas as pd
from fbprophet import Prophet

print("Running https://facebook.github.io/prophet/docs/quick_start.html")

df = pd.read_csv('example_wp_log_peyton_manning.csv')
print(df.head())
m = Prophet()
m.fit(df)
future = m.make_future_dataframe(periods=365)
future.tail()
forecast = m.predict(future)
print(forecast[['ds', 'yhat', 'yhat_lower', 'yhat_upper']].tail())

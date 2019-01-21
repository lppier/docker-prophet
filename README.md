# Instructions to Build and Run this Image
```
sudo docker build --tag=prophet .
```
This will build a docker image that when launched will run in the background. 
So, in order to access it : 
```
sudo docker run -it prophet /bin/bash
```

You will end up at the command prompt inside the prophet docker container.
From here, you can run python and start with the prophet commands within.

```
from fbprophet import Prophet
opts = {"daily_seasonality": False, "yearly_seasonality": True, "weekly_seasonality": True}
m = Prophet(**opts, changepoint_prior_scale=chgpt, growth='logistic', seasonality_mode=seasonality)
```

There's no data set currently as an example. But this should be enough to get you started. 



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
python app.py 
```
will run the example at the Prophet Quickstart Page : https://facebook.github.io/prophet/docs/quick_start.html

Enjoy!




# How To

Launch the following commands:
```
git clone https://github.com/chrissimpkins/tweetledee.git
heroku login
heroku create
heroku git:remote -a tweeter-devfestnantes
heroku container:push web
```

# Test

Launch the following commands:
```
docker build -t 'myimage' .
docker run -d -p 5000:5000 -e PORT=5000 'myimage'
```

# Online

It's available on heroku:
https://tweeter-devfestnantes.herokuapp.com/favoritesjson.php?c=10&cache_interval=8000

# Tips

Override the default php configuration
set `ENTRYPOINT []`

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

# Tips

Override the default php configuration
set `ENTRYPOINT []`
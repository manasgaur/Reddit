from bottle import route, run, static_file, view
import urllib2
import json
import imgurpython


# Create a route so that we can serve static files (css, js, etc.)
# this route only works on dir deep
# this @ symbol thing is called a decorator, its like shorthand
# notice that we imported route on the first line
@route('/static/<folder>/:filename#.*#')
def static(folder, filename):
	return static_file(filename, root="static/"+folder)

# Create the route to our app.
# This is the same idea that we used in our backbone router
@route('/')
def index():
	return static_file('index.html', '.')

#@route('/subreddit/')
#@view('reddit_list')
def subreddit():
#	req = urllib2.Request("https://api.imgur.com/3/album/0Tvbp/images")
#	req.add_header('Authorization', 'Client-ID d973cd5727a7d99')
#	resp = urllib2.urlopen(req).read()
#	js = json.loads(resp)
#	
#	print js
#
#	
	return

# Start the server on localhost:9090, you can change the port to 
# anything, but I would suggest keeping the number above 8000 so that you don't
# need to use sudo.
run(host='localhost', port=9090, debug=True)

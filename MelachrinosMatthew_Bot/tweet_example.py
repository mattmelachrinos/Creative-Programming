import random  			# for selecting random elements from lists
import twitter 			# twitter library for posting

# some lists for our bot
animals = [ 'fish', 'cat', 'zebra', 'sparrow', 'pterodactyl' ]
verbs =   [ 'waltzed', 'ran', 'crept', 'soared', 'swam' ]
places =  [ 'hotel', 'park', 'Louvre', 'sun' ]

# OAuth settings for the Twitter API
consumer_key =    'QouBS1KNEhpaahcaDXBBOxwlj'
consumer_secret = 'x4hPfCfYZk8rqQu0Nhu52AMPhi1GrMuyhKSLytwRVvhgfPvE4k'
oauth_token =     '849253349505601537-wCSuN5gXmfMU95smCYUR5uJ7voCdNmM'
oauth_secret =    'PpHUuLVfGpBsgXhNAVwTiBFn6Im9DMdAlyx5K58psRoNj'

# pick some random words for our tweet
animal = random.choice(animals)
verb =   random.choice(verbs)
place =  random.choice(places)

# format the tweet
tweet = 'The ' + animal + ' ' + verb + ' through the ' + place + '.'
print tweet

# save your tweet for posterity
with open('Tweets.txt', 'a') as f:		# 'a' = append to the file, not overwrite everything :)
	f.write(tweet + '\n')				# be sure to add a line break so your tweets don't get mashed together

# connect to Twitter with our OAuth settings
api = twitter.Api(consumer_key = consumer_key, consumer_secret = consumer_secret, access_token_key = oauth_token, access_token_secret = oauth_secret)

# post tweet
print 'posting tweet...'
try:
	status = api.PostUpdate(tweet)	# try posting
	print '- success!'
except twitter.TwitterError, e:		# if an error, let us know
	print '- error posting!'
	print e

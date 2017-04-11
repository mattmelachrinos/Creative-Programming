import random
import twitter
import json


players = []
teams = []

with open('player_names','r') as player_file:
    for player in player_file:
        players.append(player)
with open('football_teams','r') as teams_file:
    for team in teams_file:
        teams.append(team)

random_team = random.choice(teams)
random_player = random.choice(players)

#Keys and Tokens
Consumer_Key = "MsB3P0A9c8DPsbLYCyEVcmAA9"
Consumer_Secret = "gstX2eUuBOte0Zpow8mHPLujt7r5yRndzgLMq4ofV1ASLPiR4O"
Access_Token = "851599589878771712-AAB4jMmz8RoZRm08rVH8WNKISc4kuJe"
Access_Token_Secret = "uACJNnJYF5fG12KcUesPXSDHMwZiKfABdTnkKSVFNYo6N"

# connect to Twitter with our OAuth settings
api = twitter.Api(consumer_key = Consumer_Key, consumer_secret = Consumer_Secret, access_token_key = Access_Token, access_token_secret = Access_Token_Secret)

#Twitter Query
query = "https://api.twitter.com/1.1/search/tweets.json?q=%nfl&since_id=24012619984051000&result_type=mixed&count=15"



def generate_tweet(text):
    for team in teams:
        if team.strip() in text:
            index = text.find(team.strip())
            text = text[:index] + random_team.strip() + text[index+len(team)-1:]
            break
    for player in players:
        if player.strip() in text:
            index = text.find(player.strip())
            text = text[:index] + random_player.strip() + text[index+len(player)-1:]
            break
    return text


def main():
    # search_results = api.GetSearch(raw_query="q=nfl%20&result_type=recent&since=2014-07-19&count=1")
    # print search_results
    # search_results = json.dumps(search_results)
    # tweet_list = []
    # for line in search_results:
    #     tweet_list.append(json.loads(line))
    #
    # print tweet_list
    incoming_tweet = '''Seahawks GM says team has listened to trade offers regarding cornerback Richard Sherman http://apne.ws/2nKxQda'''
    tweet = generate_tweet(incoming_tweet)

    if len(tweet) > 140:
        tweet = tweet[:140]
    try:
    	status = api.PostUpdate(tweet)	# try posting
    	print '- success!'
        with open("Tweets.txt","a") as tweets_file:
            tweets_file.write("\n")
            tweets_file.write(incoming_tweet + "\n")
            tweets_file.write(tweet + "\n")
    except twitter.TwitterError, e:		# if an error, let us know
    	print '- error posting!'
    	print e



if __name__ == "__main__":
    main()

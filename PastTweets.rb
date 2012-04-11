require('rubygems')
gem('twitter4r', '0.7.0')
require('twitter')


twitter = Twitter::Client

user = twitter.user('cheesysam')
puts user.my(:info)

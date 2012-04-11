require('rubygems')
require('twitter')
require('twitter/console')

gem('twitter4r', '0.7.0')

Twitter::Client.configure do |conf|
	conf.application_name = 'PastTweets'
	conf.application_version = '0.1'
	conf.application_url = 'http://github.com/cheesysam/PastTweets'

    conf.oauth_consumer_token = 'urW1stBADHpeTLhLwd7g'
    conf.oauth_consumer_secret = 'I9E9TgJzVF6caTXma5uCNl2yuzsfC0N5KUpgBTXrJY'
end
	
cfg = Twitter::Client.config

client = Twitter::Client.new(:oauth_access =>
{   :key => '19745640-Z9yKIyw2iQ1FYl2fkepCP9qukx8FmiYNYpvu4',
    :secret => 'eCU4IEZRgAFUGl3Fsd7shZRmfoz2eJBEJLH47bj5g'
})

puts client.user 'cheesysam'
puts client.timeline_for :me

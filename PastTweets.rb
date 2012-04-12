require 'rubygems'
require 'twitter'

a = Twitter.user_timeline('cheesysam', :since_id=>0xb7494528) do
    |status| puts status.to_s + ": " + status.text
end
puts '---'
puts a

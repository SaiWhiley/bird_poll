require "twitter"

connection_strings = File.readlines("keys.txt")

connection_strings.each.with_index do |line, index|
    puts "#{index}, #{line.inspect}"
end

client = Twitter::REST::Client.new do |config|
    config.consumer_key        = connection_strings[0].strip
    config.consumer_secret     = connection_strings[1].strip
    config.access_token        = connection_strings[2].strip
    config.access_token_secret = connection_strings[3].strip
end

tweets = client.search("@AndrewYang", result_type: "recent", since_id:"1167629222292144128")

tweets.each.with_index do |tweet, index|
     puts "#{index}: id: #{tweet.id}, created_at:#{tweet.created_at} : #{tweet.full_text}"
end
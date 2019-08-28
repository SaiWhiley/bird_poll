require 'twitter'

client = Twitter::REST::Client.new do |config|
    config.consumer_key        = "bLICaMaTag1XGvIHMfj7EPShV"
    config.consumer_secret     = "nHJ58Tl1cQvcanR3LgVp5cjET5IUeAejoIkgNpQ0pIVGnZv45L"
    config.access_token        = "2373342666-RUhfn65QpGsqDBGFALiMA4yzr65ukuR9cl2vrUw"
    config.access_token_secret = "FwKO4JGZb0lRCnasUDSWHYftBRgRFdpF2uYn1XkSnN36p"   
end


tweets = client.search('@AndrewYang', result_type: "recent", until:"2019-08-27").take(3)

tweets.each.with_index do |tweet, index|
     puts "#{index}: =begin #{tweet.id}, =end #{tweet.created_at} : #{tweet.full_text}"
end

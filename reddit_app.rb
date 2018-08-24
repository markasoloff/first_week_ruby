require 'http'

response = HTTP.get("https://www.reddit.com/r/programming.json")

data = response.parse

puts "Here is a list of all posts in the programming subreddit:"

subreddits = data["data"]["children"]

subreddits.each do |subreddit|
  puts subreddit["data"]["title"]
  puts " " 
end

puts "Please type a subreddit"
answer = gets.chomp
response = HTTP.get("https://www.reddit.com/r/#{answer}.json")

if response.code == 404
  puts "Error! That subreddit doesn't exist!"
elsif response.code == 302
  puts "302 error! Sorry buddy."
else
  all_data = response.parse
  subreddits = all_data["data"]["children"]
  subreddits.each do |subreddit|
    puts subreddit["data"]["title"]
    puts " " 
  end
end

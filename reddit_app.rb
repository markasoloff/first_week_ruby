require 'http'

response = HTTP.get("https://www.reddit.com/r/programming.json")


# 2. list all posts for programming subreddit
# 3. make it dynamic by asking the user to enter a name for a subreddit
#   3a. If the subreddit exists, display all the posts
#   3b. If the subreddit doesn’t exist or there is an error, display an error message

# Bonus: After displaying all the posts from a subreddit, allow the user to enter a number to see the comments for a given post. You’ll need to make a second web request to get the comments!

#if response.code == 404 ...........

# puts response.body.readpartial  

data = response.parse

# post = data["data"]["children"][0]["data"]["title"]

# puts children

# children_2 = data["data"]["children"][1]["data"]["title"]

# puts children_2 

# puts children_3 = data["data"]["children"][2]["data"]["title"]

puts "Here is a list of all posts in the programming subreddit:"

subreddits = data["data"]["children"]

subreddits.each do |subreddit|
  puts subreddit["data"]["title"]
  puts " " 
end

puts "Please type a subreddit"

answer = gets.chomp
vanilla_response = HTTP.get("https://www.reddit.com/r/#{answer}.com")
response = HTTP.get("https://www.reddit.com/r/#{answer}.json")
all_data = response.parse

if vanilla_response.code == false
  "Error! That subreddit doesn't exist!"
else 
  subreddits = all_data["data"]["children"]
  subreddits.each do |subreddit|
    puts subreddit["data"]["title"]
    puts " " 
  end
end



# (1..100).each do |k|
#    puts "#{k}. This is Ruby preferred way of doing loops, when possible"
# end                  

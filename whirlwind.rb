

puts "What are your 5 favorite foods?"
answer = []
index = 0 
5.times do 
  answer[index] = gets.chomp
  puts "answer equals #{answer[index]}"
  index += 1
end
p answer

5.times do 
  answer[index]
  puts "I love #{answer[index]}"
  index += 1
end

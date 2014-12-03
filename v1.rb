#First attempt at writing the web app:

require 'rubygems'
require 'nokogiri'
require 'mechanize'
require 'open-uri'
   
#page = Nokogiri::HTML(open("https://news.ycombinator.com/"))   
#puts page.class

agent = Mechanize.new
agent.get("https://news.ycombinator.com/")

news_links = page.css("a").select{|link| link['data-category'] == "news"}
news_links.each{|link| puts link['href'] }

#=>   http://reddit.com
#=>   http://www.nytimes.com
         
puts news_links.class   #=>   Array     

#OR 

news_links = page.css("a[data-category=news]")
news_links.each{|link| puts link['href']}
#=>   http://reddit.com
#=>   http://www.nytimes.com

puts news_links.class

news_links.each do |link|
	#blah blah blah
end


puts page.at('#top-story h2').text.strip

link = page.link_with(text: 'Random article')
page = link.click
puts page.uri

# class = "title" for the domain name and the headline
# class="subtext pocket-inserted" for the comments
# id = number... how do I set the id
# span = comhead
# don't need to specify 30 because only 30 on the page
# a href "item?id=falala" get the number of comments
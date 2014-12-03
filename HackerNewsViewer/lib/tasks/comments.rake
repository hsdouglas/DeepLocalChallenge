desc "sort number of comments"
task :sort_comments => :environment do
	require 'rubygems'
	require 'nokogiri'
	require 'open-uri'

	url = "https://news.ycombinator.com/"
	doc = Nokogiri::HTML(open(url))
	comments_array = []
	doc.css('.pocket-inserted a:nth-child(3)').each do |comments|
		comments_array << comment
 	end
   	ordered = comments_array.sort
   	end
end
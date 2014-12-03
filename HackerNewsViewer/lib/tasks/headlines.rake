desc "sort headline lengths"
task :fetch_comments => :environment do
	require 'rubygems'
	require 'nokogiri'
	require 'open-uri'

	url = "https://news.ycombinator.com/"
	doc = Nokogiri::HTML(open(url))
	headlines_array = []
	doc.css('.title:nth-child(3) a').each do |headlines|
		headlines_array << headline
   	end
   	ordered = headlines_array.sort { |x,y| y<=>x }
end
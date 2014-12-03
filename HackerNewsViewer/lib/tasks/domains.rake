desc "sort domain names"
task :sort_domains => :environment do
	require 'rubygems'
	require 'nokogiri'
	require 'open-uri'

	url = "https://news.ycombinator.com/"
	doc = Nokogiri::HTML(open(url))
	domains_array = []
	doc.css('.comhead').each do |domains|
		domains_array << domain
	end
	ordered = domains_array.sort
end
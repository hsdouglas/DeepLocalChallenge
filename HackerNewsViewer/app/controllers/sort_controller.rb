class SortController < ApplicationController

def comments
	#RAKE::TASK['sort_comments'].invoke
	call_rake :sort_comments
  	flash[:notice] = "sorting comments"
end

def domain
	#RAKE::TASK['domain'].invoke
	#call_rake :sort_domain
  	#flash[:notice] = "sorting domains"
end

#def headline_length
	#RAKE::TASK['headline_length'].invoke
	#call_rake :headline_length
  	#flash[:notice] = "sorting head-lines"
#end

end

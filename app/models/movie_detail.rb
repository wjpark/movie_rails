require 'open-uri'

class MovieDetail

	def detail(imdbid)
		file = open("http://www.omdbapi.com/?i=#{URI.escape(imdbid)}")
		JSON.load(file.read)
	end
end
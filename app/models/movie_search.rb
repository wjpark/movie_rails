require 'open-uri'

class MovieSearch

	def search(movie_title)
		file = open("http://www.omdbapi.com/?s=#{URI.escape(movie_title)}")
		JSON.load(file.read)
	end
end

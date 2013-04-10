class MovieController < ApplicationController

	def home
	end

	def search
		@movie_title = params[:q]
		movie = MovieSearch.new
		@results = movie.search(@movie_title)
	end

	def detail
		@imdbid = params[:imdbid]
		movie = MovieDetail.new
		@detail = movie.detail(@imdbid)
	end

end

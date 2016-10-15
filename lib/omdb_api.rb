require 'http'
require 'json'

module Movlog
  class OmdbApi
    OMDB_URL = 'http://www.omdbapi.com'

    def initialize()
    end

    def movie_info(t)
      movie_response = HTTP.get(
        OMDB_URL,
        params: {
          t: t,
          y: '',
          plot: 'short',
          r: 'json'
        })
      JSON.load(movie_response.to_s)
    end
  end
end
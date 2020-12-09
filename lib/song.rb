require 'pry'

class Song
    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = {}
    @@artist_count = {}
    @song_info = []

    def self.count
        @@count
    end

    def self.artists 
        @@artists.uniq
    end

    def self.genres 
        @@genres.uniq
    end

    def self.genre_count
        Song.genres.each do |genre|
            @@genre_count[genre] = @@genres.count(genre)
        end
        @@genre_count        
    end

    def self.artist_count
        @@artist_count
        Song.artists.each do |artist|
            @@artist_count[artist] = @@artists.count(artist)
        end
        @@artist_count    
    end

    attr_accessor :name, :artist, :genre
    def initialize (name, artist, genre)
        @@count += 1
        @@genres << genre
        @@artists << artist
        @name = name
        @artist = artist
        @genre = genre         
    end
end
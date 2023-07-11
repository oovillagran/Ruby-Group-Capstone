require_relative 'item'

# Represents a Music Album Item.
class MusicAlbum < Item
  attr_accessor :on_spotify

  def initialize(genre, author, publish_date, on_spotify)
    super(genre, author, publish_date, nil)
    @on_spotify = on_spotify
  end

  def can_be_archived?
    super && on_spotify
  end
end

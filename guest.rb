class Guest
attr_reader :name, :favourite_song, :cash

  def initialize (name, favourite_song, cash)
    @name = name
    @favourite_song = favourite_song
    @cash = cash
  end

end

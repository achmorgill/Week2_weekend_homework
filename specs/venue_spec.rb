require('minitest/autorun')
require('minitest/rg')
require('pry')
require_relative ('../venue.rb')
require_relative ('../room.rb')
require_relative ('../song.rb')

class TestVenue < MiniTest::Test

  def setup

   @song_library_1 =  ["Hotel California","Bohemian Rapsody","Purple Rain","Thriller","Jailhouse Rock", "Ruby Ruby Ruby"]

   @song_library_2 = ["If", "Walk", "Learn to Fly", "My Hero", "Teen Spirit", "Tom Sawyer"]

    @red_room = Room.new(5,@song_library_1)
    @blue_room = Room.new(4, @song_library_2)
    @venue = Venue.new()

    

  end


def test_add_a_new_room
  @venue.add_a_new_room(@red_room.song_list)
  
end

end
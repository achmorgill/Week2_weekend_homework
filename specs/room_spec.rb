require ('minitest/autorun')
require ('minitest/rg')
require ('pry')
require_relative ('../room.rb')
require_relative ('../guest.rb')
require_relative ('../song.rb')



class TestRoom < MiniTest::Test

  def setup
    
    @guest1 = Guest.new("Elvis")
    @guest2 = Guest.new("Freddy")
    @guest3 = Guest.new("Prince")
    @guest4 = Guest.new("Michael")
    @guest5 = Guest.new("Amy")
    
    @room = Room.new()

    # @song1 = Song.new("Hotel California")
    # @song2 = Song.new("Bohemian Rapsody")
    # @song3 = Song.new("Purple Rain")
    # @song4 = Song.new("Thriller")
    # @song4 = Song.new("Jailhouse Rock")



  end

def test_check_capacity
  assert_equal(4, @room.check_capacity())
end

def test_song_list_array
  assert_equal(0,@room.check_song_list_array())
end

def test_guess_list_array_is_empty
  assert_equal(0,@room.check_song_list_array)
end

def test_add_IAWL_to_song_list
   no_of_songs = @room.add_song_to_song_list("It's a Wonderful Life")
  assert_equal(1,@room.song_list.size)
end

def test_add_song_to_song_list
  no_of_songs = @room.add_song_to_song_list(@song1)
 assert_equal(1,@room.song_list.size)
end

def test_add_multiple_songs_to_song_list
  @room.add_song_to_song_list(@song1)
  @room.add_song_to_song_list(@song2)
  @room.add_song_to_song_list(@song3)
  @room.add_song_to_song_list(@song4)
  @room.add_song_to_song_list(@song5)
  assert_equal(5,@room.song_list.size)
end



def test_add_Jim_to_guest_list
 @room.add_guest_to_room("Jim")
  assert_equal(1,@room.guest_list.size)
end

def test_add_one_guest_to_guest_list
  @room.add_guest_to_room(@guest1)
  assert_equal(1,@room.guest_list.size)
end

def test_add_many_guests_to_room

    @room.add_guest_to_room(@guest1)
    @room.add_guest_to_room(@guest2)
    @room.add_guest_to_room(@guest3)
    @room.add_guest_to_room(@guest4)
    no_of_guests = @room.add_guest_to_room(@guest5)
    assert_equal(5,no_of_guests)
end

def test_remove_guest_from_room
  @room.add_guest_to_room(@guest1)
  @room.add_guest_to_room(@guest2)
  @room.remove_guest_from_room(@guest2)
  assert_equal(1,@room.guest_list.size)
end

end



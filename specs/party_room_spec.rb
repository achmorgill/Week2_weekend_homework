require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../party_room.rb')



class TestPartyRoom < MiniTest::Test
  def setup
    
    # @guest1 = Guest.new("Elvis")
    # @guest2 = Guest.new("Freddy")
    # @guest3 = Guest.new("Prince")
    # @guest4 = Guest.new("Michael")
    # @guest5 = Guest.new("Amy")
    
    @party_room = PartyRoom.new()

    # @song1 = Song.new("It's a Wonderful Life")

  end

  def test_check_capacity
    assert_equal(4, @party_room.check_capacity())
  end

  def test_song_list_array
    assert_equal(0,@party_room.check_song_list_array())
  end

  def test_guess_list_array_is_empty
    assert_equal(0,@party_room.check_song_list_array)
  end
end
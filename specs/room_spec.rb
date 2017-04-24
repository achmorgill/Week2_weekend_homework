require ('minitest/autorun')
require ('minitest/rg')
require ('pry')
require_relative ('../room.rb')
require_relative ('../guest.rb')
require_relative ('../song.rb')



class TestRoom < MiniTest::Test

  def setup

    @guest1 = Guest.new("Elvis","Jailhouse Rock", 50)
    @guest2 = Guest.new("Freddy", "Bohemian Rhapsody",10)
    @guest3 = Guest.new("Prince", "Purple Rain", 20)
    @guest4 = Guest.new("Michael", "Billy Jean", 30)
    @guest5 = Guest.new("Bert", "Valerie", 20)
    @guest6 = Guest.new("Ziggy", "Ashes to Ashes", 100)
    
    @Blues_room = Room.new("Blues_room",4,25)
    @Jazz_room = Room.new("Jazz_room",5,30)
    @Pop_room = Room.new("Pop_room",6,40)
#songs list can be predefined or selected by the guest  - this would be done elsewhere
@blues_song_list = [@song1,@song2, @song3, @song4, @song5]
@song1 = Song.new("Ain't No Sunshine", "Bill Withers")
@song2 = Song.new("Cry Me A River", "Michael Buble")
@song3 = Song.new("Son of a Preacher Man","Dusty Springfield")
@song4 = Song.new("At Last", "Etta James")
@song5 = Song.new("Mustang Sally", "The Commitments")
@jazz_song_list =  [@song6, @song7, @song8, @song9, @song10]
@song6 = Song.new("Mack the Knife", "Bobby Darin")
@song7 = Song.new("Feeling Good", "Michael Buble")
@song8 = Song.new("Valerie", "Amy Winehouse")
@song9 = Song.new("Let There Be Love", "Nat King Cole")
@song10 = Song.new("Fly Me To The Moon", "Frank Sinatra")
@pop_song_list = [@song11, @son12, @song13, @song14, @song15]
@song11 = Song.new("Sweet Caroline", "Neil Diamond")
@song12 = Song.new("I Will Survive", "Gloria Gaynor")
@song13 = Song.new("Hello", "Adele")
@song14 = Song.new("Return to Sender", "Elvis Presley")
@song15 = Song.new("9 to 5", "Dolly Parton")

@room = @Blues_room

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

def test_move_waiting_guest_to_room

  @room.add_guest_to_room(@guest1)
  @room.add_guest_to_room(@guest2)
  @room.add_guest_to_room(@guest3)
  @room.add_guest_to_room(@guest4)
  assert_equal(4, @room.guest_list.size)

  @room.add_guest_to_room(@guest5)
  @room.add_guest_to_room(@guest6)
  assert_equal(4, @room.guest_list.size)

  @room.move_waiting_guest_to_room()
  actual = assert_equal(1, @room.waiting_list.size)
  #check that the guest who was first on the waiting list is moved to the party room first
  assert_equal(@guest6, @room.waiting_list[0])
  #check that the first guest on the waiting list has been added to the party room
  assert_equal(@guest5, @room.guest_list.pop)

end

def test_guest_fav_song_against_playlist_exists
  @room.add_song_to_song_list(@song6)
  @room.add_song_to_song_list(@song7)
  @room.add_song_to_song_list(@song8)
  @room.add_song_to_song_list(@song9)
  @room.add_song_to_song_list(@song10)

  fav_song_found = @room.add_favourite_song_to_song_list(@guest5)
  assert_equal(5,@room.song_list.size)
  assert_equal("WOOHOO",fav_song_found)
  
end

def test_guest_fav_song_against_playlist_addit
  @room.add_song_to_song_list(@song1)
  @room.add_song_to_song_list(@song2)
  @room.add_song_to_song_list(@song3)
  @room.add_song_to_song_list(@song4)
  @room.add_song_to_song_list(@song5)

  @room.add_favourite_song_to_song_list(@guest5)

  assert_equal(6,@room.song_list.size)
  
end

def test_check_the_guest_has_money_to_pay
  can_guest_pay = @room.has_the_guest_the_entry_fee(@guest1)
  assert_equal(true,can_guest_pay)
end

end



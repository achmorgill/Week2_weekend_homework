class Room
  attr_reader :room, :capacity, :guest_list, :song_list

  def initialize(capacity = 4,song_list)
    @capacity  = capacity
    @song_list = []
    @guest_list = []
    @waiting_list = []
  end

  def check_capacity()
  #check the room capacity is pre-set to 4
  return @capacity 
end

def check_song_list_array
  return @song_list.size
end

def add_song_to_song_list(new_song)
  @song_list << new_song
  
end

def add_guest_to_room(new_guest)
  is_room_full = guest_list.size
  if @capacity == is_room_full
    puts "THE ROOM IS FULL"
    @waiting_list << new_guest
    return 5
  else
    @guest_list << new_guest
    return 
  end
end

def remove_guest_from_room(guest_to_remove)
  @guest_list.each do |guest|
    if guest == guest_to_remove
      @guest_list.delete(guest)
    end
  end
end

end

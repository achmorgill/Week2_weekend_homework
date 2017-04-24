class Room
  attr_reader :room, :capacity, :guest_list, :song_list, :name, :waiting_list, :room_cost

  def initialize(name, capacity, room_cost)
    @name = name
    @capacity  = capacity
    @room_cost = room_cost
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
    @waiting_list.unshift(new_guest)
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

def move_waiting_guest_to_room()
  @guest_list << @waiting_list.pop
end

def add_favourite_song_to_song_list(guest)

  song_list.each do |song|

    if song.title == guest.favourite_song
      return "WOOHOO"
    else
      next
    end
  end
    add_song_to_song_list(guest.favourite_song)  
end

def has_the_guest_the_entry_fee(guest1)

  if @room_cost <= guest1.cash
    return true
  else
    return false
  end
end

end

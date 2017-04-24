class Venue
  attr_reader :room_name, :room_cost

  def initialize()
    @room = [room_name]
    @room_cost = room_cost

  end

def add_a_new_room(new_room)

  puts "------------red room##{new_room.song_list.inspect}"
  @room << new_room
  puts "  -----   room name #{new_room.inspect}"

end
end
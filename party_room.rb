class PartyRoom
  attr_reader :room, :capacity, :guest_list, :song_list

  def initialize(capacity = 4)
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
end
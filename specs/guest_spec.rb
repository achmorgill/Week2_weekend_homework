require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../guest.rb')

class TestGuest < MiniTest::Test


  def setup
    @guest = Guest.new ("Elvis")
  end

  def test_for_guest_name
    assert_equal("Elvis", @guest.name)
  end



end

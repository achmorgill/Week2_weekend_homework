require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../guest.rb')

class TestGuest < MiniTest::Test


  def setup
    @guest = Guest.new("Elvis", "Jailhouse Rock", 50)
  end

  def test_for_guest_name
    assert_equal("Elvis", @guest.name)
  end

  def test_for_favourite_song
    assert_equal("Jailhouse Rock", @guest.favourite_song)
  end

  def test_for_cash_in_pocket
    assert_equal(50, @guest.cash)
  end



end

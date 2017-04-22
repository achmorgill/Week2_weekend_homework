require ('minitest/autorun')
require ('minitest/rg')
require ('pry')
require_relative('../song.rb')


class TestSong < MiniTest::Test

  def setup
    @song = Song.new("It's a Wonderful Life")
  end
  

  def test_check_for_song_title

    assert_equal("It's a Wonderful Life", @song.title)
  end
end
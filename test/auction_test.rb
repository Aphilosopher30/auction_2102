require 'minitest/autorun'
require 'minitest/pride'
require './lib/auction'
require './lib/item'

class AuctionTest < Minitest::Test
  def test_it_exists
    auction = Auction.new

    assert_instance_of Auction, auction
  end

  def test_it_has_attributes
    auction = Auction.new

    assert_equal [], auction.items
  end

  def test_add_item
    auction = Auction.new

    item1 = Item.new('Chalkware Piggy Bank')
    item2 = Item.new("Bamboo Picture Frame")

    auction.add_item(item1)
    auction.add_item(item2)

    assert_equal [item1, item2], auction.items
  end

  def test_item_names
    auction = Auction.new

    item1 = Item.new('Chalkware Piggy Bank')
    item2 = Item.new("Bamboo Picture Frame")
    auction.add_item(item1)
    auction.add_item(item2)

    assert_equal ['Chalkware Piggy Bank', "Bamboo Picture Frame"], auction.item_names
  end

  def 



end

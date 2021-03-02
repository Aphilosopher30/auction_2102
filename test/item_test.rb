require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'
require './lib/attendee'

class ItemTest < Minitest::Test
  def test_it_exists
    item_1 = Item.new('Chalkware Piggy Bank')

    assert_instance_of Item, item_1
  end

  def test_it_has_attributes
    item_1 = Item.new('Chalkware Piggy Bank')

    hash = {}

    assert_equal 'Chalkware Piggy Bank', item_1.name
    assert_equal hash, item_1.bids
  end

  def test_add_bid
    item_1 = Item.new('Chalkware Piggy Bank')

    attendee1 = Attendee.new(name: 'Megan', budget: '$50')
    attendee2 = Attendee.new(name: 'Bob', budget: '$75')

    item_1.add_bid(attendee2, 20)
    item_1.add_bid(attendee1, 22)

    hash = {attendee1 => 22,
            attendee2 => 20
          }
    assert_equal hash, item_1.bids
  end

  def test_add_bid
    item_1 = Item.new('Chalkware Piggy Bank')

    attendee1 = Attendee.new(name: 'Megan', budget: '$50')
    attendee2 = Attendee.new(name: 'Bob', budget: '$75')

    item_1.add_bid(attendee2, 20)
    item_1.add_bid(attendee1, 22)

    hash = {attendee1 => 22,
            attendee2 => 20
          }
    assert_equal 22, item_1.current_high_bid
  end




end

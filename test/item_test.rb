require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'

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


end

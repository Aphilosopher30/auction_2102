class Item
  attr_reader :bids, :name

  def initialize(name)
    @bids = {}
    @name = name
  end

  def add_bid(bidder, money)
    @bids[bidder] = money
  end

  def current_high_bid
    @bids.values.max
  end

end

class Auction
  attr_reader :items

  def initialize
    @items = []
  end

  def add_item(item)
    @items << item
  end

  def item_names
    @items.map do |item|
      item.name
    end
  end

  def unpopular_items
    unpopular = @items.find_all do |item |
      item.bids == {}
    end
    unpopular
  end

  def potential_revenue
    total = 0
    @items.each do |item|
      unless unpopular_items.include?(item)
        total += item.current_high_bid
      end
    end
    total
  end

end

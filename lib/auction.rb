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

  def get_bidder_list
    all_bidders = []
    @items.each do |item|
      item.bids.keys.each do |bidder|
        all_bidders << bidder
      end
    end
    all_bidders.uniq
  end

  def bidders
    get_bidder_list.map do |bidder|
      bidder.name
    end
  end

  def bidder_info
    info_all = {}
    get_bidder_list.each do |bidder|
      list = @items.find_all do |item|
        item.bids.include?(bidder)
      end
      info_all[bidder] = {:budget => bidder.budget,
                          :items => list
                          }
    end
    info_all
  end
end

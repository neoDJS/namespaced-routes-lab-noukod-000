class Artist < ActiveRecord::Base
  has_many :songs

  def self.list (order)
    all.order(order)
  end
end

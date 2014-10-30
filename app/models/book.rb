class Book < ActiveRecord::Base
  validates :name, presence:true, uniqueness: true
  validates :description, presence:true, length: {
    maximum: 500,
    minimum: 20
    }
  validates :author, presence: true

  def self.all_by_rank
    all.sort { |a, b| a.rank <=> b.rank } # ~= Book.all.sort...
  end

  def self.all_rank_reverse
    all_by_rank.reverse
  end

  def self.top_five
    all_rank_reverse[0..4]
  end
end

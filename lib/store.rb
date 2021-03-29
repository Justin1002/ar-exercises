class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {greater_than_or_equal_to: 0}
  validate :must_be_mens_or_womens

  def must_be_mens_or_womens
    if mens_apparel == nil && womens_apparel == nil
      errors.add( :Stores,"must carry at least one of the men's or womens apparel")
    end
  end

end

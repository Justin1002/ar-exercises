class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200}
  validates_associated :store
  
  before_save :set_password
  

  private
  def set_password
    self.password = Array.new(8){[*"A".."Z", *"0".."9"].sample}.join
  end

end

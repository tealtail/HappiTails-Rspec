class Owner < ActiveRecord::Base
  attr_accessible :name
  validates :name, presence: true

  has_many :animals

  def lonely?
    self.animals.empty?
  end
end
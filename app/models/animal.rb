class Animal < ActiveRecord::Base
  attr_accessible :name, :species
  validates :name, :species, presence: true

  belongs_to :owner

  def available?
    self.owner.nil?
  end
end
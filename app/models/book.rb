class Book < ActiveRecord::Base
  attr_accessible :author, :description, :price, :title

  validates :price, :presence => true
  validates :title, :uniqueness => true

  has_many :reviews
  has_many :users, :through => :reviews
end

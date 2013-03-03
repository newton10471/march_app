class User < ActiveRecord::Base
  attr_accessible :email, :name

  has_many :reviews
  has_many :books, :through => :reviews
end

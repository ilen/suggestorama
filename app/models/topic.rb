class Topic < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :description
  has_many :votes
end

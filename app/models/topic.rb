class Topic < ActiveRecord::Base
  belongs_to :category
  has_many :comments
  validates_presence_of :title
  validates_presence_of :category_id
  
end

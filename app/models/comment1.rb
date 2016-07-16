class Comment1 < ActiveRecord::Base
  belongs_to :post1
  has_and_belongs_to_many :tag1s
end

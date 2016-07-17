class Comment2 < ActiveRecord::Base
  belongs_to :post2
  has_and_belongs_to_many :tag2s
end

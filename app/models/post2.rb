class Post2 < ActiveRecord::Base
  has_many :comment2s

  has_many :recent_15_comment2s, -> { recent(15) }, class_name: 'Comment2'
end

class Folder3 < ActiveRecord::Base
  has_ancestry
  
  has_many :file3s
end

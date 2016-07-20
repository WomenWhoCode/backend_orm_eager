class Folder3 < ActiveRecord::Base
  has_ancestry
  
  def self.cache
    RequestStore.store[:model_folder3_by_ancestry] ||= {}
    self.find_each do |folder3|
      RequestStore.store[:model_folder3_by_ancestry][folder3.ancestry] ||= []
      RequestStore.store[:model_folder3_by_ancestry][folder3.ancestry] << folder3
    end
  end
  
  def self.cached_roots
    RequestStore.store[:model_folder3_by_ancestry][nil]
  end
  
  def cached_children
    if self.ancestry.nil?
      ancestry = self.id.to_s
    else
      ancestry = self.ancestry + '/' + self.id.to_s
    end
    RequestStore.store[:model_folder3_by_ancestry]["#{ancestry}"] || []
  end

  has_many :file3s
end

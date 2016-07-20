class ThreeController < ApplicationController
  def index
    Folder3.cache
    @root_folder3s = Folder3.cached_roots
  end
end

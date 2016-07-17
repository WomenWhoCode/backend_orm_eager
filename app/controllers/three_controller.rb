class ThreeController < ApplicationController
  def index
    @root_folder3s = Folder3.roots
  end
end

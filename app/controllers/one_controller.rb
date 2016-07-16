class OneController < ApplicationController
  def index
    @post1s = Post1.order(created_at: :desc).limit(50)
  end
end

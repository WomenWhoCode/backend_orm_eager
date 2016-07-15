class OneController < ApplicationController
  def index
    @post1s = Post1.order(created_at: :desc).limit(100)
  end
end

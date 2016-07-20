class OneController < ApplicationController
  def index
    @post1s = Post1.includes(comment1s: :tag1s).order(created_at: :desc).limit(50)
  end
end

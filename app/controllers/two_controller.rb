class TwoController < ApplicationController
  def index
    @post2s = Post2.order(created_at: :desc).limit(50)
  end
end

class TwoController < ApplicationController
  def index
    @post2s = Post2.includes(recent_15_comment2s: :tag2s).order(created_at: :desc).limit(50)
  end
end

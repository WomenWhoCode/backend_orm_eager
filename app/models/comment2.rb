class Comment2 < ActiveRecord::Base
  belongs_to :post2
  has_and_belongs_to_many :tag2s
  
  scope :recent, -> (count = 10) {
    ranked_sql = <<-SQL
      SELECT  id
      ,       RANK() OVER (PARTITION BY post2_id ORDER BY created_at DESC, id DESC) AS recent_rank
      FROM    comment2s
    SQL
    joins("INNER JOIN (#{ranked_sql}) AS r ON comment2s.id = r.id")
      .where("r.recent_rank <= #{count}")
      .order('r.recent_rank')
  }
end

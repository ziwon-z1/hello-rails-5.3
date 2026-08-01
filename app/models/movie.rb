class Movie < ApplicationRecord
  # 1. 返回所有可能的评级
  def self.all_ratings
    ['G', 'PG', 'PG-13', 'R']
  end

  # 2. 根据传入的评级数组（如 ['G', 'PG']）返回对应的电影
  def self.with_ratings(ratings_list)
    if ratings_list.present?
      # 如果有勾选特定的评级，就用 where 过滤
      where(rating: ratings_list)
    else
      # 如果传入 nil，则返回所有电影
      all
    end
  end
end
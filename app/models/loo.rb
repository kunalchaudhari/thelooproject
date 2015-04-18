class Loo < ActiveRecord::Base

  def self.search(search_term)
    where("name like ? OR description like ?", "#{search_term}_%", "#{search_term}_%")
  end
  
end

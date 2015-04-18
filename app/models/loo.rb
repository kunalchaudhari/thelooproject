class Loo < ActiveRecord::Base
  has_many :attachments, as: :attachable

  accepts_nested_attributes_for :attachments

  def self.search(search_term)
    where("name like ? OR description like ?", "#{search_term}_%", "#{search_term}_%")
  end
  
end

class SiteDate < ActiveRecord::Base
  belongs_to :category

  validates :site_name, presence: true
  validates :url, presence: true
end

class Category < ActiveRecord::Base
  belongs_to :user
  has_many :site_dates

  validates :title, presence: true
end

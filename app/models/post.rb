class Post < ActiveRecord::Base
  belongs_to :user
  has_many :approvals
  validates :content, presence: true


end

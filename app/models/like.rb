class Like < ApplicationRecord
  validates :user_id, uniqueness: { scope: [:likeable_id, :likeable_type] }
  belongs_to :user
  belongs_to :likeable, polymorphic: true
  has_many :comments, as: :commentable, dependent: :destroy
end

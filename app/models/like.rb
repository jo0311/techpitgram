class Like < ApplicationRecord

  belongs_to :user

  belongs_to :post

  # user_idとpost_idの組み合わせは重複しない
  validates :user_id, uniqueness: { scope: :post_id }

end

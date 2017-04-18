class Contact < ApplicationRecord
  belongs_to :user
  validates :email, format: { with: /\A[_a-zA-Z0-9-]+(\.[_a-zA-Z0-9-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]{1,})*\.([a-zA-Z]{2,}){1}\z/ }
end

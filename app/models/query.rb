class Query < ApplicationRecord
  validates :name, :email, :number, :message, presence: true
end

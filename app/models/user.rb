class User < ApplicationRecord
  has_many :todos
  has_many :providers, through: :todos
end

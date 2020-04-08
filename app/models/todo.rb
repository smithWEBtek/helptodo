class Todo < ApplicationRecord
  belongs_to :user
  belongs_to :provider, optional: true
end

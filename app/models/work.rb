class Work < ApplicationRecord
  has_one_attached :photo

  has_many :tasks
end

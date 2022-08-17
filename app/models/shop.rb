class Shop < ApplicationRecord
    has_many :hourlys, dependent: :destroy
    validates :name, presence: true
end

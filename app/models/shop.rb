class Shop < ApplicationRecord
    has_many :hourlys, dependent: :destroy
end

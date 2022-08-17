require 'rails_helper'

RSpec.describe Shop, type: :model do
    context 'validation' do
        it 'should at least have a name' do
            shop = Shop.new(address:'Bordeaux')
            shop.validate
            expect(shop.errors.messages).to include(:name)
            expect(shop.valid?).to be false
        end

        it 'should acccept when shop have a name' do
            shop = Shop.new(name:'ShopMagasin')
            shop.validate
            expect(shop.valid?).to be true
        end
    end

end



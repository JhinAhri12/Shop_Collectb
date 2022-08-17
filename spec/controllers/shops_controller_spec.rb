require 'rails_helper'

# rake db:seed RAILS_ENV=test

RSpec.describe ShopsController, type: :controller do
    describe 'SHOP #index' do 
        context 'testing seed' do
            it 'should return 4 shops' do
                shops = Shop.all
                expect(shops.count).to eq(4)
            end 
        end
    end

    describe 'SHOP #show' do 
        context 'testing seed' do
            it 'should return 1 shop' do
                shop = Shop.find(1)
                expect(shop.id).to eq(1)
            end 
        end
    end
end

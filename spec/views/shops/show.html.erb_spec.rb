require "rails_helper"

=begin
RSpec.describe "shops/show" do
  it "displays the shop with id: 1" do
    shop = Shop.where(:name => "Tullia")

    expect(controller.request.fullpath).to eq shop_path(shop.id)
  end
end
=end
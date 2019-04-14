describe 'User Stories' do
  # As a customer
  # So that I can check if I want to order something
  # I would like to see a list of dishes with prices
  it 'so customers can check dishes, return list of dishes with prices' do
    menu = Menu.new
    dishes = {
          edamame: 4,
          chilli_squid: 6,
          duck_wraps: 6,
          steamed_bun: 4,
          chicken_ramen: 10,
          seafood_ramen: 12,
          yasai_ramen: 10
        }
    expect(menu.dishes).to eq(dishes)
  end

  # As a customer
  # So that I can order the meal I want
  # I would like to be able to select some number of several available dishes

  it 'so customers can order dishes, recieve and log dishes and quantities' do
    selected = { 'steamed_bun' => 4,'seafood_ramen' => 1 }
    order = Order.new
    order.add('steamed_bun', 4)
    order.add('seafood_ramen', 1)
    expect(order.selected).to eq(selected)
  end

  # # As a customer
  # # So that I can verify that my order is correct
  # # I would like to check that the total I have been given matches the sum of the various dishes in my order
  #  'so customers can verify their order, return order total'

end
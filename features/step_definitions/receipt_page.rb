Then(/^my order should be marked as true$/) do
 expect(ShoppingCart.first.paid).to eq true
end

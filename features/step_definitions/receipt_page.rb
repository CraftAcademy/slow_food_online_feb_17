Then(/^my order should be marked as paid$/) do
 expect(ShoppingCart.paid).to eq true
end

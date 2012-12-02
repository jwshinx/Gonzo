FactoryGirl.define do
 factory :regular_price do
  initialize_with do 
   RegularPrice.new
  end
 end
end

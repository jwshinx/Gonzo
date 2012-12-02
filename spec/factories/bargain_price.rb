FactoryGirl.define do
 factory :bargain_price do
  initialize_with do 
   BargainPrice.new
  end
 end
end

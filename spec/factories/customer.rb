FactoryGirl.define do
 factory :customer do
  initialize_with do 
   #Customer.new( 'Al B', FactoryGirl.build(:regular_price_song) ) 
   Customer.new( 'Thom Yorke' ) 
  end
  
  #trait(:bargain_price_code) { price_code 'BARGAIN' } 
  #factory :bargain_price_song, traits: [:bargain_price_code]
 end
end

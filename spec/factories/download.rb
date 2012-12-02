FactoryGirl.define do
 factory :download do
  initialize_with do 
   Download.new( FactoryGirl.build(:regular_price_song) ) 
  end
  
  #trait(:bargain_price_code) { price_code 'BARGAIN' } 
  #factory :bargain_price_song, traits: [:bargain_price_code]
 end
end

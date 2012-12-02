FactoryGirl.define do
 factory :song do
  initialize_with { Song.new( 'Stand', 'REGULAR') } 
  
  trait(:regular_price_code) { price_code 'REGULAR' } 
  trait(:new_release_price_code) { price_code 'NEW_RELEASE' } 
  trait(:bargain_price_code) { price_code 'BARGAIN' } 

  factory :regular_price_song, traits: [:regular_price_code]
  factory :new_release_price_song, traits: [:new_release_price_code]
  factory :bargain_price_song, traits: [:bargain_price_code]
 end
end

FactoryGirl.define do
 factory :download do
  initialize_with do 
   Download.new( FactoryGirl.build(:regular_price_song) ) 
  end
  
  #trait(:bargain_price_code) { price_code 'BARGAIN' } 
  #factory :bargain_price_song, traits: [:bargain_price_code]
 end
 factory :killers_song_download, class: Download do
  initialize_with do 
   Download.new( FactoryGirl.build(:killers_song) ) 
  end
 end
 factory :sinatra_song_download, class: Download do
  initialize_with do 
   Download.new( FactoryGirl.build(:sinatra_song) ) 
  end
 end
 factory :blind_melon_song_download, class: Download do
  initialize_with do 
   Download.new( FactoryGirl.build(:blind_melon_song) ) 
  end
 end
end

FactoryGirl.define do
 factory :customer do
  initialize_with do 
   Customer.new( 'Thom Yorke' ) 
  end
    
  factory :one_download_customer do
   after(:build) { |c| c.add_download FactoryGirl.build(:download) }
  end

  factory :three_downloads_customer do
   after(:build) do |c| 
    c.add_download FactoryGirl.build(:killers_song_download) 
    c.add_download FactoryGirl.build(:sinatra_song_download) 
    c.add_download FactoryGirl.build(:blind_melon_song_download) 
   end
  end
 end
end

FactoryGirl.define do
 factory :customer do
  initialize_with do 
   Customer.new( 'Thom Yorke' ) 
  end
    
  factory :one_download_customer do
   after(:build) { |c| c.add_download FactoryGirl.build(:song) }
  end

  factory :three_downloads_customer do
   after(:build) do |c| 
    c.add_download FactoryGirl.build(:killers_song) 
    c.add_download FactoryGirl.build(:sinatra_song) 
    c.add_download FactoryGirl.build(:blind_melon_song) 
   end
  end
 end
end

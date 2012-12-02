FactoryGirl.define do
 factory :customer do
  initialize_with do 
   Customer.new( 'Thom Yorke' ) 
  end
    
  factory :one_download_customer do
   after(:build) { |c| c.add_download FactoryGirl.build(:song) }
  end
 end
end

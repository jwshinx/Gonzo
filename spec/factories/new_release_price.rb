FactoryGirl.define do
 factory :new_release_price do
  initialize_with do 
   NewReleasePrice.new
  end
 end
end

FactoryGirl.define do
 factory :killers_song, class: Song do
  initialize_with { Song.new( 'Mr. Brightside', 3)} 
 end
 factory :blind_melon_song, class: Song do
  initialize_with { Song.new( 'No Rain', 1) } 
 end
 factory :sinatra_song, class: Song do
  initialize_with { Song.new( 'Chicago', 2) } 
 end
 factory :song do
  initialize_with { Song.new( 'Stand', 2) } 
  
  trait(:regular_price_code) { price_code 2 } 
  trait(:new_release_price_code) { price_code 3 } 
  trait(:bargain_price_code) { price_code 1 } 

  factory :regular_price_song, traits: [:regular_price_code]
  factory :new_release_price_song, traits: [:new_release_price_code]
  factory :bargain_price_song, traits: [:bargain_price_code]

=begin
  trait(:mr_brightside) { title 'Mr. Brightside' } 
  trait(:dancing_queen) { title 'Dancing Queen' } 
  trait(:no_rain) { title 'No Rain' } 
  factory :killers_song,     traits: [:new_release_price_code, 
                                      :mr_brightside]
  factory :abba_song,        traits: [:regular_price_code, 
                                      :dancing_queen]
  factory :blind_melon_song, traits: [:bargain_price_code, 
                                      :no_rain]
=end
 end
end

require 'spec_helper'
#require 'world'

describe "Song" do
 #include World

 describe "normally" do
  #let(:song) { FactoryGirl.build( :song ) }
  let(:song) { FactoryGirl.build( :sinatra_song ) }
  it { song.title.should == 'Chicago' }
  it { song.price_code.should == 'REGULAR' }
 end
 describe "when new release" do
  let(:song) { FactoryGirl.build( :new_release_price_song ) }
  it { song.title.should == 'Stand' }
  it { song.price_code.should == 'NEW_RELEASE' }
 end
 describe "when bargain" do
  let(:song) { FactoryGirl.build( :bargain_price_song ) }
  it { song.title.should == 'Stand' }
  it { song.price_code.should == 'BARGAIN' }
 end
end


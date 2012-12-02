require 'spec_helper'

describe "Download" do

 describe "normally" do
  let(:download) { FactoryGirl.build( :download ) }
  it { download.song.title.should == 'Stand' }
 end
 describe "Killers song" do
  let(:download) { FactoryGirl.build( :killers_song_download ) }
  it { download.song.title.should == 'Mr. Brightside' }
  it { download.song.price_code.should == Song::NEW_RELEASE }
 end
 describe "Sinatra song" do
  let(:download) { FactoryGirl.build( :sinatra_song_download ) }
  it { download.song.title.should == 'Chicago' }
  it { download.song.price_code.should == Song::REGULAR }
 end
 describe "Blind Melon song" do
  let(:download) { FactoryGirl.build( :blind_melon_song_download ) }
  it { download.song.title.should == 'No Rain' }
  it { download.song.price_code.should == Song::BARGAIN }
 end

end


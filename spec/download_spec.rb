require 'spec_helper'

describe "Download" do

 describe "normally" do
  let(:download) { FactoryGirl.build( :download ) }
  it { download.song.title.should == 'Stand' }
 end

end


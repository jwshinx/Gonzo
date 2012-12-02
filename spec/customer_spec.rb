require 'spec_helper'

describe "Customer" do

 describe "normally" do
  let(:customer) { FactoryGirl.build( :customer ) }
  it { customer.name.should == 'Thom Yorke' }
  it { customer.downloads.length.should == 0 }
 end
 describe "with 1 download" do
  let(:c) { FactoryGirl.build( :one_download_customer ) }
  it { c.downloads.length.should == 1 }
  it { c.downloads.first.title.should == "Stand" }
 end
 describe "with 3 downloads" do
  let(:c) { FactoryGirl.build( :three_downloads_customer ) }
  it { c.downloads.length.should == 3 }
  it "should include 'No Rain'" do 
   c.downloads.map(&:title).include?( "No Rain" ).should be_true 
  end
  it "should include 'Mr. Brightside'" do 
   c.downloads.map(&:title).include?( "Mr. Brightside" ).should be_true 
  end
  it "should include 'Chicago'" do 
   c.downloads.map(&:title).include?( "Chicago" ).should be_true 
  end
 end
end


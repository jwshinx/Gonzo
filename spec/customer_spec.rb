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
  it { c.downloads.first.song.title.should == "Stand" }
  it { c.downloads.first.song.price_code.should == 2 }
 end

 describe "with 3 downloads" do
  let(:c) { FactoryGirl.build( :three_downloads_customer ) }
  it { c.downloads.length.should == 3 }
  it "should include 'No Rain'" do 
   c.downloads.map{|d| d.song.title}.include?( "No Rain" )
    .should be_true 
  end
  it "should include 'Mr. Brightside'" do 
   c.downloads.map{|d| d.song.title}.include?( "Mr. Brightside" )
    .should be_true 
  end
  it "should include 'Chicago'" do 
   c.downloads.map{|d| d.song.title}.include?( "Chicago" )
    .should be_true 
  end
  it "returns summary information" do
   result = "\nDownload Records for Thom Yorke\n" +
            "\tMr. Brightside 3\n" +
            "\tChicago 2\n" +
            "\tNo Rain 1\n" +
            "Amount owed is 6\n" +
            "You earned 2 points"
   c.statement.should == result
  end
 end
end


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
end


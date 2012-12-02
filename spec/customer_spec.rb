require 'spec_helper'

describe "Customer" do

 describe "normally" do
  let(:customer) { FactoryGirl.build( :customer ) }
  it { customer.name.should == 'Thom Yorke' }
  it { customer.downloads.length.should == 0 }
 end
end


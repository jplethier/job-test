require 'spec_helper'

describe Contact do
  let(:contact) { FactoryGirl.build :contact }

  its(:valid?) { should be_true }

  describe 'methods' do
    it 'complete_name' do
      contact.first_name = 'First Name'
      contact.last_name = 'Last Name'
      contact.complete_name.should == 'First Name Last Name'
    end
  end
end

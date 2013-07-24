require 'spec_helper'

describe 'Contacts Index' do
  subject { page }

  before do
    7.times do
      FactoryGirl.create :contact
    end
  end

  it 'show all contacts' do
    visit contacts_path
    should_not have_css('.pagination')
  end

  it 'show 5 contacts' do
    visit contacts_path+"?per_page=5"
    should have_css('.pagination')
  end
end

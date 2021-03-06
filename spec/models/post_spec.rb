require 'rails_helper'

describe Post, type: :model do
  it 'should have a valid factory' do
    expect(build_stubbed :post).to be_valid
  end

  it { is_expected.to have_and_belong_to_many(:images) }

end

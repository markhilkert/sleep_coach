require 'rails_helper'

RSpec.describe Sleep do
  context 'associations' do
    it { is_expected.to have_one :alcohol }
  end
end
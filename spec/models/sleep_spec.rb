require 'rails_helper'

RSpec.describe Sleep do
  context 'associations' do
    it { is_expected.to have_one :alcohol }
    it { is_expected.to have_one :caffeine }
    it { is_expected.to have_one :late_meal }
    it { is_expected.to have_one :morning_sun }
    it { is_expected.to have_one :relax }

    it { is_expected.to have_many :exercises }
    it { is_expected.to have_many :naps }

    it { is_expected.to belong_to :user }
  end

  describe '#friendly_sleep_time' do
    let(:sleep) { create(:sleep) }

    subject(:friendly_sleep_time) do
      sleep.friendly_sleep_time
    end

    context 'when the time is less than one minute' do
      it do
        sleep.end_time = sleep.start_time + 30.seconds
        expect(friendly_sleep_time).to eq "no time"
      end
    end

    context 'when the time is exactly one minute' do
      it do
        sleep.end_time = sleep.start_time + 1.minute
        expect(friendly_sleep_time).to eq "1 Minute"
      end
    end

    context 'when the time more than a minute but less than an hour' do
      it do
        sleep.end_time = sleep.start_time + 5.minutes
        expect(friendly_sleep_time).to eq "5 Minutes"
      end
    end

    context 'when the time is exactly one hour' do
      it do
        sleep.end_time = sleep.start_time + 1.hour
        expect(friendly_sleep_time).to eq "1 Hour"
      end
    end

    context 'when hours and minutes are greater than 1' do
      it do
        sleep.end_time = sleep.start_time + 2.hours + 12.minutes
        expect(friendly_sleep_time).to eq "2 Hours, 12 Minutes"
      end
    end
  end
end

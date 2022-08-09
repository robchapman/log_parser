# frozen_string_literal: true

require_relative '../log'

RSpec.describe Log do
  context 'a correct log file is provided' do
    let(:log_dir) { './logs/test_log.log' }
    let(:log) { Log.new(log_dir) }

    it 'initializes all lines as array of view hashes' do
      expect(log.views).to be_a(Array)
      expect(log.views.first).to be_a(Hash)
    end

    it 'returns page visits in correct format' do
      expect(log.page_view_list).to be_a(Array)
      expect(log.page_view_list.first).to be_a(Array)
    end

    it 'returns page visit count correctly' do
      expect(log.page_view_list.map(&:first)).to eq(['/about', '/home', '/contact'])
      expect(log.page_view_list.map(&:last)).to eq([6, 5, 4])
    end

    it 'returns unique page visits in correct format' do
      expect(log.unique_page_view_list).to be_a(Array)
      expect(log.unique_page_view_list.first).to be_a(Array)
    end

    it 'returns unique page visit count correctly' do
      expect(log.unique_page_view_list.map(&:first)).to eq(['/home', '/about', '/contact'])
      expect(log.unique_page_view_list.map(&:last)).to eq([3, 2, 1])
    end
  end
end

require_relative '../lib/scrapper.rb'

describe Scraper do
  let(:course) { Scraper.new }
  describe '#course_get' do
    it 'return an array after running method' do
      expect(course.course_get).to be_a(Array)
    end
  end
end

require_relative '../lib/scrapper.rb'

describe Scraper do
  let(:course) { Scraper.new }
  describe '#course_get' do
    it 'return an array after running method' do
      expect(course.course_get).to be_a(Array)
    end
  end
  describe '#course_hashing' do
    it 'return an object when xml is passed through it' do
      expect(course.course_hashing(course.container[0])).to be_a(Hash)
    end
    it 'return an error when no argument is passed' do
      expect { course.course_hashing }.to raise_error ArgumentError
    end
  end
end

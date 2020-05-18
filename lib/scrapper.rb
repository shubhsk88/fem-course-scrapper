require 'open-uri'
require 'nokogiri'

class Scraper
  def initialize
    doc = open('https://frontendmasters.com/courses/')

    @parse_page = Nokogiri::HTML(doc)
  end

  def course_hashing(course_list)
    {
      course_name: course_list.css('.title').text,
      instructor: course_list.css('.Instructor').css('.name').text,
      organization: course_list.css('.Instructor').css('.organization').text,
      details: course_list.css('.description').text,
      duration: course_list.css('.meta').text

    }
  end

  def course_get
    courses = []
    courses_list = container

    courses_list.each do |course_list|
      course = course_hashing(course_list)
      courses.push(course)
    end
    courses
  end

  def container
    @parse_page.css('.s-vflex-inner')
  end
end

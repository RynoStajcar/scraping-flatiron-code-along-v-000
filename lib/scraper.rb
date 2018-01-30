require 'nokogiri'
require 'open-uri'
require 'pry'
require_relative './course.rb'

class Scraper

    def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end

  def get_page
    html = open('http://learn-co-curriculum.github.io/site-for-scraping/courses')
    doc = Nokogiri::HTML(html)
  end

  def get_courses
    html = open('http://learn-co-curriculum.github.io/site-for-scraping/courses')
    doc = Nokogiri::HTML(html)
    doc.css(".post")
  end

  def make_courses
    new_course = []
    get_courses.collect do |course|
    course = Course.new
    course.title = course.css("h2").text

    end
  end

end

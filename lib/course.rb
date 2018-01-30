class Course
  attr_accessor :title, :schedule, :discription

  @@all = []

  def self.reset_all
    @@all.clear
  end

end

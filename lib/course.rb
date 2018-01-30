class Course
  attr_accessor :title, :schedule, :discription

  @@all = []

  def reset_all
    @@all.clear
  end

end

class Student

  attr_accessor :id, :first_name, :last_name, :email, :phone, :short_bio, :twitter, :blog_url, :resume_url, :github_url, :photo_url, :user_id, :educations, :experiences, :capstones, :skills

  def initialize(student_data)
    @id = student_data["id"]
    @first_name = student_data["first_name"]
    @last_name = student_data["last_name"]
    @email = student_data["email"]
    @phone = student_data["phone"]
    @short_bio = student_data["short_bio"]
    @twitter = student_data["twitter"]
    @blog_url = student_data["blog_url"]
    @resume_url = student_data["resume_url"]
    @github_url = student_data["github_url"]
    @photo_url = student_data["photo_url"]
    @user_id = student_data["user_id"]
    @educations = student_data["educations"]
    @experiences = student_data["experiences"]
    @capstones = student_data["capstones"]
    @skills = student_data["skills"]
  end





  # Class Methods

  def self.all
    student_data_hashes = Unirest.get("http://172.28.113.208:3000/students.json").body
    students = []
    student_data_hashes.each do |student_data_hash|
      students << Student.new(student_data_hash)
    end
    students
  end

  def self.find_by(student_data)
    id = student_data[:id]
    student_data_hash = Unirest.get("http://172.28.113.208:3000/students/#{id}.json").body
    Student.new(student_data_hash)
  end


end
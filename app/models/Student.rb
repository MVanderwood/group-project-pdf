class Student














  # Class Methods

  def self.all
    student_data_hashes = Unirest.get("http://172.28.113.208:3000/students.json").body
    students = []
    student_data_hashes.each do |student_data_hash|
      students << Student.new(student_data_hash)
    end
  end


end
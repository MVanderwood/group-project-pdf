class Resume < Prawn::Document
  def initialize(resume_data)
    super()
    @resume_data = resume_data
    header
    experience
    education
    skills
    capstone
  end

  def header
    font("Helvetica", size: 18, style: :bold_italic)
    text "#{@resume_data[:first_name]} #{@resume_data[:last_name]}"
    text "Phone: #{@resume_data[:phone]}"
    text "Email: #{@resume_data[:email]}"
  end

  def experience
    y_position = cursor - 50
    bounding_box([0, y_position], :width => 270, :height => 50) do
      font("Helvetica", size: 12, style: :italic)
      text 'Experience:'
      @resume_data[:experiences].each do |experience|
        text "#{experience[:company].capitalize}: #{experience[:job_title]}"
      end
    end
  end

  def education
    y_position = cursor - 50
    bounding_box([0, y_position], :width => 270, :height => 50) do
      font("Helvetica", size: 12, style: :italic)
      text 'Education:'
      @resume_data[:educations].each do |education|
        text "#{education[:school].capitalize}: #{education[:degree]}"
      end
    end
  end

  def skills
    y_position = cursor - 50
    bounding_box([0, y_position], :width => 270, :height => 50) do
      font("Helvetica", size: 12, style: :italic)
      text 'Skills:'
      @resume_data[:skills].each do |skill|
        text "#{skill[:skill_name].capitalize}"
      end
    end
  end

  def capstone
    y_position = cursor - 50
    bounding_box([0, y_position], :width => 270, :height => 50) do
      font("Helvetica", size: 12, style: :italic)
      text 'Capstones:'
      @resume_data[:capstones].each do |capstone|
        text "#{capstone[:name].capitalize}: #{capstone[:description]}"
      end
    end
  end
end
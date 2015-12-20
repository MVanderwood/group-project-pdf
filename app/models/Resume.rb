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
    text "header"
  end

  def experience
    font("Helvetica", size: 12, style: :italic)
    text 'Experience:'
    @resume_data[:experiences].each do |experience|
      text "#{experience[:company].capitalize}: #{experience[:job_title]}"
    end
  end

  def education
    font("Helvetica", size: 12, style: :italic)
    text 'Education:'
    @resume_data[:educations].each do |education|
      text "#{education[:school].capitalize}: #{education[:degree]}"
    end
  end

  def skills
    font("Helvetica", size: 12, style: :italic)
    text 'Skills:'
    @resume_data[:skills].each do |skill|
      text "#{skill[:skill_name].capitalize}"
    end
  end

  def capstone
    font("Helvetica", size: 12, style: :italic)
    text 'Capstones:'
    @resume_data[:capstones].each do |capstone|
      text "#{capstone[:name].capitalize}: #{capstone[:description]}"
    end
  end
end
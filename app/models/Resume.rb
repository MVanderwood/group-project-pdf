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

  end

  def education

  end

  def skills
    font("Helvetica", size: 12, style: :italic)
    text 'Skills:'
    @resume_data[:skills].each do |skill|
      text "#{skill[:skill_name].capitalize}"
    end

  end

  def capstone

  end
end
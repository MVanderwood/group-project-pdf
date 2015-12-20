class Resume < Prawn::Document
  def initialize(resume_data)
    super()
    resume_data = resume_data
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

  end

  def capstone

  end
end
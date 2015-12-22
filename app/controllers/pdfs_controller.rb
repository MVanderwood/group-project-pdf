class PdfsController < ApplicationController
  def show
    respond_to do |format|
      format.html
      format.pdf do
        pdf = Resume.new(Student.find_by(id: params[:id]), params)
        send_data pdf.render, filename: 'resume.pdf', type: 'application/pdf', disposition: "inline"
      end
    end
  end

  def edit
    @student = Student.find_by(id: params[:id])
  end

  def update
    # redirect_to "/resumes/1.pdf"

    respond_to do |format|
      format.html
      format.pdf do
        pdf = Resume.new(Student.find_by(id: params[:id]), params)
        send_data pdf.render, filename: 'resume.pdf', type: 'application/pdf', disposition: "inline"
      end
    end
    # render :edit
    # redirect_to "/resumes/1.pdf"
  end
end
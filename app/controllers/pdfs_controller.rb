class PdfsController < ApplicationController
  def show
    respond_to do |format|
      format.html
      format.pdf do
        pdf = Resume.new(Student.find_by(id: params[:id]))
        send_data pdf.render, filename: 'resume.pdf', type: 'application/pdf', disposition: "inline"
      end
    end
  end

end

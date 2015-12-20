class PdfsController < ApplicationController
  def show
    respond_to do |format|
      format.html
      format.pdf do
        pdf = Resume.new({first_name: "Andre 3000", last_name: "Smith", email: "andre3000@email.com",phone: "555-555-5555",
  student_id: 1,
  skills: [
    { skill_name: "rap" },
    { skill_name: "awesomeness" }
    ],
  experiences: [
    { 
      job_title: "music-maker",
      company: "Outkast"
    },
    {
      job_title: "actor",
      company: "Warner Bros"
    }
    ],
  educations: [
    {
      degree: "music-performance",
      school: "chill-university"
    },
    {
      degree: "performance-art",
      school: "depaul"
    }
    ],
  capstones: [
    {
      name: "hey-ya",
      description: "hit-song"
      },
    {
      name: "sorry-miss-jackson",
      description: "other-hit-song"
    }  
    ]
})
        send_data pdf.render, filename: 'resume.pdf', type: 'application/pdf', disposition: "inline"
      end
    end
  end

end

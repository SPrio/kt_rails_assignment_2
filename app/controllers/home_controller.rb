class HomeController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.csv { send_data get_data(User).to_csv }
      format.pdf do 
        @employees = get_data(Employee)
        pdf_file = GetPdf.new(@employees)
        send_data pdf_file.render, type: 'application/pdf' 
      end
    end  
  end

  def sending_mail
    if StudentMailer.send_mail( Student.new(email: "mahantasupriyo@gmail.com"), get_data(Student)).deliver
      generate_flash "The Email has been Sent"
    else
      generate_flash "Failed to send email"
    end
    redirect_to root_path
  end  

  def generate_flash(msg)
    flash[:notice] = msg
  end
  
  def get_data(model)
    @model = model.order(:name).all.limit 50 
  end
end

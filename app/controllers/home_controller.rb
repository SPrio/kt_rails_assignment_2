class HomeController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.csv { send_data get_data(User).to_csv }
      format.pdf { send_data Employee.to_pdf(get_data(Employee)) }
    end  
  end
  def sending_mail
    StudentMailer.send_mail(Student.new(email: "mahantasupriyo@gmail.com"),get_data(Student)).deliver
    redirect_to root_path
  end  
  def get_data(model)
    @model=model.order(:name).all.limit 50 
  end
end

class HomeController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.csv { send_data get_data(User).to_csv }
      format.pdf { send_data Employee.to_pdf(get_data(Employee)) }
    end  
  end
  def sending_mail
    @students = Student.order(:name).all.limit 50
    StudentMailer.send_mail(Student.new(email: "mahantasupriyo@gmail.com"),@students).deliver
    redirect_to root_path
  end  
  def get_data(model)
    @model=model.order(:name).all.limit 50 
  end
end

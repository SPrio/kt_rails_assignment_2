class HomeController < ApplicationController
  def index
    @users = User.order(:name).all.limit 50 
    @employees = Employee.order(:name).all.limit 50 
    respond_to do |format|
      format.html
      format.csv { send_data @users.to_csv }
      format.pdf { send_data Employee.to_pdf(@employees) }
    end  
  end
  def sending_mail
    @students = Student.order(:name).all.limit 50
    StudentMailer.send_mail(Student.new(email: 'mahantasupriyo@gmail.com'),@students).deliver
    redirect_to root_path
  end  
end

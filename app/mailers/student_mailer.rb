class StudentMailer < ApplicationMailer
  def send_mail(recipient, students)
    @recipient_student = recipient
    @students = students
    mail(to: @recipient_student.email, subject: "Student Records")
  end
end

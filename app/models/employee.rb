class Employee < ApplicationRecord  
  def self.to_pdf(employees)
    #puts self
    #employees = Employee.order(:name).all.limit 50
    Prawn::Document.new do
      data = Array.new(50, Array.new(4))
      #puts employees.all.each {|x| puts x}
      data = [employees.column_names.map(&:humanize)]
      employees.each do |employee|
        data.push([employee.id,employee.name,employee.email,employee.phone_number])
      end
      table(data)
    end.render
  end
end

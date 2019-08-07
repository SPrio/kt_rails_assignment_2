class GetPdf < Prawn::Document

  def initialize(employees)
    super()
    @employees = employees    
    table_content
  end

  def table_content
    data = Array.new(50, Array.new(4)) 
    data = [ @employees.column_names.map(&:humanize) ]
    @employees.each do |employee|
      data.push([ employee.id, employee.name, employee.email, employee.phone_number ])
    end
    table(data, header: true)
  end

end
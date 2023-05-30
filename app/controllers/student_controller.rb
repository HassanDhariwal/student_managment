class StudentController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])

  end

  def new
    @student = Student.new({:name => 'Enter your name', :father_name => 'Enter your Father Name '})
  end   

  def create
    @student = Student.new( 
    name: params[:student][:name],
    age: params[:student][:age], 
    father_name: params[:student][:father_name], 
    Phone_number: params[:student][:Phone_number],
    Email: params[:student][:Email],
    Blood_group: params[:student][:Blood_group],
    Created: params[:student][:Created],
    Updated: params[:student][:Updated]
    )
    if @student.save
      redirect_to student_index_path
    else
      render(new)
    end    
  end

end

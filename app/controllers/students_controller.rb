class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    # binding.pry
    @student = Student.find_by_id(params[:id])
  end

  def new
    # binding.pry
    @student = Student.new({:name => 'Enter your name', :father_name => 'Enter your Father Name ', age:"18"})
  end   

  def edit
    @student = Student.find_by_id(params[:id])
  end

  def create


    @student = Student.new( 
      name: params[:name],
      age: params[:age], 
      father_name: params[:father_name], 
      phone_number: params[:phone_number],
      email: params[:email],
      blood_group: params[:blood_group]
     )


    if @student.save
      redirect_to (students_index_path)
    else
      render('new')
    end    
  end

  


end

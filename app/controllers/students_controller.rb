class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    binding.pry
    @student = Student.find_by_id(params[:id])
  end

  def new
    # binding.pry
    @student = Student.new({:name => 'Enter your name', :father_name => 'Enter your Father Name ', age:"18"})
  end   

  def create
    # binding.pry

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
    # binding.pry
      redirect_to (student_index_path)
    else
      render('new')
    end    
  end

  


end

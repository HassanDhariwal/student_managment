class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find_by_id(params[:id])
  end

  def new
    # binding.pry
    @student = Student.new
  end   

  def edit
    @student = Student.find_by_id(params[:id])
  end

  def create
    # binding.pry
    @student = Student.new( 
      name: params[:name],
      age: params[:age], 
      father_name: params[:father_name], 
      phone_number: params[:phone_number],
      email: params[:email],
      blood_group: params[:blood_group],
      section_id: params[:section_id]
     )



    if @student.save
      redirect_to (students_index_path)
    else
      render('new')
    end    
  end
  
  def update
    # binding.pry 
    @student = Student.find_by_id(params[:id])

    if @student.update(
      name: params[:student][:name],
      age: params[:student][:age], 
      father_name: params[:student][:father_name], 
      phone_number: params[:student][:phone_number],
      email: params[:student][:email],
      blood_group: params[:student][:blood_group],
      section_id: params[:student][:section_id]
      )
      redirect_to @student
    else
      flash[:error] = "Student not found."
      render 'edit'
    end
  end

  def destroy
    @student = Student.find_by_id(params[:id])
    @student.destroy
    redirect_to (students_index_path)
  end  
end

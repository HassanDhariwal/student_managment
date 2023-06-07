class StudentsController < ApplicationController
  
  def index
    @students = Student.all
    @s_classes =StudentClass.all
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
    # binding.pry
    @student = Student.new( 
      name: params[:name],
      age: params[:age], 
      father_name: params[:father_name], 
      phone_number: params[:phone_number],
      email: params[:email],
      blood_group: params[:blood_group]
     )

    @s_classes = StudentClass.create(section_name: params[:section_name], teacher_name: params[:teacher_name], student_range: params[:student_range], grade: params[:grade])


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
      blood_group: params[:student][:blood_group]
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

  # StudentClass CRUD operations
  
  def student_class_index
    @s_classes = StudentClass.all
  end






end

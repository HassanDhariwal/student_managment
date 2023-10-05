class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end
  def search1
      # app/controllers/students_controller.rb
          query = params[:query]
      @students = Student.where("name LIKE ? OR age = ? OR phone_number LIKE ?  OR gender LIKE ?  OR email LIKE ? OR date_of_birth LIKE ? OR blood_group LIKE ? ",
                                "%#{query}%", query.to_i, "%#{query}%","%#{query}%","%#{query}%","%#{query}%" ,"%#{query}%")

      @sections = Section.where("name LIKE ? OR student_range LIKE ? ",
                                "%#{query}%","%#{query}%")

      @teachers = Teacher.where("name LIKE ? OR phone_number LIKE ?  OR gender LIKE ?  OR email LIKE ? OR date_of_birth LIKE ?  OR address	 LIKE ? OR qualification LIKE ? OR subject LIKE ?",
                                "%#{query}%", "%#{query}%","%#{query}%","%#{query}%" ,"%#{query}%" ,"%#{query}%","%#{query}%","%#{query}%")
  end
  def search
    query = params[:query]
    @students = Student.where("name LIKE ? OR age = ? OR phone_number LIKE ?  OR gender LIKE ?  OR email LIKE ? OR date_of_birth LIKE ? OR blood_group LIKE ? ",
                              "%#{query}%", query.to_i, "%#{query}%","%#{query}%","%#{query}%","%#{query}%" ,"%#{query}%")
  end


  def show
    @student = Student.find_by_id(params[:id])
  end

  def new
    # binding.pry
    @student = Student.new
  end   


  def create
     # binding.pry
      @student = Student.new(
       #here name: is key and params is object params[:name] would retrun the value
        name: params[:name],
        age: params[:age],
        father_name: params[:father_name],
        phone_number: params[:phone_number],
          email: params[:email],
        guardian_no: params[:guardian_no],
        gender: params[:gender],
        date_of_birth: params[:date_of_birth],
        blood_group: params[:blood_group],
        section_id: params[:section_id]
       )

    if @student.save
      redirect_to (students_path)
    else
      render('new')
    end
  end

  def edit
    # binding.pry
    @student = Student.find_by_id(params[:id])
    # binding.pry
    # binding.pry
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
      guardian_no: params[:student][:guardian_no],
      date_of_birth: params[:student][:date_of_birth],
      gender: params[:student][:gender],
      blood_group: params[:student][:blood_group],
      section_id: params[:student][:section_id],
    )
      redirect_to @student
      # binding.pry
    else
      # binding.pry
      flash[:error] = "Student not found."
      render 'show'
    end
  end

  def destroy
    @student = Student.find_by_id(params[:id])
    @student.destroy
    redirect_to (students_path)
  end
end

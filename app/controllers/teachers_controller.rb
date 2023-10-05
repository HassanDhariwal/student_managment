class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
  end
  def search
    query = params[:query]

    @teachers = Teacher.where("name LIKE ? OR phone_number LIKE ?  OR gender LIKE ?  OR email LIKE ? OR date_of_birth LIKE ?  OR address	 LIKE ? OR qualification LIKE ? OR subject LIKE ?",
                              "%#{query}%", "%#{query}%","%#{query}%","%#{query}%" ,"%#{query}%" ,"%#{query}%","%#{query}%","%#{query}%")
  end
  
  def show
    @teacher = Teacher.find_by_id(params[:id])
  end

  def new
    @teacher = Teacher.new
  end

  def edit
    @teacher = Teacher.find_by_id(params[:id])
  end
  

  
  def create

    @teacher  = Teacher.new( 
      name: params[:name],
      phone_number: params[:phone_number],
      email: params[:email],
      gender: params[ :gender],
      date_of_birth: params[ :date_of_birth],
      address: params[:address],
      qualification: params[:qualification],
      subject: params[:subject]
)
    @teacher.errors
    if @teacher.save
      redirect_to (teachers_index_path)
    else
      render('new')
    end    
  end

  def update
      @teacher = Teacher.find_by_id(params[:id])
    
    if @teacher.update( 
        name: params[:teacher][:name],
        phone_number: params[:teacher][:phone_number],
        email: params[:teacher][:email],
        gender: params[:teacher][ :gender],
        date_of_birth: params[:teacher][ :date_of_birth],
        address: params[:teacher][:address],
        qualification: params[:teacher][:qualification],
        subject: params[:teacher][:subject]
)
    redirect_to @teacher
    else
      flash[:error] = "Teacher not found."
      render 'edit'
    end

  end

  def destroy
    @teacher = Teacher.find_by_id(params[:id])
    @teacher.destroy
    redirect_to teachers_path
  end
end

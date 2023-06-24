class SectionsController < ApplicationController
  def index
    @sections = Section.all  
  end

  def show
    # binding.pry
    @section = Section.find_by_id(params[:id])
  end

  def new
    @section = Section.new
  end

  def create
      @section = Section.new( 
        name: params[:name],
        student_range: params[:student_range] 
             )
      if @section.save
        redirect_to (sections_index_path)
      else
        render('new')
      end    
    end

  def edit
    @section = Section.find_by_id(params[:id])
  end

  def update
      @section = Section.find_by_id(params[:id])

      if @section.update(
        name: params[:section][:name],
        student_range: params[:section][:student_range], 
        )
        redirect_to @section
      else
        flash[:error] = "Section not found."
        render 'edit'
      end
    end
    def destroy
    @section = Section.find_by_id(params[:id])
    @section.destroy
    redirect_to (sections_index_path)
  end
end

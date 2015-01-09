class FutsalMainsController < ApplicationController

	def new 
		@futsal_main = FutsalMain.new
	end

  def create 
    @futsal_main = FutsalMain.new(params[:futsal_main])
    if @futsal_main.save
      redirect_to futsal_mains_path
    else
      redirect_to :back
    end
  end

  def index
    @futsal_mains = FutsalMain.all
  end

  def edit 
    @futsal_main=FutsalMain.find params[:id]
  end

  def destroy
   @futsal_main=FutsalMain.find params[:id]
   @futsal_main.destroy
   redirect_to futsal_mains_path 
  end

  def update
      @futsal_main=FutsalMain.find params[:id]
      @futsal_main.update_attributes params[:futsal_main] 
    if @futsal_main.save
      redirect_to futsal_mains_path
    end
  end

  # def add_branches
  #   @main=FutsalMain.find params[:id]
  #   @branch=@main.futsal_branches.new
  # end

  # def view_branches
  #    @main=FutsalMain.find params[:id]
  #    @branch=@main.futsal_branches.all 
  # end

end

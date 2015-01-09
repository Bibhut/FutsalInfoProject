class FutsalBranchesController < ApplicationController

	def new
    @futsal_main = FutsalMain.find params[:futsal_main_id]
		# @branch = FutsalBranch.new
    @branch = @futsal_main.futsal_branches.build
	end

  def index
    # binding.pry
     @futsal_main = FutsalMain.find params[:futsal_main_id]
     @branches=@futsal_main.futsal_branches
  end
	def create
    # binding.pry
    @futsal_main=FutsalMain.find params[:futsal_main_id]
    @futsal_main.futsal_branches.create params[:futsal_branch]
    redirect_to futsal_mains_path
    # @futsal = FutsalMain.where(params[:futsal_branch][:futsal_main_id]).first
    # @futsal.futsal_branches.create params[:futsal_branch]
		# @branch = params[:futsal_branch].except(:futsal_main_id)
		# redirect_to futsal_mains_path
	end

  def edit
    @futsal_main=FutsalMain.find params[:futsal_main_id]
    @branch=FutsalBranch.find params[:id]
  end

  def destroy
    @futsal_main=FutsalMain.find params[:futsal_main_id]
    @branch=FutsalBranch.find params[:id]
    @branch.destroy
    redirect_to futsal_main_futsal_branches_path
   end 

   def update
      @futsal_main=FutsalMain.find params[:futsal_main_id]
      @branch=FutsalBranch.find params[:id]
      @branch.update_attributes params[:futsal_branch] 
    if @branch.save
      redirect_to futsal_mains_path
    end
  end

end

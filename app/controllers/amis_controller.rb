class AmisController < ApplicationController
  def index
    @amis = Ami.all
  end

  def new
    @ami = Ami.new
  end

  def create
    @ami = Ami.new(ami_params)
    if @ami.save!
    redirect_to root_path
    end
  end

  def edit
    @ami = Ami.find(params[:id])
  end

  def update
    @ami = Ami.find(params[:id])
    @ami.update(ami_params)
    redirect_to amis_path
  end

  def destroy
    @ami = Ami.find(params[:id])
    @ami.destroy
    redirect_to amis_path
  end

  private

  def ami_params
    params.require(:ami).permit(:nom, :prenom, :mail, :adresse, :telephone, :adhesion, :category_id)
  end
end

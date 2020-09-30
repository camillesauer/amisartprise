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

  private

  def ami_params
    params.require(:ami).permit(:nom, :prenom, :mail, :adresse, :telephone, :adhesion, :category_id)
  end
end

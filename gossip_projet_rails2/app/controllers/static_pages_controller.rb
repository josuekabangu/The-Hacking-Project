class StaticPagesController < ApplicationController

  # View a list of gossips
  def home
    @gossips = Gossip.all
  end

  def gossip
    @gossip = Gossip.find(params[:id])
  end  

  def team
  end

  def contact
  end

  def welcome
  end
  def user
    @user = User.find(params[:id])
  end
end

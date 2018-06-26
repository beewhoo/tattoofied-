class ArtistsController < ApplicationController

  before_action :load_profile, only:[:show, :edit, :update, :destroy]

  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new
    @artist.email = params[:artist][:email]
    @artist.city = params[:artist][:city]
    @artist.password = params[:artist][:password]
    @artist.password_confirmation = params[:artist][:password_confirmation]
    @artist.main_picture = params[:artist][:main_picture]

    if @artist.save
      flash[:success] = "Success - Please complete your profile"
      redirect_to edit_artist_path(@artist)
    else
      render :new
    end

  end

  def show
  end

  def edit
  end

  def update
    @artist.email = params[:artist][:email]
    @artist.city = params[:artist][:city]
    @artist.name = params[:artist][:name]
    @artist.instagram = params[:artist][:instagram]
    @artist.phone_number = params[:artist][:phone_number]



    if @artist.save
      flash[:success] = "Updated"
      redirect_to artist_path
    else
      render :new
    end

  end

  def destroy
  end


  def load_profile
    @artist = Artist.find(params[:id])
  end

end

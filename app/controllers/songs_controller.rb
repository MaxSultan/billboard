class SongsController < ApplicationController
  before_action :set_artist
  def index
    @songs = @artist.songs.all 
  end

  def show
    @songs = @artist.song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = @artist.songs.new(song_params)
    if @song.save
      redirect_to @artist
    else 
      render :new
    end
  end 

  def edit
  end

  def update
  end 

  def destroy
    @song = Song.find(params[:id]).destroy
    redirect_to 
  end

  private 
  def set_artist
    @artist = Artist.find(params[:artist_id])
  end 

  def set_list
    @list = List.find(params[:list_id])
  end 

  def song_params
    params.require(:song).permit(:name, :time)
  end 
end

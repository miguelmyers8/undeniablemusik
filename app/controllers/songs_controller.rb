class SongsController < ApplicationController

  def index
    @song = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params)
    #@song =  @song.save
    redirect_to songs_path
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def song_params
      params.require(:song).permit(:audio, :caption)
    end
end

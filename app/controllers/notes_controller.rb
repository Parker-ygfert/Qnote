class NotesController < ApplicationController

  include NotFound

  before_action :find_user, only: [:show]
  
  def show
    @notes = Note.where(id: @user[:id])
  end


  def new
    @note = Note.new
  end
  
  def create
    @note = Note.new(note_params)

    if @note.save
      redirect_to note_path(@user), notice: "筆記已建立"
    else
      render :new
    end
  end



  private
  def find_user
    @user = User.find(params[:id])
  end
  
end
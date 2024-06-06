class Clips::Lives::Bonus::ConcertsClipsController < ApplicationController
  before_action :set_clips_lives_bonus_concerts_clip, only: %i[ show edit update destroy ]

  # GET /_clips_/_lives_/_bonus_/_concerts_clips or /_clips_/_lives_/_bonus_/_concerts_clips.json
  def index
    @_clips_lives_bonus_concerts_clips = Clips::Lives::Bonus::ConcertsClip.all
  end

  # GET /_clips_/_lives_/_bonus_/_concerts_clips/1 or /_clips_/_lives_/_bonus_/_concerts_clips/1.json
  def show
  end

  # GET /_clips_/_lives_/_bonus_/_concerts_clips/new
  def new
    @_clips_lives_bonus_concerts_clip = Clips::Lives::Bonus::ConcertsClip.new
  end

  # GET /_clips_/_lives_/_bonus_/_concerts_clips/1/edit
  def edit
  end

  # POST /_clips_/_lives_/_bonus_/_concerts_clips or /_clips_/_lives_/_bonus_/_concerts_clips.json
  def create
    @_clips_lives_bonus_concerts_clip = Clips::Lives::Bonus::ConcertsClip.new(_clips_lives_bonus_concerts_clip_params)

    respond_to do |format|
      if @_clips_lives_bonus_concerts_clip.save
        format.html { redirect_to _clips_lives_bonus_concerts_clip_url(@_clips_lives_bonus_concerts_clip), notice: "Concerts clip was successfully created." }
        format.json { render :show, status: :created, location: @_clips_lives_bonus_concerts_clip }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_clips_lives_bonus_concerts_clip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_clips_/_lives_/_bonus_/_concerts_clips/1 or /_clips_/_lives_/_bonus_/_concerts_clips/1.json
  def update
    respond_to do |format|
      if @_clips_lives_bonus_concerts_clip.update(_clips_lives_bonus_concerts_clip_params)
        format.html { redirect_to _clips_lives_bonus_concerts_clip_url(@_clips_lives_bonus_concerts_clip), notice: "Concerts clip was successfully updated." }
        format.json { render :show, status: :ok, location: @_clips_lives_bonus_concerts_clip }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_clips_lives_bonus_concerts_clip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_clips_/_lives_/_bonus_/_concerts_clips/1 or /_clips_/_lives_/_bonus_/_concerts_clips/1.json
  def destroy
    @_clips_lives_bonus_concerts_clip.destroy!

    respond_to do |format|
      format.html { redirect_to _clips_lives_bonus_concerts_clips_url, notice: "Concerts clip was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clips_lives_bonus_concerts_clip
      @_clips_lives_bonus_concerts_clip = Clips::Lives::Bonus::ConcertsClip.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _clips_lives_bonus_concerts_clip_params
      params.require(:_clips_lives_bonus_concerts_clip).permit(:name)
    end
end

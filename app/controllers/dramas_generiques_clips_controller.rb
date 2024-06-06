class DramasGeneriquesClipsController < ApplicationController
  before_action :set__dramas_generiques_clip, only: %i[ show edit update destroy ]

  # GET /_dramas_generiques_clips or /_dramas_generiques_clips.json
  def index
    @_dramas_generiques_clips = DramasGeneriquesClip.all
  end

  # GET /_dramas_generiques_clips/1 or /_dramas_generiques_clips/1.json
  def show
  end

  # GET /_dramas_generiques_clips/new
  def new
    @_dramas_generiques_clip = DramasGeneriquesClip.new
  end

  # GET /_dramas_generiques_clips/1/edit
  def edit
  end

  # POST /_dramas_generiques_clips or /_dramas_generiques_clips.json
  def create
    @_dramas_generiques_clip = DramasGeneriquesClip.new(_dramas_generiques_clip_params)

    respond_to do |format|
      if @_dramas_generiques_clip.save
        format.html { redirect_to _dramas_generiques_clip_url(@_dramas_generiques_clip), notice: "Dramas generiques clip was successfully created." }
        format.json { render :show, status: :created, location: @_dramas_generiques_clip }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dramas_generiques_clip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dramas_generiques_clips/1 or /_dramas_generiques_clips/1.json
  def update
    respond_to do |format|
      if @_dramas_generiques_clip.update(_dramas_generiques_clip_params)
        format.html { redirect_to _dramas_generiques_clip_url(@_dramas_generiques_clip), notice: "Dramas generiques clip was successfully updated." }
        format.json { render :show, status: :ok, location: @_dramas_generiques_clip }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dramas_generiques_clip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dramas_generiques_clips/1 or /_dramas_generiques_clips/1.json
  def destroy
    @_dramas_generiques_clip.destroy!

    respond_to do |format|
      format.html { redirect_to _dramas_generiques_clips_url, notice: "Dramas generiques clip was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dramas_generiques_clip
      @_dramas_generiques_clip = DramasGeneriquesClip.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dramas_generiques_clip_params
      params.require(:_dramas_generiques_clip).permit(:name)
    end
end

class NumeroDemissionTvsClipsController < ApplicationController
  before_action :set__numero_demission_tvs_clip, only: %i[ show edit update destroy ]

  # GET /_numero_demission_tvs_clips or /_numero_demission_tvs_clips.json
  def index
    @_numero_demission_tvs_clips = NumeroDemissionTvsClip.all
  end

  # GET /_numero_demission_tvs_clips/1 or /_numero_demission_tvs_clips/1.json
  def show
  end

  # GET /_numero_demission_tvs_clips/new
  def new
    @_numero_demission_tvs_clip = NumeroDemissionTvsClip.new
  end

  # GET /_numero_demission_tvs_clips/1/edit
  def edit
  end

  # POST /_numero_demission_tvs_clips or /_numero_demission_tvs_clips.json
  def create
    @_numero_demission_tvs_clip = NumeroDemissionTvsClip.new(_numero_demission_tvs_clip_params)

    respond_to do |format|
      if @_numero_demission_tvs_clip.save
        format.html { redirect_to numero_demission_tvs_clip_url(@_numero_demission_tvs_clip), notice: "Numero demission tvs clip was successfully created." }
        format.json { render :show, status: :created, location: @_numero_demission_tvs_clip }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_numero_demission_tvs_clip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_numero_demission_tvs_clips/1 or /_numero_demission_tvs_clips/1.json
  def update
    respond_to do |format|
      if @_numero_demission_tvs_clip.update(_numero_demission_tvs_clip_params)
        format.html { redirect_to numero_demission_tvs_clip_url(@_numero_demission_tvs_clip), notice: "Numero demission tvs clip was successfully updated." }
        format.json { render :show, status: :ok, location: @_numero_demission_tvs_clip }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_numero_demission_tvs_clip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_numero_demission_tvs_clips/1 or /_numero_demission_tvs_clips/1.json
  def destroy
    @_numero_demission_tvs_clip.destroy!

    respond_to do |format|
      format.html { redirect_to numero_demission_tvs_clips_url, notice: "Numero demission tvs clip was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__numero_demission_tvs_clip
      @_numero_demission_tvs_clip = NumeroDemissionTvsClip.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _numero_demission_tvs_clip_params
      params.require(:numero_demission_tvs_clip).permit(:name)
    end
end

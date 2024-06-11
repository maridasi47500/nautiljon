class Clips::Lives::Bonus::ConcertsController < ApplicationController
  before_action :set_clips_lives_bonus_concert, only: %i[ show edit update destroy ]

  # GET /_clips_lives_bonus_concerts or /_clips_lives_bonus_concerts.json
  def agenda
    @concerts = Clips::Lives::Bonus::Concert.all
    
  end
  def index
    @_clips_lives_bonus_concerts = Clips::Lives::Bonus::Concert.all
  end

  # GET /_clips_lives_bonus_concerts/1 or /_clips_lives_bonus_concerts/1.json
  def show
  end

  # GET /_clips_lives_bonus_concerts/new
  def new
    @_clips_lives_bonus_concert = Clips::Lives::Bonus::Concert.new
  end

  # GET /_clips_lives_bonus_concerts/1/edit
  def edit
  end

  # POST /_clips_lives_bonus_concerts or /_clips_lives_bonus_concerts.json
  def create
    @_clips_lives_bonus_concert = Clips::Lives::Bonus::Concert.new(_clips_lives_bonus_concert_params)

    respond_to do |format|
      if @_clips_lives_bonus_concert.save
        format.html { redirect_to _clips_lives_bonus_concert_url(@_clips_lives_bonus_concert), notice: "Concert was successfully created." }
        format.json { render :show, status: :created, location: @_clips_lives_bonus_concert }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_clips_lives_bonus_concert.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_clips_lives_bonus_concerts/1 or /_clips_lives_bonus_concerts/1.json
  def update
    respond_to do |format|
      if @_clips_lives_bonus_concert.update(_clips_lives_bonus_concert_params)
        format.html { redirect_to clips_lives_bonus_concert_url(@_clips_lives_bonus_concert), notice: "Concert was successfully updated." }
        format.json { render :show, status: :ok, location: @_clips_lives_bonus_concert }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_clips_lives_bonus_concert.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_clips_lives_bonus_concerts/1 or /_clips_lives_bonus_concerts/1.json
  def destroy
    @_clips_lives_bonus_concert.destroy!

    respond_to do |format|
      format.html { redirect_to clips_lives_bonus_concerts_url, notice: "Concert was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clips_lives_bonus_concert
      @_clips_lives_bonus_concert = Clips::Lives::Bonus::Concert.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _clips_lives_bonus_concert_params
      params.require(:clips_lives_bonus_concert).permit(:_clips_lives_hbonus_concerts_type_id, :_clips_lives_hbonus_concerts_type_bonus_id, :titre, :titre_original, :date_jj, :date_mm, :date_aaaa, :_clips_lives_bonus_concerts_role_id, :_clips_lives_bonus_concerts_people_id, :_clips_lives_bonus_concerts_role_id, :_clips_lives_bonus_concerts_people_id, :image, :youtube, :infos, :_clips_lives_bonus_concerts_clip_id, :_clips_lives_bonus_concerts_emission_tv_numero_id, :comment, :statut_prop, :statut_prop, :acceptregles)
    end
end

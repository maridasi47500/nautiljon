class Clips::Lives::Bonus::ConcertsController < ApplicationController
  before_action :set__clips___lives___bonus___concert, only: %i[ show edit update destroy ]

  # GET /_clips_/_lives_/_bonus_/_concerts or /_clips_/_lives_/_bonus_/_concerts.json
  def index
    @_clips___lives___bonus___concerts = Clips::Lives::Bonus::Concert.all
  end

  # GET /_clips_/_lives_/_bonus_/_concerts/1 or /_clips_/_lives_/_bonus_/_concerts/1.json
  def show
  end

  # GET /_clips_/_lives_/_bonus_/_concerts/new
  def new
    @_clips___lives___bonus___concert = Clips::Lives::Bonus::Concert.new
  end

  # GET /_clips_/_lives_/_bonus_/_concerts/1/edit
  def edit
  end

  # POST /_clips_/_lives_/_bonus_/_concerts or /_clips_/_lives_/_bonus_/_concerts.json
  def create
    @_clips___lives___bonus___concert = Clips::Lives::Bonus::Concert.new(_clips___lives___bonus___concert_params)

    respond_to do |format|
      if @_clips___lives___bonus___concert.save
        format.html { redirect_to _clips___lives___bonus___concert_url(@_clips___lives___bonus___concert), notice: "Concert was successfully created." }
        format.json { render :show, status: :created, location: @_clips___lives___bonus___concert }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_clips___lives___bonus___concert.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_clips_/_lives_/_bonus_/_concerts/1 or /_clips_/_lives_/_bonus_/_concerts/1.json
  def update
    respond_to do |format|
      if @_clips___lives___bonus___concert.update(_clips___lives___bonus___concert_params)
        format.html { redirect_to _clips___lives___bonus___concert_url(@_clips___lives___bonus___concert), notice: "Concert was successfully updated." }
        format.json { render :show, status: :ok, location: @_clips___lives___bonus___concert }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_clips___lives___bonus___concert.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_clips_/_lives_/_bonus_/_concerts/1 or /_clips_/_lives_/_bonus_/_concerts/1.json
  def destroy
    @_clips___lives___bonus___concert.destroy!

    respond_to do |format|
      format.html { redirect_to _clips___lives___bonus___concerts_url, notice: "Concert was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__clips___lives___bonus___concert
      @_clips___lives___bonus___concert = Clips::Lives::Bonus::Concert.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _clips___lives___bonus___concert_params
      params.require(:_clips___lives___bonus___concert).permit(:_clips_/_lives_/_bonus_/_concerts_type_id, :_clips_/_lives_/_bonus_/_concerts_type_bonus_id, :titre, :titre_original, :date_jj, :date_mm, :date_aaaa, :_clips_/_lives_/_bonus_/_concerts_role_id, :_clips_/_lives_/_bonus_/_concerts_people_id, :_clips_/_lives_/_bonus_/_concerts_role_id, :_clips_/_lives_/_bonus_/_concerts_people_id, :image, :youtube, :infos, :_clips_/_lives_/_bonus_/_concerts_clip_id, :_clips_/_lives_/_bonus_/_concerts_emission_tv_numero_id, :comment, :statut_prop, :statut_prop, :acceptregles)
    end
end

class Clips::Lives::Bonus::ConcertsTypeBonusController < ApplicationController
  before_action :set__clips___lives___bonus___concerts_type_bonu, only: %i[ show edit update destroy ]

  # GET /_clips_/_lives_/_bonus_/_concerts_type_bonus or /_clips_/_lives_/_bonus_/_concerts_type_bonus.json
  def index
    @_clips___lives___bonus___concerts_type_bonus = Clips::Lives::Bonus::ConcertsTypeBonu.all
  end

  # GET /_clips_/_lives_/_bonus_/_concerts_type_bonus/1 or /_clips_/_lives_/_bonus_/_concerts_type_bonus/1.json
  def show
  end

  # GET /_clips_/_lives_/_bonus_/_concerts_type_bonus/new
  def new
    @_clips___lives___bonus___concerts_type_bonu = Clips::Lives::Bonus::ConcertsTypeBonu.new
  end

  # GET /_clips_/_lives_/_bonus_/_concerts_type_bonus/1/edit
  def edit
  end

  # POST /_clips_/_lives_/_bonus_/_concerts_type_bonus or /_clips_/_lives_/_bonus_/_concerts_type_bonus.json
  def create
    @_clips___lives___bonus___concerts_type_bonu = Clips::Lives::Bonus::ConcertsTypeBonu.new(_clips___lives___bonus___concerts_type_bonu_params)

    respond_to do |format|
      if @_clips___lives___bonus___concerts_type_bonu.save
        format.html { redirect_to _clips___lives___bonus___concerts_type_bonu_url(@_clips___lives___bonus___concerts_type_bonu), notice: "Concerts type bonu was successfully created." }
        format.json { render :show, status: :created, location: @_clips___lives___bonus___concerts_type_bonu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_clips___lives___bonus___concerts_type_bonu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_clips_/_lives_/_bonus_/_concerts_type_bonus/1 or /_clips_/_lives_/_bonus_/_concerts_type_bonus/1.json
  def update
    respond_to do |format|
      if @_clips___lives___bonus___concerts_type_bonu.update(_clips___lives___bonus___concerts_type_bonu_params)
        format.html { redirect_to _clips___lives___bonus___concerts_type_bonu_url(@_clips___lives___bonus___concerts_type_bonu), notice: "Concerts type bonu was successfully updated." }
        format.json { render :show, status: :ok, location: @_clips___lives___bonus___concerts_type_bonu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_clips___lives___bonus___concerts_type_bonu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_clips_/_lives_/_bonus_/_concerts_type_bonus/1 or /_clips_/_lives_/_bonus_/_concerts_type_bonus/1.json
  def destroy
    @_clips___lives___bonus___concerts_type_bonu.destroy!

    respond_to do |format|
      format.html { redirect_to _clips___lives___bonus___concerts_type_bonus_url, notice: "Concerts type bonu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__clips___lives___bonus___concerts_type_bonu
      @_clips___lives___bonus___concerts_type_bonu = Clips::Lives::Bonus::ConcertsTypeBonu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _clips___lives___bonus___concerts_type_bonu_params
      params.require(:_clips___lives___bonus___concerts_type_bonu).permit(:name)
    end
end

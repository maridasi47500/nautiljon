class Clips::Lives::Bonus::ConcertsTypesController < ApplicationController
  before_action :set__clips___lives___bonus___concerts_type, only: %i[ show edit update destroy ]

  # GET /_clips_/_lives_/_bonus_/_concerts_types or /_clips_/_lives_/_bonus_/_concerts_types.json
  def index
    @_clips___lives___bonus___concerts_types = Clips::Lives::Bonus::ConcertsType.all
  end

  # GET /_clips_/_lives_/_bonus_/_concerts_types/1 or /_clips_/_lives_/_bonus_/_concerts_types/1.json
  def show
  end

  # GET /_clips_/_lives_/_bonus_/_concerts_types/new
  def new
    @_clips___lives___bonus___concerts_type = Clips::Lives::Bonus::ConcertsType.new
  end

  # GET /_clips_/_lives_/_bonus_/_concerts_types/1/edit
  def edit
  end

  # POST /_clips_/_lives_/_bonus_/_concerts_types or /_clips_/_lives_/_bonus_/_concerts_types.json
  def create
    @_clips___lives___bonus___concerts_type = Clips::Lives::Bonus::ConcertsType.new(_clips___lives___bonus___concerts_type_params)

    respond_to do |format|
      if @_clips___lives___bonus___concerts_type.save
        format.html { redirect_to _clips___lives___bonus___concerts_type_url(@_clips___lives___bonus___concerts_type), notice: "Concerts type was successfully created." }
        format.json { render :show, status: :created, location: @_clips___lives___bonus___concerts_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_clips___lives___bonus___concerts_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_clips_/_lives_/_bonus_/_concerts_types/1 or /_clips_/_lives_/_bonus_/_concerts_types/1.json
  def update
    respond_to do |format|
      if @_clips___lives___bonus___concerts_type.update(_clips___lives___bonus___concerts_type_params)
        format.html { redirect_to _clips___lives___bonus___concerts_type_url(@_clips___lives___bonus___concerts_type), notice: "Concerts type was successfully updated." }
        format.json { render :show, status: :ok, location: @_clips___lives___bonus___concerts_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_clips___lives___bonus___concerts_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_clips_/_lives_/_bonus_/_concerts_types/1 or /_clips_/_lives_/_bonus_/_concerts_types/1.json
  def destroy
    @_clips___lives___bonus___concerts_type.destroy!

    respond_to do |format|
      format.html { redirect_to _clips___lives___bonus___concerts_types_url, notice: "Concerts type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__clips___lives___bonus___concerts_type
      @_clips___lives___bonus___concerts_type = Clips::Lives::Bonus::ConcertsType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _clips___lives___bonus___concerts_type_params
      params.require(:_clips___lives___bonus___concerts_type).permit(:name)
    end
end

class MangasAmPlusController < ApplicationController
  before_action :set__mangas_am_plu, only: %i[ show edit update destroy ]

  # GET /_mangas_am_plus or /_mangas_am_plus.json
  def index
    @_mangas_am_plus = MangasAmPlu.all
  end

  # GET /_mangas_am_plus/1 or /_mangas_am_plus/1.json
  def show
  end

  # GET /_mangas_am_plus/new
  def new
    @_mangas_am_plu = MangasAmPlu.new
  end

  # GET /_mangas_am_plus/1/edit
  def edit
  end

  # POST /_mangas_am_plus or /_mangas_am_plus.json
  def create
    @_mangas_am_plu = MangasAmPlu.new(_mangas_am_plu_params)

    respond_to do |format|
      if @_mangas_am_plu.save
        format.html { redirect_to mangas_am_plu_url(@_mangas_am_plu), notice: "Mangas am plu was successfully created." }
        format.json { render :show, status: :created, location: @_mangas_am_plu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_mangas_am_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_mangas_am_plus/1 or /_mangas_am_plus/1.json
  def update
    respond_to do |format|
      if @_mangas_am_plu.update(_mangas_am_plu_params)
        format.html { redirect_to mangas_am_plu_url(@_mangas_am_plu), notice: "Mangas am plu was successfully updated." }
        format.json { render :show, status: :ok, location: @_mangas_am_plu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_mangas_am_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_mangas_am_plus/1 or /_mangas_am_plus/1.json
  def destroy
    @_mangas_am_plu.destroy!

    respond_to do |format|
      format.html { redirect_to mangas_am_plus_url, notice: "Mangas am plu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__mangas_am_plu
      @_mangas_am_plu = MangasAmPlu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _mangas_am_plu_params
      params.require(:mangas_am_plu).permit(:name)
    end
end

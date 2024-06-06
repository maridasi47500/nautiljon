class LivresAmsController < ApplicationController
  before_action :set__livres_am, only: %i[ show edit update destroy ]

  # GET /_livres_ams or /_livres_ams.json
  def index
    @_livres_ams = LivresAm.all
  end

  # GET /_livres_ams/1 or /_livres_ams/1.json
  def show
  end

  # GET /_livres_ams/new
  def new
    @_livres_am = LivresAm.new
  end

  # GET /_livres_ams/1/edit
  def edit
  end

  # POST /_livres_ams or /_livres_ams.json
  def create
    @_livres_am = LivresAm.new(_livres_am_params)

    respond_to do |format|
      if @_livres_am.save
        format.html { redirect_to _livres_am_url(@_livres_am), notice: "Livres am was successfully created." }
        format.json { render :show, status: :created, location: @_livres_am }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_livres_am.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_livres_ams/1 or /_livres_ams/1.json
  def update
    respond_to do |format|
      if @_livres_am.update(_livres_am_params)
        format.html { redirect_to _livres_am_url(@_livres_am), notice: "Livres am was successfully updated." }
        format.json { render :show, status: :ok, location: @_livres_am }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_livres_am.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_livres_ams/1 or /_livres_ams/1.json
  def destroy
    @_livres_am.destroy!

    respond_to do |format|
      format.html { redirect_to _livres_ams_url, notice: "Livres am was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__livres_am
      @_livres_am = LivresAm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _livres_am_params
      params.require(:_livres_am).permit(:name)
    end
end

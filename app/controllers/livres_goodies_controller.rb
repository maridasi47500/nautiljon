class LivresGoodiesController < ApplicationController
  before_action :set__livres_goody, only: %i[ show edit update destroy ]

  # GET /_livres_goodies or /_livres_goodies.json
  def index
    @_livres_goodies = LivresGoody.all
  end

  # GET /_livres_goodies/1 or /_livres_goodies/1.json
  def show
  end

  # GET /_livres_goodies/new
  def new
    @_livres_goody = LivresGoody.new
  end

  # GET /_livres_goodies/1/edit
  def edit
  end

  # POST /_livres_goodies or /_livres_goodies.json
  def create
    @_livres_goody = LivresGoody.new(_livres_goody_params)

    respond_to do |format|
      if @_livres_goody.save
        format.html { redirect_to livres_goody_url(@_livres_goody), notice: "Livres goody was successfully created." }
        format.json { render :show, status: :created, location: @_livres_goody }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_livres_goody.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_livres_goodies/1 or /_livres_goodies/1.json
  def update
    respond_to do |format|
      if @_livres_goody.update(_livres_goody_params)
        format.html { redirect_to livres_goody_url(@_livres_goody), notice: "Livres goody was successfully updated." }
        format.json { render :show, status: :ok, location: @_livres_goody }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_livres_goody.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_livres_goodies/1 or /_livres_goodies/1.json
  def destroy
    @_livres_goody.destroy!

    respond_to do |format|
      format.html { redirect_to livres_goodies_url, notice: "Livres goody was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__livres_goody
      @_livres_goody = LivresGoody.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _livres_goody_params
      params.require(:livres_goody).permit(:name)
    end
end

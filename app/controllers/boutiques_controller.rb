class BoutiquesController < ApplicationController
  before_action :set__boutique, only: %i[ show edit update destroy ]

  # GET /_boutiques or /_boutiques.json
  def index
    @_boutiques = Boutique.all
  end

  # GET /_boutiques/1 or /_boutiques/1.json
  def show
  end

  # GET /_boutiques/new
  def new
    @_boutique = Boutique.new
  end

  # GET /_boutiques/1/edit
  def edit
  end

  # POST /_boutiques or /_boutiques.json
  def create
    @_boutique = Boutique.new(_boutique_params)

    respond_to do |format|
      if @_boutique.save
        format.html { redirect_to boutique_url(@_boutique), notice: "Boutique was successfully created." }
        format.json { render :show, status: :created, location: @_boutique }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_boutique.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_boutiques/1 or /_boutiques/1.json
  def update
    respond_to do |format|
      if @_boutique.update(_boutique_params)
        format.html { redirect_to boutique_url(@_boutique), notice: "Boutique was successfully updated." }
        format.json { render :show, status: :ok, location: @_boutique }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_boutique.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_boutiques/1 or /_boutiques/1.json
  def destroy
    @_boutique.destroy!

    respond_to do |format|
      format.html { redirect_to boutiques_url, notice: "Boutique was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__boutique
      @_boutique = Boutique.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _boutique_params
      params.require(:boutique).permit(:nom, :image, :adresse, :tel, :description, :dept, :ville, :_boutiques_pays_id, :site, :acceptregles)
    end
end

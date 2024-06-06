class ArtbooksGroupesController < ApplicationController
  before_action :set_artbooks_groupe, only: %i[ show edit update destroy ]

  # GET /artbooks_groupes or /artbooks_groupes.json
  def index
    @artbooks_groupes = ArtbooksGroupe.all
  end

  # GET /artbooks_groupes/1 or /artbooks_groupes/1.json
  def show
  end

  # GET /artbooks_groupes/new
  def new
    @artbooks_groupe = ArtbooksGroupe.new
  end

  # GET /artbooks_groupes/1/edit
  def edit
  end

  # POST /artbooks_groupes or /artbooks_groupes.json
  def create
    @artbooks_groupe = ArtbooksGroupe.new(artbooks_groupe_params)

    respond_to do |format|
      if @artbooks_groupe.save
        format.html { redirect_to artbooks_groupe_url(@artbooks_groupe), notice: "Artbooks groupe was successfully created." }
        format.json { render :show, status: :created, location: @artbooks_groupe }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artbooks_groupe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artbooks_groupes/1 or /artbooks_groupes/1.json
  def update
    respond_to do |format|
      if @artbooks_groupe.update(artbooks_groupe_params)
        format.html { redirect_to artbooks_groupe_url(@artbooks_groupe), notice: "Artbooks groupe was successfully updated." }
        format.json { render :show, status: :ok, location: @artbooks_groupe }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artbooks_groupe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artbooks_groupes/1 or /artbooks_groupes/1.json
  def destroy
    @artbooks_groupe.destroy!

    respond_to do |format|
      format.html { redirect_to artbooks_groupes_url, notice: "Artbooks groupe was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artbooks_groupe
      @artbooks_groupe = ArtbooksGroupe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artbooks_groupe_params
      params.require(:artbooks_groupe).permit(:name)
    end
end

class PersonnalitesIdMembresController < ApplicationController
  before_action :set__personnalites_id_membre, only: %i[ show edit update destroy ]

  # GET /_personnalites_id_membres or /_personnalites_id_membres.json
  def index
    @_personnalites_id_membres = PersonnalitesIdMembre.all
  end

  # GET /_personnalites_id_membres/1 or /_personnalites_id_membres/1.json
  def show
  end

  # GET /_personnalites_id_membres/new
  def new
    @_personnalites_id_membre = PersonnalitesIdMembre.new
  end

  # GET /_personnalites_id_membres/1/edit
  def edit
  end

  # POST /_personnalites_id_membres or /_personnalites_id_membres.json
  def create
    @_personnalites_id_membre = PersonnalitesIdMembre.new(_personnalites_id_membre_params)

    respond_to do |format|
      if @_personnalites_id_membre.save
        format.html { redirect_to personnalites_id_membre_url(@_personnalites_id_membre), notice: "Personnalites id membre was successfully created." }
        format.json { render :show, status: :created, location: @_personnalites_id_membre }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_personnalites_id_membre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_personnalites_id_membres/1 or /_personnalites_id_membres/1.json
  def update
    respond_to do |format|
      if @_personnalites_id_membre.update(_personnalites_id_membre_params)
        format.html { redirect_to personnalites_id_membre_url(@_personnalites_id_membre), notice: "Personnalites id membre was successfully updated." }
        format.json { render :show, status: :ok, location: @_personnalites_id_membre }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_personnalites_id_membre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_personnalites_id_membres/1 or /_personnalites_id_membres/1.json
  def destroy
    @_personnalites_id_membre.destroy!

    respond_to do |format|
      format.html { redirect_to personnalites_id_membres_url, notice: "Personnalites id membre was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__personnalites_id_membre
      @_personnalites_id_membre = PersonnalitesIdMembre.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _personnalites_id_membre_params
      params.require(:personnalites_id_membre).permit(:name)
    end
end

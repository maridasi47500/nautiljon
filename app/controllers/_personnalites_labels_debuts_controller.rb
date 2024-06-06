class PersonnalitesLabelsDebutsController < ApplicationController
  before_action :set__personnalites_labels_debut, only: %i[ show edit update destroy ]

  # GET /_personnalites_labels_debuts or /_personnalites_labels_debuts.json
  def index
    @_personnalites_labels_debuts = PersonnalitesLabelsDebut.all
  end

  # GET /_personnalites_labels_debuts/1 or /_personnalites_labels_debuts/1.json
  def show
  end

  # GET /_personnalites_labels_debuts/new
  def new
    @_personnalites_labels_debut = PersonnalitesLabelsDebut.new
  end

  # GET /_personnalites_labels_debuts/1/edit
  def edit
  end

  # POST /_personnalites_labels_debuts or /_personnalites_labels_debuts.json
  def create
    @_personnalites_labels_debut = PersonnalitesLabelsDebut.new(_personnalites_labels_debut_params)

    respond_to do |format|
      if @_personnalites_labels_debut.save
        format.html { redirect_to _personnalites_labels_debut_url(@_personnalites_labels_debut), notice: "Personnalites labels debut was successfully created." }
        format.json { render :show, status: :created, location: @_personnalites_labels_debut }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_personnalites_labels_debut.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_personnalites_labels_debuts/1 or /_personnalites_labels_debuts/1.json
  def update
    respond_to do |format|
      if @_personnalites_labels_debut.update(_personnalites_labels_debut_params)
        format.html { redirect_to _personnalites_labels_debut_url(@_personnalites_labels_debut), notice: "Personnalites labels debut was successfully updated." }
        format.json { render :show, status: :ok, location: @_personnalites_labels_debut }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_personnalites_labels_debut.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_personnalites_labels_debuts/1 or /_personnalites_labels_debuts/1.json
  def destroy
    @_personnalites_labels_debut.destroy!

    respond_to do |format|
      format.html { redirect_to _personnalites_labels_debuts_url, notice: "Personnalites labels debut was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__personnalites_labels_debut
      @_personnalites_labels_debut = PersonnalitesLabelsDebut.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _personnalites_labels_debut_params
      params.require(:_personnalites_labels_debut).permit(:name)
    end
end

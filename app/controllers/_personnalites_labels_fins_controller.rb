class PersonnalitesLabelsFinsController < ApplicationController
  before_action :set__personnalites_labels_fin, only: %i[ show edit update destroy ]

  # GET /_personnalites_labels_fins or /_personnalites_labels_fins.json
  def index
    @_personnalites_labels_fins = PersonnalitesLabelsFin.all
  end

  # GET /_personnalites_labels_fins/1 or /_personnalites_labels_fins/1.json
  def show
  end

  # GET /_personnalites_labels_fins/new
  def new
    @_personnalites_labels_fin = PersonnalitesLabelsFin.new
  end

  # GET /_personnalites_labels_fins/1/edit
  def edit
  end

  # POST /_personnalites_labels_fins or /_personnalites_labels_fins.json
  def create
    @_personnalites_labels_fin = PersonnalitesLabelsFin.new(_personnalites_labels_fin_params)

    respond_to do |format|
      if @_personnalites_labels_fin.save
        format.html { redirect_to _personnalites_labels_fin_url(@_personnalites_labels_fin), notice: "Personnalites labels fin was successfully created." }
        format.json { render :show, status: :created, location: @_personnalites_labels_fin }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_personnalites_labels_fin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_personnalites_labels_fins/1 or /_personnalites_labels_fins/1.json
  def update
    respond_to do |format|
      if @_personnalites_labels_fin.update(_personnalites_labels_fin_params)
        format.html { redirect_to _personnalites_labels_fin_url(@_personnalites_labels_fin), notice: "Personnalites labels fin was successfully updated." }
        format.json { render :show, status: :ok, location: @_personnalites_labels_fin }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_personnalites_labels_fin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_personnalites_labels_fins/1 or /_personnalites_labels_fins/1.json
  def destroy
    @_personnalites_labels_fin.destroy!

    respond_to do |format|
      format.html { redirect_to _personnalites_labels_fins_url, notice: "Personnalites labels fin was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__personnalites_labels_fin
      @_personnalites_labels_fin = PersonnalitesLabelsFin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _personnalites_labels_fin_params
      params.require(:_personnalites_labels_fin).permit(:name)
    end
end

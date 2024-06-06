class PersonnalitesLabelsController < ApplicationController
  before_action :set__personnalites_label, only: %i[ show edit update destroy ]

  # GET /_personnalites_labels or /_personnalites_labels.json
  def index
    @_personnalites_labels = PersonnalitesLabel.all
  end

  # GET /_personnalites_labels/1 or /_personnalites_labels/1.json
  def show
  end

  # GET /_personnalites_labels/new
  def new
    @_personnalites_label = PersonnalitesLabel.new
  end

  # GET /_personnalites_labels/1/edit
  def edit
  end

  # POST /_personnalites_labels or /_personnalites_labels.json
  def create
    @_personnalites_label = PersonnalitesLabel.new(_personnalites_label_params)

    respond_to do |format|
      if @_personnalites_label.save
        format.html { redirect_to _personnalites_label_url(@_personnalites_label), notice: "Personnalites label was successfully created." }
        format.json { render :show, status: :created, location: @_personnalites_label }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_personnalites_label.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_personnalites_labels/1 or /_personnalites_labels/1.json
  def update
    respond_to do |format|
      if @_personnalites_label.update(_personnalites_label_params)
        format.html { redirect_to _personnalites_label_url(@_personnalites_label), notice: "Personnalites label was successfully updated." }
        format.json { render :show, status: :ok, location: @_personnalites_label }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_personnalites_label.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_personnalites_labels/1 or /_personnalites_labels/1.json
  def destroy
    @_personnalites_label.destroy!

    respond_to do |format|
      format.html { redirect_to _personnalites_labels_url, notice: "Personnalites label was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__personnalites_label
      @_personnalites_label = PersonnalitesLabel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _personnalites_label_params
      params.require(:_personnalites_label).permit(:name)
    end
end

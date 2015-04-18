class LoosController < ApplicationController
  before_action :set_loo, only: [:show, :edit, :update, :destroy]

  # GET /loos
  # GET /loos.json
  def index
    @loos = Loo.all
  end

  def search
    @loos = Loo.search(params[:term])
    render :index
  end

  # GET /loos/1
  # GET /loos/1.json
  def show
  end

  # GET /loos/new
  def new
    @loo = Loo.new
  end

  # GET /loos/1/edit
  def edit
  end

  # POST /loos
  # POST /loos.json
  def create
    @loo = Loo.new(loo_params)

    respond_to do |format|
      if @loo.save
        format.html { redirect_to @loo, notice: 'Loo was successfully created.' }
        format.json { render :show, status: :created, location: @loo }
      else
        format.html { render :new }
        format.json { render json: @loo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loos/1
  # PATCH/PUT /loos/1.json
  def update
    respond_to do |format|
      if @loo.update(loo_params)
        format.html { redirect_to @loo, notice: 'Loo was successfully updated.' }
        format.json { render :show, status: :ok, location: @loo }
      else
        format.html { render :edit }
        format.json { render json: @loo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loos/1
  # DELETE /loos/1.json
  def destroy
    @loo.destroy
    respond_to do |format|
      format.html { redirect_to loos_url, notice: 'Loo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loo
      @loo = Loo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def loo_params
      params.require(:loo).permit(:lat, :lng, :name, :description, :open_hours, :closing_hours, :open_closing_note, :managed_by, :loo_type, :genders, :no_of_toilets, :no_of_bathrooms, :no_of_urinals, :paid, :location_name, attachments_attributes: [:file])
    end
end

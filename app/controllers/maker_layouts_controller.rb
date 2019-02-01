class MakerLayoutsController < ApplicationController
  before_action :set_maker_layout, only: [:show, :edit, :update, :destroy]

  # GET /maker_layouts
  # GET /maker_layouts.json
  def index
    @maker_layouts = MakerLayout.all
  end

  # GET /maker_layouts/1
  # GET /maker_layouts/1.json
  def show
  end

  # GET /maker_layouts/new
  def new
    @maker_layout = MakerLayout.new
  end

  # GET /maker_layouts/1/edit
  def edit
  end

  # POST /maker_layouts
  # POST /maker_layouts.json
  def create
    @maker_layout = MakerLayout.new(maker_layout_params)

    respond_to do |format|
      if @maker_layout.save
        format.html { redirect_to @maker_layout, notice: 'Maker layout was successfully created.' }
        format.json { render :show, status: :created, location: @maker_layout }
      else
        format.html { render :new }
        format.json { render json: @maker_layout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /maker_layouts/1
  # PATCH/PUT /maker_layouts/1.json
  def update
    respond_to do |format|
      if @maker_layout.update(maker_layout_params)
        format.html { redirect_to @maker_layout, notice: 'Maker layout was successfully updated.' }
        format.json { render :show, status: :ok, location: @maker_layout }
      else
        format.html { render :edit }
        format.json { render json: @maker_layout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maker_layouts/1
  # DELETE /maker_layouts/1.json
  def destroy
    @maker_layout.destroy
    respond_to do |format|
      format.html { redirect_to maker_layouts_url, notice: 'Maker layout was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maker_layout
      @maker_layout = MakerLayout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def maker_layout_params
      params.require(:maker_layout).permit(:supplier_number, :location_code, :address, :city, :state, :country)
    end
end

class LabsController < ApplicationController
  before_action :set_lab, only: [ :show, :edit, :update, :destroy ]

  def index
    @labs = Lab.all.order(created_at: :desc)
  end

  def show
  end

  def new
    @lab = Lab.new
  end

  def create
    @lab = Lab.new(lab_params)
    if @lab.save
      redirect_to labs_path, notice: "Lab was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @lab.update(lab_params)
      redirect_to labs_path, notice: "Lab was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @lab.destroy
    redirect_to labs_path, notice: "Lab was successfully deleted."
  end

  private
    def set_lab
      @lab = Lab.find(params[:id])
    end

    def lab_params
      params.require(:lab).permit(:title, :description, :status, :estimate_in_hours, :time_spent_in_seconds, :date_started, :date_completed)
    end
end

class TicketsController < ApplicationController
  before_action :authenticate_user!

  def index
    @tickets = policy_scope(Ticket)
  end

  def show
    @ticket = Ticket.find(params[:id])
    @response = Response.new

    @response = Response.where(ticket_id: @ticket).pluck(:id)
    authorize @ticket
  end

  def new
    @ticket = Ticket.new
    authorize @ticket
  end

  def create
    @ticket = Ticket.new(ticket_params)
    @reviewer = Reviewer.all.sample
    @ticket.reviewer = @reviewer
    @ticket.user = current_user
    authorize @ticket
    if @ticket.save!
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @ticket = Ticket.find(params[:id])
    @ticket.destroy
    redirect_to root_path, status: :see_other
    authorize @ticket
  end

  private

  def ticket_params
    params.require(:ticket).permit(:category, :description)
  end
end

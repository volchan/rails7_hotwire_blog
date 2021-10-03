# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_current_user

  def home
    @rooms = Room.all
    @room = Room.first
  end

  private

  def set_current_user
    @current_user = current_user
  end
end

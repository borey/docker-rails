# frozen_string_literal: true

class AdminController < ApplicationController
  before_action :authenticate_user!
  layout :set_layout

  private
    def set_layout
      signed_in? ? "layouts/admin" : "layouts/minimal"
    end
end

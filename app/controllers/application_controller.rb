# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  layout :set_layout

  private
    def set_layout
      signed_in? ? "layouts/application" : "layouts/minimal"
    end
end

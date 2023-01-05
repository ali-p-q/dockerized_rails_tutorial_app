# frozen_string_literal: true

class StaticPagesController < ApplicationController
  before_action :clear_forwarding_url

  def home; end

  def help; end

  def about; end

  def contact; end
end

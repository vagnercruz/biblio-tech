# app/controllers/application_controller.rb
class ApplicationController < ActionController::Base
  before_action :set_locale

  def change_language
    locale = params[:locale]
    if I18n.available_locales.map(&:to_s).include?(locale)
      session[:locale] = locale
    end
    redirect_back(fallback_location: root_path)
  end

  private

  def set_locale
    I18n.locale = session[:locale] || I18n.default_locale
  end
end

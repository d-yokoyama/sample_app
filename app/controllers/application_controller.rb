class ApplicationController < ActionController::Base
  def hello
    render html: "hello, world"
  end
  #本来ならばSessionsHelper"Sの付け忘れ"
  include SessionHelper
end

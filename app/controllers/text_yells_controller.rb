class TextYellsController < ApplicationController
  def create
    content = build_content
    yell = current_user.yells.build(content: content)
    if yell.save
      redirect_to dashboard_path
    else
      flash.alert = "Could not yell!"
      redirect_to dashboard_path
    end
  end

private
  def build_content
    TextYell.new(text_yell_parameters)
  end

  def text_yell_parameters
    params.require(:text_yell).permit(:body)
  end
end

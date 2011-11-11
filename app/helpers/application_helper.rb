module ApplicationHelper
  def active?(name)
    if controller.controller_name == name
      "active"
    end
  end
end

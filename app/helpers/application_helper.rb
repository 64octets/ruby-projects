module ApplicationHelper
  def render_status(project)
    render_progress(project.progress)
    concat raw '<br>'
    render_active(project.active)
  end

  def render_progress(progress)
    case progress
      when 'planning'
        concat raw ("<span class=\"status-blue\"><i class=\"icon-circle-blank\"></i> Planning</span>")
      when 'development'
        concat raw ("<span class=\"status-blue\"><i class=\"icon-circle\"></i> In Development</span>")
      when 'canceled'
        concat raw ("<span class=\"status-red\"><i class=\"icon-circle\"></i> Canceled</span>")
      when 'finished'
        concat raw ("<span class=\"status-green\"><i class=\"icon-circle\"></i> Finished</span>")
    end
  end

  def render_active(active_state)
    if active_state
      concat raw ("<span class=\"status-green\"><i class=\"icon-circle\"></i> Active</span>")
    else
      concat raw ("<span class=\"status-red\"><i class=\"icon-circle\"></i> Inactive</span>")
    end
  end
end

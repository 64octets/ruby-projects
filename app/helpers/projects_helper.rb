module ProjectsHelper
  def large_project_helper(is_last)
    shrinked = false
    extended = false
    if is_last || @row_span > 750
      extended = true unless is_last
      new_width = 492 + (1000 - (@row_span))
      concat raw("<div class=\"project-container project-container-large\" style=\"width:#{new_width}px;\">")
    elsif @row_span > 1000
      new_width = 492 - (@row_span - 1000)
      concat raw("<div class=\"project-container project-container-large\" style=\"width:#{new_width}px;\">")
      shrinked = true
    else
      concat raw('<div class="project-container project-container-large">')
    end

    yield
    concat raw('</div>')
    if shrinked || extended
      @row_span = 0
      concat raw('</div><div class="row">')
    end
  end

  def medium_project_helper(is_last)
    shrinked = false
    extended = false
    if is_last || @row_span > 750
      extended = true unless is_last
      new_width = 322 + (1000 - (@row_span))
      concat raw("<div class=\"project-container project-container-medium\" style=\"width:#{new_width}px;\">")
    elsif @row_span > 1000
      new_width = 322 - (@row_span - 1000)
      concat raw("<div class=\"project-container project-container-medium\" style=\"width:#{new_width}px;\">")
      shrinked = true
    else
      concat raw('<div class="project-container project-container-medium">')
    end
    yield
    concat raw('</div>')
    if shrinked || extended
      @row_span = 0
      concat raw('</div><div class="row">')
    end
  end

  def small_project_helper(is_last)
    shrinked = false
    extended = false
    if is_last || @row_span > 750
      extended = true unless is_last
      new_width = 242 + (1000 - (@row_span))
      concat raw("<div class=\"project-container project-container-small\" style=\"width:#{new_width}px;\">")
    elsif @row_span > 1000
      new_width = 242 - (@row_span - 1000)
      concat raw("<div class=\"project-container project-container-small\" style=\"width:#{new_width}px;\">")
      shrinked = true
    else
      concat raw('<div class="project-container project-container-small">')
    end
    yield
    concat raw('</div>')
    if shrinked || extended
      @row_span = 0
      concat raw('</div><div class="row">')
    end
  end

  def print_project_box_content(project)
    concat raw ("<div class=\"content\" style=\"background-image:url('http://lorempixel.com/500/230/technics/#{@global_cnt}');\">")
    concat raw ("<h2>#{project.name}</h2>")
    concat raw ("<div class=\"status\">")
    render_status(project)
    concat raw ('</div>')
    concat raw ("<div class=\"description\"><p>#{project.description}</p></div>")
    concat raw ('</div>')
  end

  def print_project(project, is_last)
    if project.metro_size == 'large'
      @row_span += 500
      large_project_helper(is_last) do
        print_project_box_content(project)
      end
    elsif project.metro_size == 'medium'
      @row_span += 330
      medium_project_helper(is_last) do
        print_project_box_content(project)
      end
    else
      @row_span += 250
      small_project_helper(is_last) do
        print_project_box_content(project)
      end
    end
  end
end

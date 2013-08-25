module ApplicationHelper
  def large_project_helper(is_last)
    shrinked = false
    extended = false
    if is_last || @row_span > 75
      extended = true unless is_last
      new_width = 50 + (100 - (@row_span))
      concat raw("<div class=\"project-container project-container-large\" style=\"width:#{new_width}%;\">")
    elsif @row_span > 100
      new_width = 50 - (@row_span - 100)
      concat raw("<div class=\"project-container project-container-large\" style=\"width:#{new_width}%;\">")
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
    if is_last || @row_span > 75
      extended = true unless is_last
      new_width = 33 + (100 - (@row_span))
      concat raw("<div class=\"project-container project-container-medium\" style=\"width:#{new_width}%;\">")
    elsif @row_span > 100
      new_width = 33 - (@row_span - 100)
      concat raw("<div class=\"project-container project-container-medium\" style=\"width:#{new_width}%;\">")
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
    if is_last || @row_span > 75
      extended = true unless is_last
      new_width = 25 + (100 - (@row_span))
      concat raw("<div class=\"project-container project-container-small\" style=\"width:#{new_width}%;\">")
    elsif @row_span > 100
      new_width = 25 - (@row_span - 100)
      concat raw("<div class=\"project-container project-container-small\" style=\"width:#{new_width}%;\">")
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

  def print_project(project, is_last)
      logger.debug(is_last)
       if project.popularity >= 6
         @row_span += 50
         large_project_helper(is_last) do
           concat raw ("<div class=\"content\" style=\"background-image:url('http://lorempixel.com/500/230/technics/#{@global_cnt}');\">")
           concat raw ("<h2>#{project.name}</h2>")
           concat raw ("<div class=\"description\"><p>#{project.description}</p></div>")
           concat raw ('</div>')
         end
       elsif project.popularity < 6 and project.popularity > 4
         @row_span += 33
         medium_project_helper(is_last) do
           concat raw ("<div class=\"content\" style=\"background-image:url('http://lorempixel.com/500/230/technics/#{@global_cnt}');\">")
           concat raw ("<h2>#{project.name}</h2>")
           concat raw ("<div class=\"description\"><p>#{project.description}</p></div>")
           concat raw ('</div>')
         end
       else
         @row_span += 25
          small_project_helper(is_last) do
            concat raw ("<div class=\"content\" style=\"background-image:url('http://lorempixel.com/500/230/technics/#{@global_cnt}');\">")
            concat raw ("<h2>#{project.name}</h2>")
             concat raw ("<div class=\"description\"><p>#{project.description}</p></div>")
            concat raw ('</div>')
          end
       end
  end
end

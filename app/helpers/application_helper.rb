module ApplicationHelper
  def  inclination(count, one, many)
    return many if (count % 100).between?(11,14)
    case count % 10
    when 1..4 then one
    else
      many
    end
  end
end

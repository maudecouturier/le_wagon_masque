module ApplicationHelper

  def costumes_search(costumes, params)
    if params[:filter]
      queries = params[:filter]

      if queries[:query].present?
        costumes = costumes.search(queries[:query])
      end

      if queries[:location].present?
        costumes = costumes.search(queries[:location])
      end

      if queries[:min_price].present?
        costumes = costumes.where("price >= ?", queries[:min_price])
      end

      if queries[:max_price].present?
        costumes = costumes.where("price <= ?", queries[:max_price])
      end
    end
    return costumes
  end

end

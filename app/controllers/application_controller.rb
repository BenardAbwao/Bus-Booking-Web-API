class ApplicationController < ActionController::API
  include ActionController::Cookies
  def create_a_session(id, role)
    session[:user_id] ||= id 
    session[:user_role] ||= role
  end
  #uid and role are methods giving us details on session
  def me
    if (role== "driver")
      render json: Driver.find(uid)
    elsif(role == "admin")
      render json: Admin.find(uid)
    elsif(role == "customer")
      render json: Customer.find(uid)
    else
      render json: {error: "You are not logged in"}, status: :unauthorized
    end
  end

  def uid 
    session[:user_id]
  end
  def role
    session[:user_role]
  end

  private
  #Reusable methods
  # MAX_PAGINATION_LIMIT = 2
  # OFFSET_LIMIT = 0
  
  # def limit
  #   [
  #     params.fetch(:limit, MAX_PAGINATION_LIMIT).to_i,
  #     MAX_PAGINATION_LIMIT
  #   ].min
  # end

  # def offset
  #   [
  #     params.fetch(:offset, OFFSET_LIMIT).to_i,
  #     OFFSET_LIMIT
  #   ].max
  # end

  def page
    @page ||= params[:page] || 1
  end

  def per_page
    @per_page ||= params[:per_page] || 2
  end

  def set_pagination_headers(v_name)
    pc = instance_variable_get("@#{v_name}")
    
    headers["X-Total-Count"] = pc.total_count

    links = []
    links << page_link(1, "first") unless pc.first_page?
    links << page_link(pc.prev_page, "prev") if pc.prev_page
    links << page_link(pc.next_page, "next") if pc.next_page
    links << page_link(pc.total_pages, "last") unless pc.last_page?
    headers["Link"] = links.join(", ") if links.present?
  end

  def page_link(page, rel)
    # "<#{posts_url(request.query_parameters.merge(page: page))}>; rel='#{rel}'"
    base_uri = request.url.split("?").first
    "<#{base_uri}?#{request.query_parameters.merge(page: page).to_param}>; rel='#{rel}'"
  end    
end

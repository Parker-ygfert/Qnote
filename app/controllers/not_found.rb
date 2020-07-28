module NotFound
  
  def self.included(base)
    base.rescue_from ActiveRecord::RecordNotFound, with: :not_found
  end

  private
  def not_found
    render file: "/public/404.html", status: 404
  end
  
end
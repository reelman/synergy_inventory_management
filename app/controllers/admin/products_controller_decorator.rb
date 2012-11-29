Spree::Admin::ProductsController.class_eval do
  skip_before_filter :load_resource, :only => :update_multiple

  def update_multiple  
    @collection = Spree::Product.where(:id => params[:product_ids])
    if params[:add_taxon].present?
      @collection.each do |p| 
        taxon = Spree::Taxon.find(params[:add_taxon])
        p.taxons << taxon if !p.taxons.include? taxon
        p.taxons.delete(Spree::Taxon.find(params[:id]))
        flash[:notice] = I18n.t('products_successfully_updated')
      end
    end 
    redirect_to :back
  end

end

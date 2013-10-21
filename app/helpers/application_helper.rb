module ApplicationHelper
def render_external_link args, results = Array.new
		text = args[:document].get(blacklight_config.show_fields[args[:field]][:text])
		url_pre = args[:document].get(args[:field])
		links << link_to(link_text, url_pre, { :target => "_self" }).html_safe
        results << links
  end

def link_to_volume_facet(volume, options={})
    link_params = {}
    link_params.merge!(options[:params]) if options[:params]
    link_params["page"] = nil
    volume_facet_params = params_for_volume_or_image(volume)
    options.delete(:params)
    if options[:count]
      link_to(t('frda.search.view_all'), catalog_index_path(link_params.deep_merge(volume_facet_params)), options)
    else
      link_to(volume, catalog_index_path(link_params.deep_merge(volume_facet_params)), options)
    end
  end

end

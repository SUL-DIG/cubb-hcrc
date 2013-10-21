module ApplicationHelper
def render_external_link args, results = Array.new
		text = args[:document].get(blacklight_config.show_fields[args[:field]][:text])
        url = args[:document].get(args[:field])
        results << link_to(text, catalog_index_path.url, { :target => "_blank" }).html_safe
  end

end

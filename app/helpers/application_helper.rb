module ApplicationHelper
def render_external_link args, results = Array.new
		text = args[:document].get(blacklight_config.show_fields[args[:field]][:text])
        url = args[:document].get(args[:field])
        link_test = 'http://hcrc-dev.stanford.edu/?f%5Bkeywords_facet%5D%5B%5D='
        results << link_to(text, {link_test, url}, { :target => "_blank" }).html_safe
  end

end

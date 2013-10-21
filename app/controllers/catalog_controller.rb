# -*- encoding : utf-8 -*-
require 'blacklight/catalog'

class CatalogController < ApplicationController  

  include Blacklight::Catalog

  configure_blacklight do |config|
    ## Default parameters to send to solr for all search-like requests. See also SolrHelper#solr_search_params
    config.default_solr_params = { 
      :qt => 'search',
      :rows => 10 
    }

    ## Default parameters to send on single-document requests to Solr. These settings are the Blackligt defaults (see SolrHelper#solr_doc_params) or 
    ## parameters included in the Blacklight-jetty document requestHandler.
    #
    #config.default_document_solr_params = {
    #  :qt => 'document',
    #  ## These are hard-coded in the blacklight 'document' requestHandler
    #  # :fl => '*',
    #  # :rows => 1
    #  # :q => '{!raw f=id v=$id}' 
    #}

    #config for xmlitem webservice JSP 05/16/2012
    config.xmlitem_url = 'http://libexp.uits.iu.edu/xmlitem2.cgi?key='

    # solr field configuration for search results/index views
    config.index.show_link = 'title'
    config.index.record_display_type = 'type'

    # solr field configuration for document/show views
    config.show.html_title = 'title'
    config.show.heading = 'title'
    config.show.display_type = 'type'

    # solr fields that will be treated as facets by the blacklight application
    #   The ordering of the field names is the order of the display
    #
    # Setting a limit will trigger Blacklight's 'more' facet values link.
    # * If left unset, then all facet values returned by solr will be displayed.
    # * If set to an integer, then "f.somefield.facet.limit" will be added to
    # solr request, with actual solr request being +1 your configured limit --
    # you configure the number of items you actually want _displayed_ in a page.    
    # * If set to 'true', then no additional parameters will be sent to solr,
    # but any 'sniffed' request limit parameters will be used for paging, with
    # paging at requested limit -1. Can sniff from facet.limit or 
    # f.specific_field.facet.limit solr request params. This 'true' config
    # can be used if you set limits in :default_solr_params, or as defaults
    # on the solr side in the request handler itself. Request handler defaults
    # sniffing requires solr requests to be made with "echoParams=all", for
    # app code to actually have it echo'd back to see it.  
    #
    # :show may be set to false if you don't want the facet to be drawn in the 
    # facet bar
    config.add_facet_field 'language', :label => 'Language', :limit => 20 
    config.add_facet_field 'author_facet', :label => 'Author', :limit => 10 
    config.add_facet_field 'corp_author_facet', :label => 'Corporate Author', :limit => 10 
    config.add_facet_field 'year', :label => 'Year', :range => true
    config.add_facet_field 'state_country_facet', :label => 'State/Country', :limit => 10 
    config.add_facet_field 'grade_level_group_facet', :label => 'Grade Level Group', :query => {
    :grade_level_group_prek => { :label => 'Pre-K', :fq => "grade_level_group:Pre-K"},
    :grade_level_group_kinder => { :label => 'Kindergarten', :fq => "grade_level_group:Kindergarten"},
    :grade_level_group_elementary => { :label => 'Elementary', :fq => "grade_level_group:Elementary"},
    :grade_level_group_middle => { :label => 'Middle school', :fq => "grade_level_group:Middle school"},
    :grade_level_group_high => { :label => 'High school', :fq => "grade_level_group:High school"},
    :grade_level_group_post => { :label => 'Postsecondary', :fq => "grade_level_group:Postsecondary"},
    }
    config.add_facet_field 'grade_level_number_facet', :label => 'Grade Level Number', :query => {
    :grade_level_number_kinder => { :label => 'Kindergarten', :fq => "grade_level_number:Kindergarten"},
    :grade_level_number_first => { :label => '1st grade', :fq => "grade_level_number:1st*"},
    :grade_level_number_second => { :label => '2nd grade', :fq => "grade_level_number:2nd*"},
    :grade_level_number_third => { :label => '3rd grade', :fq => "grade_level_number:3rd*"},
    :grade_level_number_fourth => { :label => '4th grade', :fq => "grade_level_number:4th*"},
    :grade_level_number_fifth => { :label => '5th grade', :fq => "grade_level_number:5th*"},
    :grade_level_number_sixth => { :label => '6th grade', :fq => "grade_level_number:6th*"},
    :grade_level_number_seventh => { :label => '7th grade', :fq => "grade_level_number:7th*"},
    :grade_level_number_eighth => { :label => '8th grade', :fq => "grade_level_number:8th*"},
    :grade_level_number_ninth => { :label => '9th grade', :fq => "grade_level_number:9th*"},
    :grade_level_number_tenth => { :label => '10th grade', :fq => "grade_level_number:10th*"},
    :grade_level_number_eleventh => { :label => '11th grade', :fq => "grade_level_number:11th*"},
    :grade_level_number_twelfth => { :label => '12th grade', :fq => "grade_level_number:12th*"},
    :grade_level_number_post => { :label => 'Postsecondary', :fq => "grade_level_number:Postsecondary"},
    }    
	config.add_facet_field 'keywords_facet', :label => 'Subjects', :limit => 10 



    # Have BL send all facet field names to Solr, which has been the default
    # previously. Simply remove these lines if you'd rather use Solr request
    # handler defaults, or have no facets.
    config.add_facet_fields_to_solr_request!

    # solr fields to be displayed in the index (search results) view
    #   The ordering of the field names is the order of the display 
    config.add_index_field 'title', :label => 'Title:' 
    config.add_index_field 'author', :label => 'Author:' 
    config.add_index_field 'corp_author', :label => 'Corporate Author:' 
    config.add_index_field 'date', :label => 'Date:' 
    config.add_index_field 'state_country', :label => 'State/Country:' 
    config.add_index_field 'grade_leve_group', :label => 'Grade Level:'
    config.add_index_field 'keywords', :label => 'Subjects:'

    # solr fields to be displayed in the show (single result) view
    #   The ordering of the field names is the order of the display 
    config.add_show_field 'title', :label => 'Title:' 
    config.add_show_field 'series_title', :label => 'Series Title:' 
    config.add_show_field 'type', :label => 'Type:' 
    config.add_show_field 'author', :label => 'Author:' 
    config.add_show_field 'corp_author', :label => 'Corporate Author:' 
    config.add_show_field 'date', :label => 'Date:' 
    config.add_show_field 'publisher', :label => 'Publisher:' 
    config.add_show_field 'pub_place', :label => 'Place of Publication:'
    config.add_show_field 'pages', :label => 'Number of Pages:'
    config.add_show_field 'notes', :label => 'Notes:'
    config.add_show_field 'abstract', :label => 'Abstract:'
    config.add_show_field 'call_number', :label => 'Call Number:'
    config.add_show_field 'state_country', :label => 'State/Country:'
    config.add_show_field 'series_vol', :label => 'Series Volume Number:'
    config.add_show_field 'series_num_vol', :label => 'Number of Volumes in Series:'
    config.add_show_field 'edition', :label => 'Edition:'
    config.add_show_field 'issue', :label => 'Issue:'
    config.add_show_field 'keywords', :label => 'Subjects:', :link_to_search => :keywords_facet_field
    config.add_show_field 'language', :label => 'Language:'
    config.add_show_field 'grade_level_group', :label => 'Grade Level Group:'
    config.add_show_field 'grade_level_number', :label => 'Grade Level Number:'
    

    # "fielded" search configuration. Used by pulldown among other places.
    # For supported keys in hash, see rdoc for Blacklight::SearchFields
    #
    # Search fields will inherit the :qt solr request handler from
    # config[:default_solr_parameters], OR can specify a different one
    # with a :qt key/value. Below examples inherit, except for subject
    # that specifies the same :qt as default for our own internal
    # testing purposes.
    #
    # The :key is what will be used to identify this BL search field internally,
    # as well as in URLs -- so changing it after deployment may break bookmarked
    # urls.  A display label will be automatically calculated from the :key,
    # or can be specified manually to be different. 

    # This one uses all the defaults set by the solr request handler. Which
    # solr request handler? The one set in config[:default_solr_parameters][:qt],
    # since we aren't specifying it otherwise. 
    
    config.add_search_field 'all_fields', :label => 'All Fields'
    

    # Now we see how to over-ride Solr request handler defaults, in this
    # case for a BL "search field", which is really a dismax aggregate
    # of Solr search fields. 
    
    config.add_search_field('title') do |field|
      # solr_parameters hash are sent to Solr as ordinary url query params. 
      field.solr_parameters = { :'spellcheck.dictionary' => 'title' }

      # :solr_local_parameters will be sent using Solr LocalParams
      # syntax, as eg {! qf=$title_qf }. This is neccesary to use
      # Solr parameter de-referencing like $title_qf.
      # See: http://wiki.apache.org/solr/LocalParams
      field.solr_local_parameters = { 
        :qf => '$title_qf',
        :pf => '$title_pf'
      }
    end
    
    config.add_search_field('author') do |field|
      field.solr_parameters = { :'spellcheck.dictionary' => 'author' }
      field.solr_local_parameters = { 
        :qf => '$author_qf',
        :pf => '$author_pf'
      }
    end
    
    # Specifying a :qt only to show it's possible, and so our internal automated
    # tests can test it. In this case it's the same as 
    # config[:default_solr_parameters][:qt], so isn't actually neccesary. 
    config.add_search_field('corp_author') do |field|
      field.solr_parameters = { :'spellcheck.dictionary' => 'corp_author' }
      field.qt = 'search'
      field.solr_local_parameters = { 
        :qf => '$corp_author_qf',
        :pf => '$corp_author_pf'
      }
    end

    # "sort results by" select (pulldown)
    # label in pulldown is followed by the name of the SOLR field to sort by and
    # whether the sort is ascending or descending (it must be asc or desc
    # except in the relevancy case).
    config.add_sort_field 'score desc, year_sort desc, title_sort asc', :label => 'relevance'
    config.add_sort_field 'year_sort desc, title_sort asc', :label => 'year'
    config.add_sort_field 'author_sort asc, title_sort asc', :label => 'author'
    config.add_sort_field 'title_sort asc, pub_date_sort desc', :label => 'title'

    # If there are more than this many search results, no spelling ("did you 
    # mean") suggestion is offered.
    config.spell_max = 5
  end



end 

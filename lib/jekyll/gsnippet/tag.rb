require "jekyll"
require "gsnippet"

module Jekyll
  module Gsnippet
    class GtmHeadSnippet < Liquid::Tag
      include ::Gsnippet::Helper
    
      def render(context)
        gtm_head_snippet
      end
    
      Liquid::Template.register_tag "gtm_head_snippet", self
    end

    class GtmBodySnippet < Liquid::Tag
      include ::Gsnippet::Helper
    
      def render(context)
        gtm_body_snippet
      end
    
      Liquid::Template.register_tag "gtm_body_snippet", self
    end
  end
end

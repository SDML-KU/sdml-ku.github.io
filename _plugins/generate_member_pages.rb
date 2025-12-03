module Jekyll
  class GenerateMemberPages
    def initialize(site)
      @site = site
    end

    def generate
      members = @site.data['members'] || []
      
      members.each do |member|
        slug = member['name'].downcase.gsub(/\s+/, '-')
        
        # Create new document with virtual path
        doc = Jekyll::Document.new(
          File.join(@site.source, "_members", "#{slug}.md"),
          site: @site,
          collection: @site.collections['members']
        )
        
        # Merge member data into document frontmatter
        doc.data.merge!(member)
        doc.data['layout'] = 'member'
        doc.data['slug'] = slug
        doc.content = ''
        
        # Add to collection
        @site.collections['members'].docs << doc
      end
    end
  end
end

Jekyll::Hooks.register :site, :post_read do |site|
  Jekyll::GenerateMemberPages.new(site).generate
end
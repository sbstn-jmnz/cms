module ApplicationHelper
	
	def url_for_page page
		root_path + if page.slug.present?
			page.slug
		else
			"pages/#{page.id}"
		end
	end

end

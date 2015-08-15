module Tilda
  module Api
    class Request
      include HTTParty

      def initialize(public_key:nil, secret_key:nil)
        public_key ||= Api.configuration.public_key
        secret_key ||= Api.configuration.secret_key
        api_version = Api.configuration.api_version
        self.class.default_params publickey: public_key, secretkey: secret_key
        self.class.base_uri "http://api.tildacdn.info/#{api_version}"
      end

      def get_projects_list
        get('/getprojectslist')
      end

      def get_project(project_id)
        get('/getprojects', query: {projectid: project_id})
      end

      def get_project_export(project_id)
        get('/getprojectexport', query: {projectid: project_id})
      end

      def get_pages_list(project_id)
        get('/getpageslist', query: {projectid: project_id})
      end

      def get_page(page_id)
        get('/getpage', query: {pageid: page_id})
      end

      def get_page_full(page_id)
        get('/getpagefull', query: {pageid: page_id})
      end

      def get_page_export(page_id)
        get('/getpageexport', query: {pageid: page_id})
      end

      def get_page_full_export(page_id)
        get('/getpagefullexport', query: {pageid: page_id})
      end

      private
        def get(*args)
          response = self.class.get(*args)
          raise Api::Errors::ResponseError.new(response) unless response.success?
          response
        end
    end
  end
end

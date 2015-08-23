module Tilda
  module Api
    class Request

      class << self
        def new(public_key:nil, secret_key:nil)
          Class.new(AbstractRequest){|klass|
            public_key ||= Api.configuration.public_key
            secret_key ||= Api.configuration.secret_key
            api_version = Api.configuration.api_version
            klass.base_uri "http://api.tildacdn.info/#{api_version}"
            klass.default_params publickey: public_key, secretkey: secret_key
          }.new
        end
      end

      class AbstractRequest
        include HTTParty

        def get_projects_list
          self.class.get('/getprojectslist')
        end

        def get_project(project_id)
          self.class.get('/getproject', query: {projectid: project_id})
        end

        def get_project_export(project_id)
          self.class.get('/getprojectexport', query: {projectid: project_id})
        end

        def get_pages_list(project_id)
          response = self.class.get('/getpageslist', query: {projectid: project_id})
          if response["result"].nil?
            response["status"] = "ERROR"
          end
          response
        end

        def get_page(page_id)
          self.class.get('/getpage', query: {pageid: page_id})
        end

        def get_page_full(page_id)
          self.class.get('/getpagefull', query: {pageid: page_id})
        end

        def get_page_export(page_id)
          self.class.get('/getpageexport', query: {pageid: page_id})
        end

        def get_page_full_export(page_id)
          self.class.get('/getpagefullexport', query: {pageid: page_id})
        end
      end
    end
  end
end

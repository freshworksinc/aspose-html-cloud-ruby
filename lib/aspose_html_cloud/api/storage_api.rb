# -*- coding: utf-8 -*-
=begin
  --------------------------------------------------------------------------------------------------------------------
  <copyright company="Aspose" file="storage_api.rb">
  </copyright>
  Copyright (c) 2022 Aspose.HTML for Cloud
  <summary>
   Permission is hereby granted, free of charge, to any person obtaining a copy
   of this software and associated documentation files (the "Software"), to deal
   in the Software without restriction, including without limitation the rights
   to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
   copies of the Software, and to permit persons to whom the Software is
   furnished to do so, subject to the following conditions:
 
   The above copyright notice and this permission notice shall be included in all
   copies or substantial portions of the Software.
 
   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
   IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
   AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
   LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
   OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
   SOFTWARE.
  </summary>
  --------------------------------------------------------------------------------------------------------------------
=end

require "uri"

module AsposeHtml
  class StorageApi
    attr_accessor :api_client

    def initialize(args)
      @api_client = AsposeHtml::ApiClient.default(args)
    end

################################################################################
#                             Storage Api
################################################################################

# Get disc usage
# @param [Hash] opts the optional parameters
# @option opts [String] :storage_name Storage name
# @return [DiscUsage]
    def get_disc_usage(opts = {})
      data, _status_code, _headers = get_disc_usage_with_http_info(opts)
      data
    end

# Get disc usage
# @param [Hash] opts the optional parameters
# @option opts [String] :storage_name Storage name
# @return [Array<(DiscUsage, Fixnum, Hash)>] DiscUsage data, response status code and response headers
    def get_disc_usage_with_http_info(opts = {})
      if @api_client.config.debug
        @api_client.config.logger.debug 'Calling API: StorageApi.get_disc_usage ...'
      end
      # resource path
      local_var_path = '/html/storage/disc'

      # query parameters
      query_params = {}
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        :header_params => header_params,
                                                        :query_params => query_params,
                                                        :form_params => form_params,
                                                        :body => post_body,
                                                        :return_type => 'DiscUsage')
      if @api_client.config.debug
        @api_client.config.logger.debug "API called: StorageApi#get_disc_usage\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


# Check if file or folder exists
# @param path File or folder path e.g. &#39;/file.ext&#39; or &#39;/folder&#39;
# @param [Hash] opts the optional parameters
# @option opts [String] :storage_name Storage name
# @option opts [String] :version_id File version ID
# @return [ObjectExist]
    def object_exists(path, opts = {})
      data, _status_code, _headers = object_exists_with_http_info(path, opts)
      data
    end

# Check if file or folder exists
# @param path File or folder path e.g. &#39;/file.ext&#39; or &#39;/folder&#39;
# @param [Hash] opts the optional parameters
# @option opts [String] :storage_name Storage name
# @option opts [String] :version_id File version ID
# @return [Array<(ObjectExist, Fixnum, Hash)>] ObjectExist data, response status code and response headers
    def object_exists_with_http_info(path, opts = {})
      if @api_client.config.debug
        @api_client.config.logger.debug 'Calling API: StorageApi.object_exists ...'
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling StorageApi.object_exists"
      end
      # resource path
      local_var_path = '/html/storage/exist'

      # query parameters
      query_params = {}
      query_params[:'path'] = path.to_s
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?
      query_params[:'versionId'] = opts[:'version_id'] if !opts[:'version_id'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        :header_params => header_params,
                                                        :query_params => query_params,
                                                        :form_params => form_params,
                                                        :body => post_body,
                                                        :return_type => 'ObjectExist')
      if @api_client.config.debug
        @api_client.config.logger.debug "API called: StorageApi#object_exists\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

# Check if storage exists
# @param storage_name Storage name
# @param [Hash] opts the optional parameters
# @return [StorageExist]
    def storage_exists(storage_name, opts = {})
      data, _status_code, _headers = storage_exists_with_http_info(storage_name, opts)
      data
    end

# Check if storage exists
# @param storage_name Storage name
# @param [Hash] opts the optional parameters
# @return [Array<(StorageExist, Fixnum, Hash)>] StorageExist data, response status code and response headers
    def storage_exists_with_http_info(storage_name, opts = {})
      if @api_client.config.debug
        @api_client.config.logger.debug 'Calling API: StorageApi.storage_exists ...'
      end
      # verify the required parameter 'storage_name' is set
      if @api_client.config.client_side_validation && storage_name.nil?
        fail ArgumentError, "Missing the required parameter 'storage_name' when calling StorageApi.storage_exists"
      end
      # resource path
      local_var_path = '/html/storage/exist/storage'

      # query parameters
      query_params = {}
      query_params[:'storageName'] = storage_name.to_s

        # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        :header_params => header_params,
                                                        :query_params => query_params,
                                                        :form_params => form_params,
                                                        :body => post_body,
                                                        :return_type => 'StorageExist')
      if @api_client.config.debug
        @api_client.config.logger.debug "API called: StorageApi#storage_exists\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    ################################################################################
    #                           File Api
    ################################################################################

    # Delete file
    # @param path File path e.g. &#39;/folder/file.ext&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage_name Storage name
    # @option opts [String] :version_id File version ID to delete
    # @return [nil]
    def delete_file(path, opts = {})
      delete_file_with_http_info(path, opts)
      nil
    end

    # Delete file
    # @param path File path e.g. &#39;/folder/file.ext&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage_name Storage name
    # @option opts [String] :version_id File version ID to delete
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_file_with_http_info(path, opts = {})
      if @api_client.config.debug
        @api_client.config.logger.debug 'Calling API: StorageApi.delete_file ...'
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling StorageApi.delete_file"
      end
      # resource path
      local_var_path = '/html/file'

      # query parameters
      query_params = {}
      query_params[:'path'] = path.to_s
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?
      query_params[:'versionId'] = opts[:'version_id'] if !opts[:'version_id'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        :header_params => header_params,
                                                        :query_params => query_params,
                                                        :form_params => form_params,
                                                        :body => post_body)
      if @api_client.config.debug
        @api_client.config.logger.debug "API called: StorageApi#delete_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Download file
    # @param path File path e.g. &#39;/folder/file.ext&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage_name Storage name
    # @option opts [String] :version_id File version ID to download
    # @return [File]
    def download_file(path, opts = {})
      data, _status_code, _headers = download_file_with_http_info(path, opts)
      data
    end

    # Download file
    # @param path File path e.g. &#39;/folder/file.ext&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage_name Storage name
    # @option opts [String] :version_id File version ID to download
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def download_file_with_http_info(path, opts = {})
      if @api_client.config.debug
        @api_client.config.logger.debug 'Calling API: StorageApi.download_file ...'
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling StorageApi.download_file"
      end
      # resource path
      local_var_path = '/html/file'

      # query parameters
      query_params = {}
      query_params[:'path'] = path.to_s
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?
      query_params[:'versionId'] = opts[:'version_id'] if !opts[:'version_id'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(
          ['application/octet-stream'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        :header_params => header_params,
                                                        :query_params => query_params,
                                                        :form_params => form_params,
                                                        :body => post_body,
                                                        :return_type => 'File')
      if @api_client.config.debug
        @api_client.config.logger.debug "API called: StorageApi#download_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Upload file
    # @param path Path where to upload including filename and extension e.g. /file.ext or /Folder 1/file.ext             If the content is multipart and path does not contains the file name it tries to get them from filename parameter             from Content-Disposition header.
    # @param file File to upload
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage_name Storage name
    # @return [FilesUploadResult]
    def upload_file(path, file, opts = {})
      data, _status_code, _headers = upload_file_with_http_info(path, file, opts)
      data
    end

    # Upload file
    # @param path Path where to upload including filename and extension e.g. /file.ext or /Folder 1/file.ext If the content is multipart and path does not contains the file name it tries to get them from filename parameter from Content-Disposition header.
    # @param file File to upload
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage_name Storage name
    # @return [Array<(FilesUploadResult, Fixnum, Hash)>] FilesUploadResult data, response status code and response headers
    def upload_file_with_http_info(path, file, opts = {})
      if @api_client.config.debug
        @api_client.config.logger.debug 'Calling API: StorageApi.upload_file ...'
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling StorageApi.upload_file"
      end
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling StorageApi.upload_file"
      end
      # resource path
      local_var_path = '/html/file'

      # query parameters
      query_params = {}
      query_params[:'path'] = path.to_s
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params['file'] = File.new(file)
      # http body (model)
      post_body = nil

      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        :header_params => header_params,
                                                        :query_params => query_params,
                                                        :form_params => form_params,
                                                        :body => post_body,
                                                        :return_type => 'FilesUploadResult')
      if @api_client.config.debug
        @api_client.config.logger.debug "API called: StorageApi#upload_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end

      if status_code != 200
        fail ArgumentError, "Unable upload file"
      end
      return data, status_code, headers
    end

    ################################################################################
    #                           Folder Api
    ################################################################################

    # Create the folder
    # @param path Folder path to create e.g. &#39;folder_1/folder_2/&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage_name Storage name
    # @return [nil]
    def create_folder(path, opts = {})
      create_folder_with_http_info(path, opts)
      nil
    end

    # Create the folder
    # @param path Folder path to create e.g. &#39;folder_1/folder_2/&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage_name Storage name
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def create_folder_with_http_info(path, opts = {})
      if @api_client.config.debug
        @api_client.config.logger.debug 'Calling API: StorageApi.create_folder ...'
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling StorageApi.create_folder"
      end
      # resource path
      local_var_path = '/html/folder'

      # query parameters
      query_params = {}
      query_params[:'path'] = path.to_s
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        :header_params => header_params,
                                                        :query_params => query_params,
                                                        :form_params => form_params,
                                                        :body => post_body)
      if @api_client.config.debug
        @api_client.config.logger.debug "API called: StorageApi#create_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete folder
    # @param path Folder path e.g. &#39;/folder&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage_name Storage name
    # @option opts [BOOLEAN] :recursive Enable to delete folders, subfolders and files (default to false)
    # @return [nil]
    def delete_folder(path, opts = {})
      delete_folder_with_http_info(path, opts)
      nil
    end

    # Delete folder
    # @param path Folder path e.g. &#39;/folder&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage_name Storage name
    # @option opts [BOOLEAN] :recursive Enable to delete folders, subfolders and files
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_folder_with_http_info(path, opts = {})
      if @api_client.config.debug
        @api_client.config.logger.debug 'Calling API: StorageApi.delete_folder ...'
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling StorageApi.delete_folder"
      end
      # resource path
      local_var_path = '/html/folder'

      # query parameters
      query_params = {}
      query_params[:'path'] = path.to_s
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?
      query_params[:'recursive'] = opts[:'recursive'] if !opts[:'recursive'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        :header_params => header_params,
                                                        :query_params => query_params,
                                                        :form_params => form_params,
                                                        :body => post_body)
      if @api_client.config.debug
        @api_client.config.logger.debug "API called: StorageApi#delete_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all files and folders within a folder
    # @param path Folder path e.g. &#39;/folder&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage_name Storage name
    # @return [FilesList]
    def get_files_list(path, opts = {})
      data, _status_code, _headers = get_files_list_with_http_info(path, opts)
      data
    end

    # Get all files and folders within a folder
    # @param path Folder path e.g. &#39;/folder&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage_name Storage name
    # @return [Array<(FilesList, Fixnum, Hash)>] FilesList data, response status code and response headers
    def get_files_list_with_http_info(path, opts = {})
      if @api_client.config.debug
        @api_client.config.logger.debug 'Calling API: StorageApi.get_files_list ...'
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling StorageApi.get_files_list"
      end
      # resource path
      local_var_path = '/html/folder'

      # query parameters
      query_params = {}
      query_params[:'path'] = path.to_s
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        :header_params => header_params,
                                                        :query_params => query_params,
                                                        :form_params => form_params,
                                                        :body => post_body,
                                                        :return_type => 'FilesList')
      if @api_client.config.debug
        @api_client.config.logger.debug "API called: StorageApi#get_files_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

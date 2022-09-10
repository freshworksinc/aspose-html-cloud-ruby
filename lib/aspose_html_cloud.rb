# -*- coding: utf-8 -*-
=begin
  --------------------------------------------------------------------------------------------------------------------
  <copyright company="Aspose" file="aspose_html_cloud.rb">
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

# Common files
require 'aspose_html_cloud/api_client'
require 'aspose_html_cloud/api_error'
require 'aspose_html_cloud/version'
require 'aspose_html_cloud/configuration'

# APIs HTML
require 'aspose_html_cloud/api/html_api'

# APIs Storage
require 'aspose_html_cloud/api/storage_api'

# Models Storage
require 'aspose_html_cloud/models/disc_usage'
require 'aspose_html_cloud/models/error'
require 'aspose_html_cloud/models/error_details'
require 'aspose_html_cloud/models/file_version'
require 'aspose_html_cloud/models/file_versions'
require 'aspose_html_cloud/models/files_list'
require 'aspose_html_cloud/models/files_upload_result'
require 'aspose_html_cloud/models/object_exist'
require 'aspose_html_cloud/models/storage_exist'
require 'aspose_html_cloud/models/storage_file'
require 'aspose_html_cloud/models/conversion_result'

module AsposeHtml
  class << self
    def configure(args)
      if block_given?
        yield(Configuration.default(args))
      else
        Configuration.default(args)
      end
    end
  end
end

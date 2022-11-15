# -*- coding: utf-8 -*-
=begin
  --------------------------------------------------------------------------------------------------------------------
  <copyright company="Aspose" file="html_api.rb">
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
  class HtmlApi
    attr_accessor :api_client

    def initialize(args)
      @api_client = AsposeHtml::ApiClient.default(args)
      @storage_api = AsposeHtml::StorageApi.new args
    end


    # Converting the HTML, EPUB document from the local file and putting the result in the local file
    #
    # @param src Full path to source file.
    # @param dst Full path to a result file (pdf, xps, docx, md, mhtml, jpeg, png, bmp, tiff, gif).
    # @param [Hash, nil] options the optional parameters
    # @option options [Double] :width Resulting width. For images in pixels, for PDF, XPS, DOCX in inches.
    # @option options [Double] :height Resulting height. For images in pixels, for PDF, XPS, DOCX in inches.
    # @option options [Double] :left_margin Left resulting margin. For images in pixels, for PDF, XPS, DOCX in inches.
    # @option options [Double] :right_margin Right resulting margin. For images in pixels, for PDF, XPS, DOCX in inches.
    # @option options [Double] :top_margin Top resulting margin. For images in pixels, for PDF, XPS, DOCX in inches.
    # @option options [Double] :bottom_margin Bottom resulting margin. For images in pixels, for PDF, XPS, DOCX in inches.
    # @return [ConversionResult] Result of conversion. See ConversionResult object.
    def convert_local_to_local(src, dst, options = nil)
      convert(src, dst, true, true, false, options)
    end

    # Converting the HTML, EPUB document from the local file and putting the result in the storage
    #
    # @param src Full path to source file.
    # @param dst Full path to a result file (pdf, xps, docx, md, mhtml, jpeg, png, bmp, tiff, gif).
    # @param storage Storage name. Default storage is nil.
    # @param [Hash, nil] options the optional parameters
    # @option options [Double] :width Resulting width. For images in pixels, for PDF, XPS, DOCX in inches.
    # @option options [Double] :height Resulting height. For images in pixels, for PDF, XPS, DOCX in inches.
    # @option options [Double] :left_margin Left resulting margin. For images in pixels, for PDF, XPS, DOCX in inches.
    # @option options [Double] :right_margin Right resulting margin. For images in pixels, for PDF, XPS, DOCX in inches.
    # @option options [Double] :top_margin Top resulting margin. For images in pixels, for PDF, XPS, DOCX in inches.
    # @option options [Double] :bottom_margin Bottom resulting margin. For images in pixels, for PDF, XPS, DOCX in inches.
    # @return [ConversionResult] Result of conversion. See ConversionResult object.
    def convert_local_to_storage(src, dst, storage, options=nil)
      convert(src, dst, true, false, false, options, storage)
    end

    # Converting the HTML, EPUB document from the storage and putting the result in the local file
    #
    # @param src Full path to source file.
    # @param dst Full path to a result file (pdf, xps, docx, md, mhtml, jpeg, png, bmp, tiff, gif).
    # @param storage Storage name. Default storage is nil.
    # @param [Hash, nil] options the optional parameters
    # @option options [Double] :width Resulting width. For images in pixels, for PDF, XPS, DOCX in inches.
    # @option options [Double] :height Resulting height. For images in pixels, for PDF, XPS, DOCX in inches.
    # @option options [Double] :left_margin Left resulting margin. For images in pixels, for PDF, XPS, DOCX in inches.
    # @option options [Double] :right_margin Right resulting margin. For images in pixels, for PDF, XPS, DOCX in inches.
    # @option options [Double] :top_margin Top resulting margin. For images in pixels, for PDF, XPS, DOCX in inches.
    # @option options [Double] :bottom_margin Bottom resulting margin. For images in pixels, for PDF, XPS, DOCX in inches.
    # @return [ConversionResult] Result of conversion. See ConversionResult object.
    def convert_storage_to_local(src, dst, storage, options=nil)
      convert(src, dst, false, true, false, options, storage)
    end

    # Converting the HTML, EPUB document from the storage and putting the result in the storage
    #
    # @param src Full path to source file.
    # @param dst Full path to a result file (pdf, xps, docx, md, mhtml, jpeg, png, bmp, tiff, gif).
    # @param storage Storage name. Default storage is nil.
    # @param [Hash, nil] options the optional parameters
    # @option options [Double] :width Resulting width. For images in pixels, for PDF, XPS, DOCX in inches.
    # @option options [Double] :height Resulting height. For images in pixels, for PDF, XPS, DOCX in inches.
    # @option options [Double] :left_margin Left resulting margin. For images in pixels, for PDF, XPS, DOCX in inches.
    # @option options [Double] :right_margin Right resulting margin. For images in pixels, for PDF, XPS, DOCX in inches.
    # @option options [Double] :top_margin Top resulting margin. For images in pixels, for PDF, XPS, DOCX in inches.
    # @option options [Double] :bottom_margin Bottom resulting margin. For images in pixels, for PDF, XPS, DOCX in inches.
    # @return [ConversionResult] Result of conversion. See ConversionResult object.
    def convert_storage_to_storage(src, dst, storage, options=nil)
      convert(src, dst, false, false, false, options, storage)
    end

    # Converting the HTML page from URL and putting the result in the local file
    #
    # @param src URI of the website.
    # @param dst Full path to a result file (pdf, xps, docx, md, mhtml, jpeg, png, bmp, tiff, gif).
    # @param [Hash, nil] options the optional parameters
    # @option options [Double] :width Resulting width. For images in pixels, for PDF, XPS, DOCX in inches.
    # @option options [Double] :height Resulting height. For images in pixels, for PDF, XPS, DOCX in inches.
    # @option options [Double] :left_margin Left resulting margin. For images in pixels, for PDF, XPS, DOCX in inches.
    # @option options [Double] :right_margin Right resulting margin. For images in pixels, for PDF, XPS, DOCX in inches.
    # @option options [Double] :top_margin Top resulting margin. For images in pixels, for PDF, XPS, DOCX in inches.
    # @option options [Double] :bottom_margin Bottom resulting margin. For images in pixels, for PDF, XPS, DOCX in inches.
    # @return [ConversionResult] Result of conversion. See ConversionResult object.
    def convert_url_to_local(src, dst, options=nil)
      convert(src, dst, false, true, true, options)
    end

    # Converting the HTML page from URL and putting the result in the storage
    #
    # @param src URI of the website.
    # @param dst Full path to a result file (pdf, xps, docx, md, mhtml, jpeg, png, bmp, tiff, gif).
    # @param storage Storage name. Default storage is nil.
    # @param [Hash, nil] options the optional parameters
    # @option options [Double] :width Resulting width. For images in pixels, for PDF, XPS, DOCX in inches.
    # @option options [Double] :height Resulting height. For images in pixels, for PDF, XPS, DOCX in inches.
    # @option options [Double] :left_margin Left resulting margin. For images in pixels, for PDF, XPS, DOCX in inches.
    # @option options [Double] :right_margin Right resulting margin. For images in pixels, for PDF, XPS, DOCX in inches.
    # @option options [Double] :top_margin Top resulting margin. For images in pixels, for PDF, XPS, DOCX in inches.
    # @option options [Double] :bottom_margin Bottom resulting margin. For images in pixels, for PDF, XPS, DOCX in inches.
    # @return [ConversionResult] Result of conversion. See ConversionResult object.
    def convert_url_to_storage(src, dst, storage, options=nil)
      convert(src, dst, false, false, true, options, storage)
    end

    # Converting the HTML document to various formats
    #
    # @param src Source file or URL.
    # @param dst Full path to a result file (pdf, xps, docx, md, mhtml, jpeg, png, bmp, tiff, gif).
    # @param src_in_local Flag, true if source in the local file.
    # @param dst_in_local Flag, true if result in the local file.
    # @param is_url Flag, true if source is website.
    # @param [Hash, nil] options the optional parameters
    # @option options [Double] :width Resulting width. For images in pixels, for PDF, XPS, DOCX in inches.
    # @option options [Double] :height Resulting height. For images in pixels, for PDF, XPS, DOCX in inches.
    # @option options [Double] :left_margin Left resulting margin. For images in pixels, for PDF, XPS, DOCX in inches.
    # @option options [Double] :right_margin Right resulting margin. For images in pixels, for PDF, XPS, DOCX in inches.
    # @option options [Double] :top_margin Top resulting margin. For images in pixels, for PDF, XPS, DOCX in inches.
    # @option options [Double] :bottom_margin Bottom resulting margin. For images in pixels, for PDF, XPS, DOCX in inches.
    # @param storage_name Storage name. Default storage is nil.
    # @return [ConversionResult] Result of conversion. See ConversionResult object.
    def convert(src, dst, src_in_local, dst_in_local, is_url, options=nil, storage_name=nil)
      if src_in_local
        res = @storage_api.upload_file("/", src)
        if res.uploaded.length != 1 || res.errors.length != 0
          fail ApiError.new('Unable to upload file')
        end
        file_in_storage = res.uploaded[0]
      else
        file_in_storage = src
      end

      out_file = File.basename(dst)
      out_file = dst unless dst_in_local

      input_format = 'html'
      input_format = get_input_format(src) unless is_url

      output_format = File.extname(dst).strip.downcase[1..-1]

      if output_format == 'jpg'
        output_format = 'jpeg'
      elsif output_format == 'mht'
        output_format = 'mhtml'
      elsif output_format == 'tif'
        output_format = 'tiff'
      end

      local_var_path = "/html/conversion/{from}-{to}".sub('{' + 'from' + '}', input_format.to_s).sub('{' + 'to' + '}', output_format.to_s)

      post_body = {}
      post_body[:'inputPath'] = file_in_storage.to_s
      post_body[:'outputFile'] = out_file.to_s
      post_body[:'storageName'] = storage_name.to_s

      unless options.nil?
        post_body[:'options'] = {}
        post_body[:'options'][:'width'] = options[:'width'] unless options[:'width'].nil?
        post_body[:'options'][:'height'] = options[:'height'] unless options[:'height'].nil?
        post_body[:'options'][:'leftMargin'] = options[:'left_margin'] unless options[:'left_margin'].nil?
        post_body[:'options'][:'rightMargin'] = options[:'right_margin'] unless options[:'right_margin'].nil?
        post_body[:'options'][:'topMargin'] = options[:'top_margin'] unless options[:'top_margin'].nil?
        post_body[:'options'][:'bottomMargin'] = options[:'bottom_margin'] unless options[:'bottom_margin'].nil?
        post_body[:'options'][:'resolution'] = options[:'resolution'] unless options[:'resolution'].nil?
        post_body[:'options'][:'background'] = options[:'background'] unless options[:'background'].nil?
        post_body[:'options'][:'jpegquality'] = options[:'jpeg_quality'] unless options[:'jpeg_quality'].nil?
        post_body[:'options'][:'usegit'] = options[:'use_git'] unless options[:'use_git'].nil?
        post_body[:'options'][:'error_threshold'] = options[:'error_threshold'] unless options[:'error_threshold'].nil?
        post_body[:'options'][:'max_iterations'] = options[:'max_iterations'] unless options[:'max_iterations'].nil?
        post_body[:'options'][:'colors_limit'] = options[:'colors_limit'] unless options[:'colors_limit'].nil?
        post_body[:'options'][:'line_width'] = options[:'line_width'] unless options[:'line_width'].nil?
      end

      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        :header_params => header_params,
                                                        :query_params => query_params,
                                                        :form_params => form_params,
                                                        :body => post_body,
                                                        :return_type => 'ConversionResult')
      if @api_client.config.debug
        @api_client.config.logger.debug "API called: Create task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end

      if status_code != 200
        fail ApiError.new('Conversion failed')
      end

      while true
        data, status_code, headers = get_status(data.id)
        fail ApiError.new('Conversion failed') if data.code != 200 or data.status == 'faulted' or data.status == 'canceled'
        break if data.status == 'completed'
        sleep 3
      end

      if dst_in_local
        out_folder = File.dirname(dst)
        d = @storage_api.download_file(data.file)
        out_name = out_folder + '/' + File.basename(data.file)
        File.rename(d, out_name)
        data.file = out_name
      end

      data
    end

    def get_status(id)

      local_var_path = "/html/conversion/{id}".sub('{' + 'id' + '}', id.to_s)
      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      query_params = {}
      form_params = {}
      post_body = nil

      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        :header_params => header_params,
                                                        :query_params => query_params,
                                                        :form_params => form_params,
                                                        :body => post_body,
                                                        :return_type => 'ConversionResult')

    end

    def get_input_format(path)
      ext = File.extname(path).downcase[1..-1]
      case ext
        when 'htm'
          return 'html'
        when 'mht'
          return 'mhtml'
        when 'xml'
          return 'xhtml'
        when 'jpg'
          return 'jpeg'
        when 'tif'
          return 'tiff'
        else
          ext
      end
    end

  end
end
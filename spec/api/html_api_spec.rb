# -*- coding: utf-8 -*-
=begin
  --------------------------------------------------------------------------------------------------------------------
  <copyright company="Aspose" file="html_api_spec.rb">
  </copyright>
   Copyright (c) 2019 Aspose.HTML for Cloud
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

require 'spec_helper'
require 'json'

describe 'Test html_api' do
  before(:all) do
    # run before all tests
    @instance = AsposeHtml::HtmlApi.new CONFIG
  end

  describe 'test an instance of HtmlApi' do
    it 'should create an instance of HtmlApi' do
      expect(@instance).to be_instance_of(AsposeHtml::HtmlApi)
    end
  end

  #################################################
  #            Conversion API
  #################################################

  # unit tests for get_convert_document_to_image from html format
  # Convert the HTML document from the storage by its name to the specified image format.
  #
  # @param name Document name.
  # @param out_format Resulting image format (jpeg, png, bmp, tiff, gif).
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :width Resulting image width.
  # @option opts [Integer] :height Resulting image height.
  # @option opts [Integer] :left_margin Left resulting image margin.
  # @option opts [Integer] :right_margin Right resulting image margin.
  # @option opts [Integer] :top_margin Top resulting image margin.
  # @option opts [Integer] :bottom_margin Bottom resulting image margin.
  # @option opts [Integer] :resolution Resolution of resulting image.
  # @option opts [String] :folder The source document folder.
  # @option opts [String] :storage The source document storage.
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'get_convert_html_to_image test' do
    name = "test1.html"
    opts = {
        width: 800,
        height: 1000,
        left_margin: 30,
        right_margin: 30,
        top_margin: 50,
        bottom_margin: 50,
        resolution: 300,
        folder: "HtmlTestDoc",
        storage: nil
    }

    # Upload file to server
    upload_file_helper(name)

    it "Convert html to jpeg" do
      out_format = "jpeg"
      answer = @instance.get_convert_document_to_image(name, out_format, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer[:file], "Convert_get_html.jpeg")
    end

    it "Convert html to png" do
      out_format = "png"
      answer = @instance.get_convert_document_to_image(name, out_format, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer[:file], "Convert_get_html.png")
    end

    it "Convert html to bmp" do
      out_format = "bmp"
      answer = @instance.get_convert_document_to_image(name, out_format, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer[:file], "Convert_get_html.bmp")
    end

    it "Convert html to tiff" do
      out_format = "tiff"
      answer = @instance.get_convert_document_to_image(name, out_format, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer[:file], "Convert_get_html.tiff")
    end

    it "Convert html to gif" do
      out_format = "gif"
      answer = @instance.get_convert_document_to_image(name, out_format, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer[:file], "Convert_get_html.gif")
    end
  end

  # unit tests for get_convert_document_to_image from epub format
  # Convert the EPUB document from the storage by its name to the specified image format.
  #
  # @param name Document name.
  # @param out_format Resulting image format (jpeg, png, bmp, tiff, gif).
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :width Resulting image width.
  # @option opts [Integer] :height Resulting image height.
  # @option opts [Integer] :left_margin Left resulting image margin.
  # @option opts [Integer] :right_margin Right resulting image margin.
  # @option opts [Integer] :top_margin Top resulting image margin.
  # @option opts [Integer] :bottom_margin Bottom resulting image margin.
  # @option opts [Integer] :resolution Resolution of resulting image.
  # @option opts [String] :folder The source document folder.
  # @option opts [String] :storage The source document storage.
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'get_convert_epub_to_image test' do
    name = "georgia.epub"
    opts = {
        width: 800,
        height: 1000,
        left_margin: 30,
        right_margin: 30,
        top_margin: 50,
        bottom_margin: 50,
        resolution: 300,
        folder: "HtmlTestDoc",
        storage: nil
    }
    # Upload file to server
    upload_file_helper(name)

    it "Convert epub to jpeg" do
      out_format = "jpeg"
      answer = @instance.get_convert_document_to_image(name, out_format, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer[:file], "Convert_get_epub_jpeg.zip")
    end

    it "Convert epub to png" do
      out_format = "png"
      answer = @instance.get_convert_document_to_image(name, out_format, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer[:file], "Convert_get_epub_png.zip")
    end

    it "Convert epub to bmp" do
      out_format = "bmp"
      answer = @instance.get_convert_document_to_image(name, out_format, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer[:file], "Convert_get_epub_bmp.zip")
    end

    it "Convert epub to tiff" do
      out_format = "tiff"
      answer = @instance.get_convert_document_to_image(name, out_format, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer[:file], "Convert_get_epub_tiff.zip")
    end

    it "Convert epub to gif" do
      out_format = "gif"
      answer = @instance.get_convert_document_to_image(name, out_format, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer[:file], "Convert_get_epub_gif.zip")
    end
  end

  # unit tests for get_convert_document_to_image from svg format
  # Convert the SVG document from the storage by its name to the specified image format.
  #
  # @param name Document name.
  # @param out_format Resulting image format (jpeg, png, bmp, tiff, gif).
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :width Resulting image width.
  # @option opts [Integer] :height Resulting image height.
  # @option opts [Integer] :left_margin Left resulting image margin.
  # @option opts [Integer] :right_margin Right resulting image margin.
  # @option opts [Integer] :top_margin Top resulting image margin.
  # @option opts [Integer] :bottom_margin Bottom resulting image margin.
  # @option opts [Integer] :resolution Resolution of resulting image.
  # @option opts [String] :folder The source document folder.
  # @option opts [String] :storage The source document storage.
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'get_convert_svg_to_image test' do
    name = "Map-World.svg"
    opts = {
        width: 800,
        height: 1000,
        left_margin: 30,
        right_margin: 30,
        top_margin: 50,
        bottom_margin: 50,
        resolution: 300,
        folder: "HtmlTestDoc",
        storage: nil
    }

    # Upload file to server
    upload_file_helper(name)

    it "Convert svg to jpeg" do
      out_format = "jpeg"
      answer = @instance.get_convert_document_to_image(name, out_format, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer[:file], "Convert_get_svg.jpeg")
    end

    it "Convert svg to png" do
      out_format = "png"
      answer = @instance.get_convert_document_to_image(name, out_format, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer[:file], "Convert_get_svg.png")
    end

    it "Convert svg to bmp" do
      out_format = "bmp"
      answer = @instance.get_convert_document_to_image(name, out_format, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer[:file], "Convert_get_svg.bmp")
    end

    it "Convert svg to tiff" do
      out_format = "tiff"
      answer = @instance.get_convert_document_to_image(name, out_format, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer[:file], "Convert_get_svg.tiff")
    end

    it "Convert svg to gif" do
      out_format = "gif"
      answer = @instance.get_convert_document_to_image(name, out_format, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer[:file], "Convert_get_svg.gif")
    end
  end

  # unit tests for get_convert_document_to_image_by_url
  # Convert the HTML page from the web by its URL to the specified image format.
  #
  # @param source_url Source page URL.
  # @param out_format Resulting image format.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :width Resulting image width.
  # @option opts [Integer] :height Resulting image height.
  # @option opts [Integer] :left_margin Left resulting image margin.
  # @option opts [Integer] :right_margin Right resulting image margin.
  # @option opts [Integer] :top_margin Top resulting image margin.
  # @option opts [Integer] :bottom_margin Bottom resulting image margin.
  # @option opts [Integer] :resolution Resolution of resulting image.
  # @option opts [String] :folder The document folder.
  # @option opts [String] :storage The document storage.
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'get_convert_html_to_image_by_url test' do
    source_url = "https://stallman.org/articles/anonymous-payments-thru-phones.html"
    opts = {
        width: 800,
        height: 1000,
        left_margin: 30,
        right_margin: 30,
        top_margin: 50,
        bottom_margin: 50,
        resolution: 300,
        folder: "HtmlTestDoc",
        storage: nil
    }

    it "Convert url to jpeg" do
      out_format = "jpeg"
      answer = @instance.get_convert_document_to_image_by_url(source_url, out_format, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer[:file], "Convert_get_url.jpeg")
    end

    it "Convert url to png" do
      out_format = "png"
      answer = @instance.get_convert_document_to_image_by_url(source_url, out_format, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer[:file], "Convert_get_url.png")
    end

    it "Convert url to bmp" do
      out_format = "bmp"
      answer = @instance.get_convert_document_to_image_by_url(source_url, out_format, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer[:file], "Convert_get_url.bmp")
    end

    it "Convert url to tiff" do
      out_format = "tiff"
      answer = @instance.get_convert_document_to_image_by_url(source_url, out_format, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer[:file], "Convert_get_url.tiff")
    end

    it "Convert url to gif" do
      out_format = "gif"
      answer = @instance.get_convert_document_to_image_by_url(source_url, out_format, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer[:file], "Convert_get_url.gif")
    end
  end

  # unit tests for get_convert_document_to_pdf from html format
  # Convert the HTML document from the storage by its name to PDF.
  #
  # @param name Document name.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :width Resulting image width.
  # @option opts [Integer] :height Resulting image height.
  # @option opts [Integer] :left_margin Left resulting image margin.
  # @option opts [Integer] :right_margin Right resulting image margin.
  # @option opts [Integer] :top_margin Top resulting image margin.
  # @option opts [Integer] :bottom_margin Bottom resulting image margin.
  # @option opts [String] :folder The document folder.
  # @option opts [String] :storage The document storage.
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'get_convert_html_to_pdf test' do
    it "Convert html to pdf" do
      name = "test1.html"
      opts = {
          width: 800,
          height: 1000,
          left_margin: 30,
          right_margin: 30,
          top_margin: 50,
          bottom_margin: 50,
          folder: "HtmlTestDoc",
          storage: nil
      }

      # Upload file to server
      res = upload_file_helper(name)
      expect(res.uploaded.length).to eql(1)
      expect(res.errors.length).to eql(0)

      answer = @instance.get_convert_document_to_pdf(name, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer[:file], "Convert_get_html.pdf")
    end
  end

  # unit tests for get_convert_document_to_pdf from epub format
  # Convert the EPUB document from the storage by its name to PDF.
  #
  # @param name Document name.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :width Resulting image width.
  # @option opts [Integer] :height Resulting image height.
  # @option opts [Integer] :left_margin Left resulting image margin.
  # @option opts [Integer] :right_margin Right resulting image margin.
  # @option opts [Integer] :top_margin Top resulting image margin.
  # @option opts [Integer] :bottom_margin Bottom resulting image margin.
  # @option opts [String] :folder The document folder.
  # @option opts [String] :storage The document storage.
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'get_convert_epub_to_pdf test' do
    it "Convert epub to pdf" do
      name = "georgia.epub"
      opts = {
          width: 800,
          height: 1000,
          left_margin: 30,
          right_margin: 30,
          top_margin: 50,
          bottom_margin: 50,
          folder: "HtmlTestDoc",
          storage: nil
      }

      # Upload file to server
      res = upload_file_helper(name)
      expect(res.uploaded.length).to eql(1)
      expect(res.errors.length).to eql(0)

      answer = @instance.get_convert_document_to_pdf(name, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer[:file], "Convert_get_epub.pdf")
    end
  end

  # unit tests for get_convert_document_to_pdf from svg format
  # Convert the SVG document from the storage by its name to PDF.
  #
  # @param name Document name.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :width Resulting image width.
  # @option opts [Integer] :height Resulting image height.
  # @option opts [Integer] :left_margin Left resulting image margin.
  # @option opts [Integer] :right_margin Right resulting image margin.
  # @option opts [Integer] :top_margin Top resulting image margin.
  # @option opts [Integer] :bottom_margin Bottom resulting image margin.
  # @option opts [String] :folder The document folder.
  # @option opts [String] :storage The document storage.
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'get_convert_svg_to_pdf test' do
    it "Convert svg to pdf" do
      name = "Map-World.svg"
      opts = {
          width: 800,
          height: 1000,
          left_margin: 30,
          right_margin: 30,
          top_margin: 50,
          bottom_margin: 50,
          folder: "HtmlTestDoc",
          storage: nil
      }

      # Upload file to server
      res = upload_file_helper(name)
      expect(res.uploaded.length).to eql(1)
      expect(res.errors.length).to eql(0)

      answer = @instance.get_convert_document_to_pdf(name, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer[:file], "Convert_get_svg.pdf")
    end
  end

  # unit tests for get_convert_document_to_pdf_by_url
  # Convert the HTML page from the web by its URL to PDF.
  #
  # @param source_url Source page URL.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :width Resulting image width.
  # @option opts [Integer] :height Resulting image height.
  # @option opts [Integer] :left_margin Left resulting image margin.
  # @option opts [Integer] :right_margin Right resulting image margin.
  # @option opts [Integer] :top_margin Top resulting image margin.
  # @option opts [Integer] :bottom_margin Bottom resulting image margin.
  # @option opts [String] :folder The document folder.
  # @option opts [String] :storage The document storage.
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'get_convert_html_to_pdf_by_url test' do
    it "Convert url to pdf" do
      source_url = "https://stallman.org/articles/anonymous-payments-thru-phones.html"
      opts = {
          width: 800,
          height: 1000,
          left_margin: 30,
          right_margin: 30,
          top_margin: 50,
          bottom_margin: 50,
          folder: "HtmlTestDoc",
          storage: nil
      }

      answer = @instance.get_convert_document_to_pdf_by_url(source_url, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer[:file], "Convert_get_url.pdf")
    end
  end

  # unit tests for get_convert_document_to_xps from html format
  # Convert the HTML document from the storage by its name to XPS.
  #
  # @param name Document name.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :width Resulting image width.
  # @option opts [Integer] :height Resulting image height.
  # @option opts [Integer] :left_margin Left resulting image margin.
  # @option opts [Integer] :right_margin Right resulting image margin.
  # @option opts [Integer] :top_margin Top resulting image margin.
  # @option opts [Integer] :bottom_margin Bottom resulting image margin.
  # @option opts [String] :folder The document folder.
  # @option opts [String] :storage The document storage.
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'get_convert_html_to_xps test' do
    it "Convert html to xps" do
      name = "test1.html"
      opts = {
          width: 800,
          height: 1000,
          left_margin: 30,
          right_margin: 30,
          top_margin: 50,
          bottom_margin: 50,
          folder: "HtmlTestDoc",
          storage: nil
      }

      # Upload file to server
      res = upload_file_helper(name)
      expect(res.uploaded.length).to eql(1)
      expect(res.errors.length).to eql(0)

      answer = @instance.get_convert_document_to_xps(name, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer[:file], "Convert_get_html.xps")
    end
  end

  # unit tests for get_convert_document_to_xps from epub format
  # Convert the EPUB document from the storage by its name to XPS.
  #
  # @param name Document name.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :width Resulting image width.
  # @option opts [Integer] :height Resulting image height.
  # @option opts [Integer] :left_margin Left resulting image margin.
  # @option opts [Integer] :right_margin Right resulting image margin.
  # @option opts [Integer] :top_margin Top resulting image margin.
  # @option opts [Integer] :bottom_margin Bottom resulting image margin.
  # @option opts [String] :folder The document folder.
  # @option opts [String] :storage The document storage.
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'get_convert_epub_to_xps test' do
    it "Convert epnb to xps" do
      name = "georgia.epub"
      opts = {
          width: 800,
          height: 1000,
          left_margin: 30,
          right_margin: 30,
          top_margin: 50,
          bottom_margin: 50,
          folder: "HtmlTestDoc",
          storage: nil
      }

      # Upload file to server
      res = upload_file_helper(name)
      expect(res.uploaded.length).to eql(1)
      expect(res.errors.length).to eql(0)

      answer = @instance.get_convert_document_to_xps(name, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer[:file], "Convert_get_epub.xps")
    end
  end

  # unit tests for get_convert_document_to_xps from svg format
  # Convert the SVG document from the storage by its name to XPS.
  #
  # @param name Document name.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :width Resulting image width.
  # @option opts [Integer] :height Resulting image height.
  # @option opts [Integer] :left_margin Left resulting image margin.
  # @option opts [Integer] :right_margin Right resulting image margin.
  # @option opts [Integer] :top_margin Top resulting image margin.
  # @option opts [Integer] :bottom_margin Bottom resulting image margin.
  # @option opts [String] :folder The document folder.
  # @option opts [String] :storage The document storage.
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'get_convert_svg_to_xps test' do
    it "Convert svg to xps" do
      name = "Map-World.svg"
      opts = {
          width: 800,
          height: 1000,
          left_margin: 30,
          right_margin: 30,
          top_margin: 50,
          bottom_margin: 50,
          folder: "HtmlTestDoc",
          storage: nil
      }

      # Upload file to server
      res = upload_file_helper(name)
      expect(res.uploaded.length).to eql(1)
      expect(res.errors.length).to eql(0)

      answer = @instance.get_convert_document_to_xps(name, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer[:file], "Convert_get_svg.xps")
    end
  end

  # unit tests for get_convert_document_to_xps_by_url
  # Convert the HTML page from the web by its URL to XPS.
  #
  # @param source_url Source page URL.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :width Resulting image width.
  # @option opts [Integer] :height Resulting image height.
  # @option opts [Integer] :left_margin Left resulting image margin.
  # @option opts [Integer] :right_margin Right resulting image margin.
  # @option opts [Integer] :top_margin Top resulting image margin.
  # @option opts [Integer] :bottom_margin Bottom resulting image margin.
  # @option opts [String] :folder The document folder.
  # @option opts [String] :storage The document storage.
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'get_convert_document_to_xps_by_url test' do
    it "Convert url to xps" do
      source_url = "https://stallman.org/articles/anonymous-payments-thru-phones.html"
      opts = {
          width: 800,
          height: 1000,
          left_margin: 30,
          right_margin: 30,
          top_margin: 50,
          bottom_margin: 50,
          folder: "HtmlTestDoc",
          storage: nil
      }

      answer = @instance.get_convert_document_to_xps_by_url(source_url, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer[:file], "Convert_html_url.xps")
    end
  end

  # unit tests for post_convert_document_in_request_to_image from html format
  # Converts the HTML document (in request content) to the specified image format and uploads resulting file to storage.
  #
  # @param out_path Full resulting filename (ex. /folder1/folder2/result.jpg)
  # @param out_format (jpeg, png, bmp, tiff, gif).
  # @param file A file to be converted (html, epub, svg).
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :width Resulting document page width in points (1/96 inch).
  # @option opts [Integer] :height Resulting document page height in points (1/96 inch).
  # @option opts [Integer] :left_margin Left resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :right_margin Right resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :top_margin Top resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :bottom_margin Bottom resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :resolution Resolution of resulting image. Default is 96 dpi.
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'post_convert_html_in_request_to_image test' do
    file = File.realpath(__dir__ + '/../../testdata/test1.html')
    opts = {
        width: 800,
        height: 1000,
        left_margin: 30,
        right_margin: 30,
        top_margin: 50,
        bottom_margin: 50,
        resolution: 300
    }

    it "Upload and convert html to jpeg" do
      name = "postHtmlToJpegInReq.jpeg"
      out_path = "HtmlTestDoc/" + name
      out_format = "jpeg"

      answer = @instance.post_convert_document_in_request_to_image(out_path, out_format, file, opts)

      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, name)
    end

    it "Upload and convert html to png" do
      name = "postHtmlToPngInReq.png"
      out_path = "HtmlTestDoc/" + name
      out_format = "png"

      answer = @instance.post_convert_document_in_request_to_image(out_path, out_format, file, opts)

      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, name)
    end

    it "Upload and convert html to bmp" do
      name = "postHtmlToBmpInReq.bmp"
      out_path = "HtmlTestDoc/" + name
      out_format = "bmp"

      answer = @instance.post_convert_document_in_request_to_image(out_path, out_format, file, opts)

      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, name)
    end

    it "Upload and convert html to tiff" do
      name = "postHtmlToTiffInReq.tiff"
      out_path = "HtmlTestDoc/" + name
      out_format = "tiff"

      answer = @instance.post_convert_document_in_request_to_image(out_path, out_format, file, opts)

      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, name)
    end

    it "Upload and convert html to gif" do
      name = "postHtmlToGifInReq.gif"
      out_path = "HtmlTestDoc/" + name
      out_format = "gif"

      answer = @instance.post_convert_document_in_request_to_image(out_path, out_format, file, opts)

      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, name)
    end
  end

  # unit tests for post_convert_document_in_request_to_image from epub format
  # Converts the EPUB document (in request content) to the specified image format and uploads resulting file to storage.
  #
  # @param out_path Full resulting filename (ex. /folder1/folder2/result.jpg)
  # @param out_format (jpeg, png, bmp, tiff, gif).
  # @param file A file to be converted (html, epub, svg).
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :width Resulting document page width in points (1/96 inch).
  # @option opts [Integer] :height Resulting document page height in points (1/96 inch).
  # @option opts [Integer] :left_margin Left resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :right_margin Right resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :top_margin Top resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :bottom_margin Bottom resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :resolution Resolution of resulting image. Default is 96 dpi.
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'post_convert_epub_in_request_to_image test' do
    file = File.realpath(__dir__ + '/../../testdata/georgia.epub')
    opts = {
        width: 800,
        height: 1000,
        left_margin: 30,
        right_margin: 30,
        top_margin: 50,
        bottom_margin: 50,
        resolution: 300
    }

    it "Upload and convert epub to jpeg" do
      name = "postEpubToJpegInReq.zip"
      out_path = "HtmlTestDoc/" + name
      out_format = "jpeg"
      answer = @instance.post_convert_document_in_request_to_image(out_path, out_format, file, opts)

      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, name)
    end

    it "Upload and convert epub to png" do
      name = "postEpubToPngInReq.zip"
      out_path = "HtmlTestDoc/" + name
      out_format = "png"
      answer = @instance.post_convert_document_in_request_to_image(out_path, out_format, file, opts)

      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, name)
    end

    it "Upload and convert epub to bmp" do
      name = "postEpubToBmpInReq.zip"
      out_path = "HtmlTestDoc/" + name
      out_format = "bmp"
      answer = @instance.post_convert_document_in_request_to_image(out_path, out_format, file, opts)

      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, name)
    end

    it "Upload and convert epub to tiff" do
      name = "postEpubToTiffInReq.zip"
      out_path = "HtmlTestDoc/" + name
      out_format = "tiff"
      answer = @instance.post_convert_document_in_request_to_image(out_path, out_format, file, opts)

      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, name)
    end

    it "Upload and convert epub to gif" do
      name = "postEpubToGifInReq.zip"
      out_path = "HtmlTestDoc/" + name
      out_format = "gif"
      answer = @instance.post_convert_document_in_request_to_image(out_path, out_format, file, opts)

      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, name)
    end
  end

  # unit tests for post_convert_document_in_request_to_image from svg format
  # Converts the SVG document (in request content) to the specified image format and uploads resulting file to storage.
  #
  # @param out_path Full resulting filename (ex. /folder1/folder2/result.jpg)
  # @param out_format (jpeg, png, bmp, tiff, gif).
  # @param file A file to be converted (html, epub, svg).
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :width Resulting document page width in points (1/96 inch).
  # @option opts [Integer] :height Resulting document page height in points (1/96 inch).
  # @option opts [Integer] :left_margin Left resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :right_margin Right resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :top_margin Top resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :bottom_margin Bottom resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :resolution Resolution of resulting image. Default is 96 dpi.
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'post_convert_svg_in_request_to_image test' do
    file = File.realpath(__dir__ + '/../../testdata/Map-World.svg')
    opts = {
        width: 800,
        height: 1000,
        left_margin: 30,
        right_margin: 30,
        top_margin: 50,
        bottom_margin: 50,
        resolution: 300
    }

    it "Upload and convert svg to jpeg" do
      name = "postSvgToJpegInReq.jpeg"
      out_path = "HtmlTestDoc/" + name
      out_format = "jpeg"

      answer = @instance.post_convert_document_in_request_to_image(out_path, out_format, file, opts)

      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, name)
    end

    it "Upload and convert svg to png" do
      name = "postSvgToPngInReq.png"
      out_path = "HtmlTestDoc/" + name
      out_format = "png"

      answer = @instance.post_convert_document_in_request_to_image(out_path, out_format, file, opts)

      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, name)
    end

    it "Upload and convert svg to bmp" do
      name = "postSvgToBmpInReq.bmp"
      out_path = "HtmlTestDoc/" + name
      out_format = "bmp"

      answer = @instance.post_convert_document_in_request_to_image(out_path, out_format, file, opts)

      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, name)
    end

    it "Upload and convert svg to tiff" do
      name = "postSvgToTiffInReq.tiff"
      out_path = "HtmlTestDoc/" + name
      out_format = "tiff"

      answer = @instance.post_convert_document_in_request_to_image(out_path, out_format, file, opts)

      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, name)
    end

    it "Upload and convert svg to gif" do
      name = "postSvgToGifInReq.gif"
      out_path = "HtmlTestDoc/" + name
      out_format = "gif"

      answer = @instance.post_convert_document_in_request_to_image(out_path, out_format, file, opts)

      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, name)
    end
  end

  # unit tests for post_convert_document_in_request_to_pdf from html format
  # Converts the HTML document (in request content) to PDF and uploads resulting file to storage.
  #
  # @param out_path Full resulting filename (ex. /folder1/folder2/result.pdf)
  # @param file A file to be converted.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :width Resulting document page width in points (1/96 inch).
  # @option opts [Integer] :height Resulting document page height in points (1/96 inch).
  # @option opts [Integer] :left_margin Left resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :right_margin Right resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :top_margin Top resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :bottom_margin Bottom resulting document page margin in points (1/96 inch).
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'post_convert_html_in_request_to_pdf test' do
    it "Upload and convert html to pdf" do
      name = "postHtmlToPdfInReq.pdf"
      out_path = "HtmlTestDoc/" + name
      file = File.realpath(__dir__ + '/../../testdata/test1.html')
      opts = {
          width: 800,
          height: 1000,
          left_margin: 30,
          right_margin: 30,
          top_margin: 50,
          bottom_margin: 50
      }

      answer = @instance.post_convert_document_in_request_to_pdf(out_path, file, opts)

      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, name)
    end
  end

  # unit tests for post_convert_document_in_request_to_pdf from epub format
  # Converts the EPUB document (in request content) to PDF and uploads resulting file to storage.
  #
  # @param out_path Full resulting filename (ex. /folder1/folder2/result.pdf)
  # @param file A file to be converted.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :width Resulting document page width in points (1/96 inch).
  # @option opts [Integer] :height Resulting document page height in points (1/96 inch).
  # @option opts [Integer] :left_margin Left resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :right_margin Right resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :top_margin Top resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :bottom_margin Bottom resulting document page margin in points (1/96 inch).
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'post_convert_epub_in_request_to_pdf test' do
    it "Upload and convert epub to pdf" do
      name = "postEpubToPdfInReq.pdf"
      out_path = "HtmlTestDoc/" + name
      file = File.realpath(__dir__ + '/../../testdata/georgia.epub')
      opts = {
          width: 800,
          height: 1000,
          left_margin: 30,
          right_margin: 30,
          top_margin: 50,
          bottom_margin: 50
      }

      answer = @instance.post_convert_document_in_request_to_pdf(out_path, file, opts)

      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, name)
    end
  end

  # unit tests for post_convert_document_in_request_to_pdf from svg format
  # Converts the SVG document (in request content) to PDF and uploads resulting file to storage.
  #
  # @param out_path Full resulting filename (ex. /folder1/folder2/result.pdf)
  # @param file A file to be converted.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :width Resulting document page width in points (1/96 inch).
  # @option opts [Integer] :height Resulting document page height in points (1/96 inch).
  # @option opts [Integer] :left_margin Left resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :right_margin Right resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :top_margin Top resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :bottom_margin Bottom resulting document page margin in points (1/96 inch).
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'post_convert_svg_in_request_to_pdf test' do
    it "Upload and convert svg to pdf" do
      name = "postSvgToPdfInReq.pdf"
      out_path = "HtmlTestDoc/" + name
      file = File.realpath(__dir__ + '/../../testdata/Map-World.svg')
      opts = {
          width: 800,
          height: 1000,
          left_margin: 30,
          right_margin: 30,
          top_margin: 50,
          bottom_margin: 50
      }

      answer = @instance.post_convert_document_in_request_to_pdf(out_path, file, opts)

      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, name)
    end
  end

  # unit tests for post_convert_document_in_request_to_xps from html format
  # Converts the HTML document (in request content) to XPS and uploads resulting file to storage.
  #
  # @param out_path Full resulting filename (ex. /folder1/folder2/result.xps)
  # @param file A file to be converted.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :width Resulting document page width in points (1/96 inch).
  # @option opts [Integer] :height Resulting document page height in points (1/96 inch).
  # @option opts [Integer] :left_margin Left resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :right_margin Right resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :top_margin Top resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :bottom_margin Bottom resulting document page margin in points (1/96 inch).
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'post_convert_html_in_request_to_xps test' do
    it "Upload and convert html to xps" do
      name = "postHtmlToXpsInReq.xps"
      out_path = "HtmlTestDoc/" + name
      file = File.realpath(__dir__ + '/../../testdata/test1.html')
      opts = {
          width: 800,
          height: 1000,
          left_margin: 30,
          right_margin: 30,
          top_margin: 50,
          bottom_margin: 50
      }

      answer = @instance.post_convert_document_in_request_to_xps(out_path, file, opts)

      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, name)
    end
  end

  # unit tests for post_convert_document_in_request_to_xps from epub format
  # Converts the EPUB document (in request content) to XPS and uploads resulting file to storage.
  #
  # @param out_path Full resulting filename (ex. /folder1/folder2/result.xps)
  # @param file A file to be converted.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :width Resulting document page width in points (1/96 inch).
  # @option opts [Integer] :height Resulting document page height in points (1/96 inch).
  # @option opts [Integer] :left_margin Left resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :right_margin Right resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :top_margin Top resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :bottom_margin Bottom resulting document page margin in points (1/96 inch).
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'post_convert_epub_in_request_to_xps test' do
    it "Upload and convert epub to xps" do
      name = "postEpubToXpsInReq.xps"
      out_path = "HtmlTestDoc/" + name
      file = File.realpath(__dir__ + '/../../testdata/georgia.epub')
      opts = {
          width: 800,
          height: 1000,
          left_margin: 30,
          right_margin: 30,
          top_margin: 50,
          bottom_margin: 50
      }

      answer = @instance.post_convert_document_in_request_to_xps(out_path, file, opts)

      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, name)
    end
  end

  # unit tests for post_convert_document_in_request_to_xps from svg format
  # Converts the SVG document (in request content) to XPS and uploads resulting file to storage.
  #
  # @param out_path Full resulting filename (ex. /folder1/folder2/result.xps)
  # @param file A file to be converted.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :width Resulting document page width in points (1/96 inch).
  # @option opts [Integer] :height Resulting document page height in points (1/96 inch).
  # @option opts [Integer] :left_margin Left resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :right_margin Right resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :top_margin Top resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :bottom_margin Bottom resulting document page margin in points (1/96 inch).
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'post_convert_svg_in_request_to_xps test' do
    it "Upload and convert svg to xps" do
      name = "postSvgToXpsInReq.xps"
      out_path = "HtmlTestDoc/" + name
      file = File.realpath(__dir__ + '/../../testdata/Map-World.svg')
      opts = {
          width: 800,
          height: 1000,
          left_margin: 30,
          right_margin: 30,
          top_margin: 50,
          bottom_margin: 50
      }

      answer = @instance.post_convert_document_in_request_to_xps(out_path, file, opts)

      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, name)
    end
  end

  # unit tests for put_convert_document_to_image from html format
  # Converts the HTML document (located on storage) to the specified image format and uploads resulting file to storage.
  #
  # @param name Document name.
  # @param out_path Full resulting filename (ex. /folder1/folder2/result.jpg)
  # @param out_format (jpeg, png, bmp, tiff, gif)
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :width Resulting document page width in points (1/96 inch).
  # @option opts [Integer] :height Resulting document page height in points (1/96 inch).
  # @option opts [Integer] :left_margin Left resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :right_margin Right resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :top_margin Top resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :bottom_margin Bottom resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :resolution Resolution of resulting image. Default is 96 dpi.
  # @option opts [String] :folder The source document folder.
  # @option opts [String] :storage The source and resulting document storage.
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'put_convert_html_to_image test' do
    # Already in the storage
    name = "test1.html"
    opts = {
        width: 800,
        height: 1000,
        left_margin: 30,
        right_margin: 30,
        top_margin: 50,
        bottom_margin: 50,
        resolution: 300,
        folder: "HtmlTestDoc",
        storage: nil
    }

    it "Convert html to jpeg in storage" do
      result_name = "putHtmlToJpeg.jpeg"
      out_path = "HtmlTestDoc/" + result_name
      out_format = "jpeg"

      answer = @instance.put_convert_document_to_image(name, out_path, out_format, opts)

      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(result_name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, result_name)
    end

    it "Convert html to png in storage" do
      result_name = "putHtmlToPng.png"
      out_path = "HtmlTestDoc/" + result_name
      out_format = "png"

      answer = @instance.put_convert_document_to_image(name, out_path, out_format, opts)

      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(result_name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, result_name)
    end

    it "Convert html to bmp in storage" do
      result_name = "putHtmlToBmp.bmp"
      out_path = "HtmlTestDoc/" + result_name
      out_format = "bmp"

      answer = @instance.put_convert_document_to_image(name, out_path, out_format, opts)

      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(result_name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, result_name)
    end

    it "Convert html to tiff in storage" do
      result_name = "putHtmlToTiff.tiff"
      out_path = "HtmlTestDoc/" + result_name
      out_format = "tiff"

      answer = @instance.put_convert_document_to_image(name, out_path, out_format, opts)

      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(result_name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, result_name)
    end

    it "Convert html to gif in storage" do
      result_name = "putHtmlToGif.gif"
      out_path = "HtmlTestDoc/" + result_name
      out_format = "gif"

      answer = @instance.put_convert_document_to_image(name, out_path, out_format, opts)

      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(result_name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, result_name)
    end
  end

  # unit tests for put_convert_document_to_image from epub format
  # Converts the EPUB document (located on storage) to the specified image format and uploads resulting file to storage.
  #
  # @param name Document name.
  # @param out_path Full resulting filename (ex. /folder1/folder2/result.jpg)
  # @param out_format (jpeg, png, bmp, tiff, gif)
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :width Resulting document page width in points (1/96 inch).
  # @option opts [Integer] :height Resulting document page height in points (1/96 inch).
  # @option opts [Integer] :left_margin Left resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :right_margin Right resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :top_margin Top resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :bottom_margin Bottom resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :resolution Resolution of resulting image. Default is 96 dpi.
  # @option opts [String] :folder The source document folder.
  # @option opts [String] :storage The source and resulting document storage.
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'put_convert_epub_to_image test' do

    # Already in the storage
    name = "georgia.epub"
    opts = {
        width: 800,
        height: 1000,
        left_margin: 30,
        right_margin: 30,
        top_margin: 50,
        bottom_margin: 50,
        resolution: 300,
        folder: "HtmlTestDoc",
        storage: nil
    }

    it "Convert epub to jpeg in storage" do

      result_name = "putEpubToJpeg.zip"
      out_path = "HtmlTestDoc/" + result_name
      out_format = "jpeg"

      answer = @instance.put_convert_document_to_image(name, out_path, out_format, opts)

      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(result_name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, result_name)
    end

    it "Convert epub to png in storage" do
      result_name = "putEpubToPng.zip"
      out_path = "HtmlTestDoc/" + result_name
      out_format = "png"

      answer = @instance.put_convert_document_to_image(name, out_path, out_format, opts)

      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(result_name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, result_name)
    end

    it "Convert epub to bmp in storage" do
      result_name = "putEpubToBmp.zip"
      out_path = "HtmlTestDoc/" + result_name
      out_format = "bmp"

      answer = @instance.put_convert_document_to_image(name, out_path, out_format, opts)

      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(result_name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, result_name)
    end

    it "Convert epub to tiff in storage" do
      result_name = "putEpubToTiff.zip"
      out_path = "HtmlTestDoc/" + result_name
      out_format = "tiff"

      answer = @instance.put_convert_document_to_image(name, out_path, out_format, opts)

      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(result_name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, result_name)
    end

    it "Convert epub to gif in storage" do
      result_name = "putEpubToGif.zip"
      out_path = "HtmlTestDoc/" + result_name
      out_format = "gif"

      answer = @instance.put_convert_document_to_image(name, out_path, out_format, opts)

      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(result_name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, result_name)
    end
  end

  # unit tests for put_convert_document_to_image from svg format
  # Converts the SVG document (located on storage) to the specified image format and uploads resulting file to storage.
  #
  # @param name Document name.
  # @param out_path Full resulting filename (ex. /folder1/folder2/result.jpg)
  # @param out_format (jpeg, png, bmp, tiff, gif)
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :width Resulting document page width in points (1/96 inch).
  # @option opts [Integer] :height Resulting document page height in points (1/96 inch).
  # @option opts [Integer] :left_margin Left resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :right_margin Right resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :top_margin Top resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :bottom_margin Bottom resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :resolution Resolution of resulting image. Default is 96 dpi.
  # @option opts [String] :folder The source document folder.
  # @option opts [String] :storage The source and resulting document storage.
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'put_convert_svg_to_image test' do
    # Already in the storage
    name = "Map-World.svg"
    opts = {
        width: 800,
        height: 1000,
        left_margin: 30,
        right_margin: 30,
        top_margin: 50,
        bottom_margin: 50,
        resolution: 300,
        folder: "HtmlTestDoc",
        storage: nil
    }

    it "Convert svg to jpeg in storage" do
      result_name = "putSvgToJpeg.png"
      out_path = "HtmlTestDoc/" + result_name
      out_format = "jpeg"

      answer = @instance.put_convert_document_to_image(name, out_path, out_format, opts)

      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(result_name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, result_name)
    end

    it "Convert svg to png in storage" do
      result_name = "putSvgToPng.png"
      out_path = "HtmlTestDoc/" + result_name
      out_format = "png"

      answer = @instance.put_convert_document_to_image(name, out_path, out_format, opts)

      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(result_name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, result_name)
    end

    it "Convert svg to bmp in storage" do
      result_name = "putSvgToBmp.bmp"
      out_path = "HtmlTestDoc/" + result_name
      out_format = "bmp"

      answer = @instance.put_convert_document_to_image(name, out_path, out_format, opts)

      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(result_name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, result_name)
    end

    it "Convert svg to tiff in storage" do
      result_name = "putSvgToTiff.tiff"
      out_path = "HtmlTestDoc/" + result_name
      out_format = "tiff"

      answer = @instance.put_convert_document_to_image(name, out_path, out_format, opts)

      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(result_name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, result_name)
    end

    it "Convert svg to gif in storage" do
      result_name = "putSvgToGif.gif"
      out_path = "HtmlTestDoc/" + result_name
      out_format = "gif"

      answer = @instance.put_convert_document_to_image(name, out_path, out_format, opts)

      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(result_name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, result_name)
    end
  end

  # unit tests for put_convert_document_to_pdf from html format
  # Converts the HTML document (located on storage) to PDF and uploads resulting file to storage.
  #
  # @param name Document name.
  # @param out_path Full resulting filename (ex. /folder1/folder2/result.pdf)
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :width Resulting document page width in points (1/96 inch).
  # @option opts [Integer] :height Resulting document page height in points (1/96 inch).
  # @option opts [Integer] :left_margin Left resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :right_margin Right resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :top_margin Top resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :bottom_margin Bottom resulting document page margin in points (1/96 inch).
  # @option opts [String] :folder The source document folder.
  # @option opts [String] :storage The source and resulting document storage.
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'put_convert_html_to_pdf test' do
    it "Convert html to pdf in storage" do

      # Already in the storage
      name = "test1.html"
      result_name = "putHtmlToPdf.pdf"
      out_path = "HtmlTestDoc/" + result_name
      opts = {
          width: 800,
          height: 1000,
          left_margin: 30,
          right_margin: 30,
          top_margin: 50,
          bottom_margin: 50,
          folder: "HtmlTestDoc",
          storage: nil
      }

      answer = @instance.put_convert_document_to_pdf(name, out_path, opts)

      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(result_name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, result_name)
    end
  end

  # unit tests for put_convert_document_to_pdf from epub format
  # Converts the EPUB document (located on storage) to PDF and uploads resulting file to storage.
  #
  # @param name Document name.
  # @param out_path Full resulting filename (ex. /folder1/folder2/result.pdf)
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :width Resulting document page width in points (1/96 inch).
  # @option opts [Integer] :height Resulting document page height in points (1/96 inch).
  # @option opts [Integer] :left_margin Left resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :right_margin Right resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :top_margin Top resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :bottom_margin Bottom resulting document page margin in points (1/96 inch).
  # @option opts [String] :folder The source document folder.
  # @option opts [String] :storage The source and resulting document storage.
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'put_convert_epub_to_pdf test' do
    it "Convert epub to pdf in storage" do

      # Already in the storage
      name = "georgia.epub"
      result_name = "putEpubToPdf.pdf"
      out_path = "HtmlTestDoc/" + result_name
      opts = {
          width: 800,
          height: 1000,
          left_margin: 30,
          right_margin: 30,
          top_margin: 50,
          bottom_margin: 50,
          folder: "HtmlTestDoc",
          storage: nil
      }

      answer = @instance.put_convert_document_to_pdf(name, out_path, opts)

      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(result_name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, result_name)
    end
  end

  # unit tests for put_convert_document_to_pdf from svg format
  # Converts the SVG document (located on storage) to PDF and uploads resulting file to storage.
  #
  # @param name Document name.
  # @param out_path Full resulting filename (ex. /folder1/folder2/result.pdf)
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :width Resulting document page width in points (1/96 inch).
  # @option opts [Integer] :height Resulting document page height in points (1/96 inch).
  # @option opts [Integer] :left_margin Left resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :right_margin Right resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :top_margin Top resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :bottom_margin Bottom resulting document page margin in points (1/96 inch).
  # @option opts [String] :folder The source document folder.
  # @option opts [String] :storage The source and resulting document storage.
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'put_convert_svg_to_pdf test' do
    it "Convert svg to pdf in storage" do

      # Already in the storage
      name = "Map-World.svg"
      result_name = "putSvgToPdf.pdf"
      out_path = "HtmlTestDoc/" + result_name
      opts = {
          width: 800,
          height: 1000,
          left_margin: 30,
          right_margin: 30,
          top_margin: 50,
          bottom_margin: 50,
          folder: "HtmlTestDoc",
          storage: nil
      }

      answer = @instance.put_convert_document_to_pdf(name, out_path, opts)

      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(result_name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, result_name)
    end
  end

  # unit tests for put_convert_document_to_xps from html format
  # Converts the HTML document (located on storage) to XPS and uploads resulting file to storage.
  #
  # @param name Document name.
  # @param out_path Full resulting filename (ex. /folder1/folder2/result.xps)
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :width Resulting document page width in points (1/96 inch).
  # @option opts [Integer] :height Resulting document page height in points (1/96 inch).
  # @option opts [Integer] :left_margin Left resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :right_margin Right resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :top_margin Top resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :bottom_margin Bottom resulting document page margin in points (1/96 inch).
  # @option opts [String] :folder The source document folder.
  # @option opts [String] :storage The source and resulting document storage.
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'put_convert_html_to_xps test' do
    it "Convert html to xps in storage" do

      # Already in the storage
      name = "test1.html"
      result_name = "putHtmlToXps.xps"
      out_path = "HtmlTestDoc/" + result_name
      opts = {
          width: 800,
          height: 1000,
          left_margin: 30,
          right_margin: 30,
          top_margin: 50,
          bottom_margin: 50,
          folder: "HtmlTestDoc",
          storage: nil
      }

      answer = @instance.put_convert_document_to_xps(name, out_path, opts)

      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(result_name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, result_name)
    end
  end

  # unit tests for put_convert_document_to_xps from epub format
  # Converts the EPUB document (located on storage) to XPS and uploads resulting file to storage.
  #
  # @param name Document name.
  # @param out_path Full resulting filename (ex. /folder1/folder2/result.xps)
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :width Resulting document page width in points (1/96 inch).
  # @option opts [Integer] :height Resulting document page height in points (1/96 inch).
  # @option opts [Integer] :left_margin Left resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :right_margin Right resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :top_margin Top resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :bottom_margin Bottom resulting document page margin in points (1/96 inch).
  # @option opts [String] :folder The source document folder.
  # @option opts [String] :storage The source and resulting document storage.
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'put_convert_epub_to_xps test' do
    it "Convert epub to xps in storage" do

      # Already in the storage
      name = "georgia.epub"
      result_name = "putEpubToXps.xps"
      out_path = "HtmlTestDoc/" + result_name
      opts = {
          width: 800,
          height: 1000,
          left_margin: 30,
          right_margin: 30,
          top_margin: 50,
          bottom_margin: 50,
          folder: "HtmlTestDoc",
          storage: nil
      }

      answer = @instance.put_convert_document_to_xps(name, out_path, opts)

      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(result_name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, result_name)
    end
  end

  # unit tests for put_convert_document_to_xps from svg format
  # Converts the SVG document (located on storage) to XPS and uploads resulting file to storage.
  #
  # @param name Document name.
  # @param out_path Full resulting filename (ex. /folder1/folder2/result.xps)
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :width Resulting document page width in points (1/96 inch).
  # @option opts [Integer] :height Resulting document page height in points (1/96 inch).
  # @option opts [Integer] :left_margin Left resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :right_margin Right resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :top_margin Top resulting document page margin in points (1/96 inch).
  # @option opts [Integer] :bottom_margin Bottom resulting document page margin in points (1/96 inch).
  # @option opts [String] :folder The source document folder.
  # @option opts [String] :storage The source and resulting document storage.
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'put_convert_svg_to_xps test' do
    it "Convert svg to xps in storage" do

      # Already in the storage
      name = "Map-World.svg"
      result_name = "putSvgToXps.xps"
      out_path = "HtmlTestDoc/" + result_name
      opts = {
          width: 800,
          height: 1000,
          left_margin: 30,
          right_margin: 30,
          top_margin: 50,
          bottom_margin: 50,
          folder: "HtmlTestDoc",
          storage: nil
      }

      answer = @instance.put_convert_document_to_xps(name, out_path, opts)

      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(result_name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, result_name)
    end
  end

  # unit tests for get_convert_document_to_mhtml_by_url
  #
  # Converts the HTML page from Web by its URL to MHTML returns resulting file in response content.
  # @param source_url Source page URL.
  # @param [Hash] opts the optional parameters
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'get_convert_document_to_mhtml_by_url test' do
    it "Convert url to mhtml" do
      source_url = "https://www.yahoo.com"
      opts = {}

      answer = @instance.get_convert_document_to_mhtml_by_url(source_url, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer[:file], "Convert_url.mht")
    end
  end

  # unit tests for get_convert_document_to_markdown
  # Converts the HTML document (located on storage) to Markdown and returns resulting file in response content.
  # @param name Document name.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :use_git Use Git Markdown flavor to save ("true" or "false"). (default to "false")
  # @option opts [String] :folder Source document folder.
  # @option opts [String] :storage Source document storage.
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'get_convert_document_to_markdown test' do
    it "Convert html to markdown" do
      name = "test_md.html"
      opts = {
          use_git: "true",
          folder: "HtmlTestDoc",
          storage: nil
      }

      # Upload file to server
      res = upload_file_helper(name)
      expect(res.uploaded.length).to eql(1)
      expect(res.errors.length).to eql(0)

      answer = @instance.get_convert_document_to_markdown(name, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer[:file], "get_convert_markdown.md")
    end
  end

  # unit tests for post_convert_document_in_request_to_markdown
  # Converts the HTML document (in request content) to Markdown and uploads resulting file to storage by specified path.
  # @param out_path Full resulting file path in the storage (ex. /folder1/folder2/result.md)
  # @param file A file to be converted.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :use_git Use Git Markdown flavor to save ("true" or "false"). (default to "false")
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'post_convert_document_in_request_to_markdown test' do
    it "Upload and convert html to markdown" do
      name = "postConvertInReqRuby.md"
      out_path = "HtmlTestDoc/" + name
      file = File.realpath(__dir__ + '/../../testdata/test_md.html')
      opts = { use_git: "false" }

      answer = @instance.post_convert_document_in_request_to_markdown(out_path, file, opts)

      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, name)
    end
  end

  # unit tests for put_convert_document_to_markdown
  # Converts the HTML document (located on storage) to Markdown and uploads resulting file to storage by specified path.
  # @param name Document name.
  # @param out_path Full resulting file path in the storage (ex. /folder1/folder2/result.md)
  # @param [Hash] opts the optional parameters
  # @option opts [String] :use_git Use Git Markdown flavor to save ("true" or "false"). (default to "false")
  # @option opts [String] :folder The source document folder.
  # @option opts [String] :storage The source and resulting document storage.
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'put_convert_document_to_markdown test' do
    it "Convert html to markdown and save result in the storage" do

      # Already in the storage
      name = "test_md.html"
      result_name = "putConvertRuby.md"
      out_path = "HtmlTestDoc/" + result_name
      opts = {
          use_git: "true",
          folder: "HtmlTestDoc",
          storage: nil
      }

      answer = @instance.put_convert_document_to_markdown(name, out_path, opts)

      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(result_name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, result_name)
    end
  end

  #################################################
  #                  Import API
  #################################################

  # unit tests for get_convert_markdown_to_html
  # Converts the Markdown document (located on storage) to HTML and returns resulting file in response content.
  # @param name Document name.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder Source document folder.
  # @option opts [String] :storage Source document storage.
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'get_convert_markdown_to_html test' do
    it "Convert markdown to html" do
      name = "testpage1.md"
      opts = {
          folder: "HtmlTestDoc",
          storage: nil
      }

      # Upload file to server
      res = upload_file_helper(name)
      expect(res.uploaded.length).to eql(1)
      expect(res.errors.length).to eql(0)

      answer = @instance.get_convert_markdown_to_html(name, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer[:file], "get_convert_md_html.html")
    end
  end

  # unit tests for post_convert_markdown_in_request_to_html
  # Converts the Markdown document (in request content) to HTML and uploads resulting file to storage by specified path.
  # @param out_path Full resulting file path in the storage (ex. /folder1/folder2/result.html)
  # @param file A file to be converted.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :storage Source document storage.
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'post_convert_markdown_in_request_to_html test' do
    it "Upload and convert markdown to html" do
      name = "postMarkdownToHtmlInReqRuby.html"
      out_path = "HtmlTestDoc/" + name
      file = File.realpath(__dir__ + '/../../testdata/testpage1.md')
      opts = { storage: nil }

      answer = @instance.post_convert_markdown_in_request_to_html(out_path, file, opts)

      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, name)
    end
  end

  # unit tests for put_convert_markdown_to_html
  # Converts the Markdown document (located on storage) to HTML and uploads resulting file to storage by specified path.
  # @param name Document name.
  # @param out_path Full resulting file path in the storage (ex. /folder1/folder2/result.html)
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder The source document folder.
  # @option opts [String] :storage The source and resulting document storage.
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'put_convert_markdown_to_html test' do
    it "Convert markdown to html and save result in the storage" do

      # Already in the storage
      name = "testpage1.md"
      result_name = "putConvertMarkdownToHtmlRuby.html"
      out_path = "HtmlTestDoc/" + result_name
      opts = {
          folder: "HtmlTestDoc",
          storage: nil
      }

      answer = @instance.put_convert_markdown_to_html(name, out_path, opts)

      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(result_name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, result_name)
    end
  end

  #################################################
  #            Document API
  #################################################

  # unit tests for document_get_document_by_url
  # Return all HTML page with linked resources packaged as a ZIP archive by the source page URL.
  #
  # @param source_url Source page URL.
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'get_document_by_url test' do
    it "Get document and all linked resources from url" do

      source_url = "https://lenta.ru/"
      answer = @instance.get_document_by_url(source_url)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer[:file], "Get_site_from_url.zip")
    end
  end

  # unit tests for get_document_fragment_by_x_path
  # Return list of HTML fragments matching the specified XPath query.
  #
  # @param name The document name.
  # @param x_path XPath query string.
  # @param out_format Output format. Possible values: &#39;plain&#39; and &#39;json&#39;.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :storage The document storage.
  # @option opts [String] :folder The document folder.
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'get_document_fragment_by_x_path test' do
    it "Get fragment document" do
      name = "test2.html.zip"
      x_path = ".//p"
      out_format = "plain"
      opts = {folder: "HtmlTestDoc", storage: nil}

      # Upload file to server
      res = upload_file_helper(name)
      expect(res.uploaded.length).to eql(1)
      expect(res.errors.length).to eql(0)

      answer = @instance.get_document_fragment_by_x_path(name, x_path, out_format, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer[:file], "Get_fragment_doc.html")
    end
  end

  # unit tests for document_get_document_fragment_by_x_path_by_url
  # Return list of HTML fragments matching the specified XPath query by the source page URL.
  #
  # @param source_url Source page URL.
  # @param x_path XPath query string.
  # @param out_format Output format. Possible values: &#39;plain&#39; and &#39;json&#39;.
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'get_document_fragment_by_x_path_by_url test' do
    it "Get fragment document by url" do
      source_url = "https://stallman.org/articles/anonymous-payments-thru-phones.html"
      x_path = ".//p"
      out_format = "plain"

      answer = @instance.get_document_fragment_by_x_path_by_url(source_url, x_path, out_format)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer[:file], "Get_fragment_xpath_by_url.html")
    end
  end

  # Return list of HTML fragments matching the specified CSS selector.
  #
  # @param name The document name.
  # @param selector CSS selector string.
  # @param out_format Output format. Possible values: &#39;plain&#39; and &#39;json&#39;.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder The document folder.
  # @option opts [String] :storage The document storage.
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'get_document_fragments_by_css_selector test' do
    it "Get fragment document by css" do
      name = "test2.html.zip"
      selector = "div p"
      out_format = "plain"
      opts = {folder: "HtmlTestDoc", storage: nil}

      # Upload file to server
      res = upload_file_helper(name)
      expect(res.uploaded.length).to eql(1)
      expect(res.errors.length).to eql(0)

      answer = @instance.get_document_fragments_by_css_selector(name, selector, out_format, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer[:file], "Get_fragment_doc_css.html")
    end
  end

  # Return list of HTML fragments matching the specified CSS selector by the source page URL.
  #
  # @param source_url Source page URL.
  # @param selector CSS selector string.
  # @param out_format Output format. Possible values: &#39;plain&#39; and &#39;json&#39;.
  # @param [Hash] opts the optional parameters
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'get_document_fragments_by_css_selector_by_url test' do
    it "Get fragment document matching the specified CSS selector by url" do
      source_url = "https://www.w3schools.com/cssref/css_selectors.asp"
      selector = 'a[href$=".asp"]'
      out_format = "plain"

      answer = @instance.get_document_fragments_by_css_selector_by_url(source_url, selector, out_format)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer[:file], "Get_fragment_css_by_url.html")
    end
  end

  # unit tests for get_document_images
  # Return all HTML document images packaged as a ZIP archive.
  #
  # @param name The document name.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder The document folder.
  # @option opts [String] :storage The document storage.
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'get_document_images test' do
    it "Get images from document" do
      name = "test3.html.zip"
      opts = {folder: "HtmlTestDoc", storage: nil}

      # Upload file to server
      res = upload_file_helper(name)
      expect(res.uploaded.length).to eql(1)
      expect(res.errors.length).to eql(0)

      answer = @instance.get_document_images(name, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer[:file], "Get_images_doc.zip")
    end
  end

  # unit tests for document_get_document_images_by_url
  # Return all HTML page images packaged as a ZIP archive by the source page URL.
  #
  # @param source_url Source page URL.
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'get_document_images_by_url test' do
    it "Get images from url" do

      source_url = "https://www.google.com/"
      answer = @instance.get_document_images_by_url(source_url)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer[:file], "Get_images_from_url.zip")
    end
  end

  #################################################
  #                 OCR API
  #################################################

  # unit tests for get_recognize_and_import_to_html
  # Recognize text from the image file in the storage and import it to HTML format.
  #
  # @param name The image file name.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ocr_engine_lang OCR engine language - language
  # @option opts [String] :folder The source image folder.
  # @option opts [String] :storage The source image storage.
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'get_recognize_and_import_to_html test' do
    it "Recognize png" do
      file_name = "test_ocr.png"
      opts = {ocr_engine_lang: "en", folder: "HtmlTestDoc", storage: nil}

      # Upload file to server
      res = upload_file_helper(file_name)
      expect(res.uploaded.length).to eql(1)
      expect(res.errors.length).to eql(0)

      answer = @instance.get_recognize_and_import_to_html(file_name, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer[:file], "Recognize_en_png.html")
    end
  end

  # unit tests for get_recognize_and_translate_to_html
  # Recognize text from the image file in the storage, import it to HTML format and translate to specified language.
  #
  # @param name The image file name.
  # @param src_lang Source language - also supposed as the OCR engine language.
  # @param res_lang Result language.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder The source image folder.
  # @option opts [String] :storage The source image storage.
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'get_recognize_and_translate_to_html test' do
    it "Recognize and translate jpg" do
      file_name = "test_ocr.jpg"
      src_lang = "en"
      res_lang = "de"
      opts = {folder: "HtmlTestDoc", storage: nil}

      # Upload file to server
      res = upload_file_helper(file_name)
      expect(res.uploaded.length).to eql(1)
      expect(res.errors.length).to eql(0)

      answer = @instance.get_recognize_and_translate_to_html(file_name, src_lang, res_lang, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer[:file], "Recognize_en_de_jpg.html")
    end
  end

  #################################################
  #            Translation API
  #################################################

  # unit tests for get_translate_document
  # Translate the HTML document specified by the name from default or specified storage.
  #
  # @param name Document name.
  # @param src_lang Source language.
  # @param res_lang Result language.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :storage The source document storage.
  # @option opts [String] :folder The source document folder.
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'get_translate_document test' do
    it "Translate document" do
      file_name = "test_en.html"
      src_lang = "en"
      res_lang = "de"
      opts = {storage: nil, folder: "HtmlTestDoc"}

      # Upload file to server
      res = upload_file_helper(file_name)
      expect(res.uploaded.length).to eql(1)
      expect(res.errors.length).to eql(0)

      answer = @instance.get_translate_document(file_name, src_lang, res_lang, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer[:file], "Translate_doc_en_de.html")
    end
  end

  # unit tests for get_translate_document_by_url
  # Translate the HTML document from Web specified by its URL.
  #
  # @param source_url Source document URL.
  # @param src_lang Source language.
  # @param res_lang Result language.
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'get_translate_document_by_url test' do
    it "Translate url" do

      source_url = "https://www.le.ac.uk/oerresources/bdra/html/page_01.htm"
      src_lang = "en"
      res_lang = "fr"

      answer = @instance.get_translate_document_by_url(source_url, src_lang,res_lang)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer[:file], "Translate_url_en_fr.zip")
    end
  end

  #################################################
  #            Summarization API
  #################################################

  # unit tests for get_detect_html_keywords
  # Get the HTML document keywords using the keyword detection service.
  #
  # @param name Document name.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder Document folder.
  # @option opts [String] :storage Document storage.
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'get_detect_html_keywords test' do
    it "Keyword by html document" do
      name = "test_en.html"
      opts = {storage: nil, folder: "HtmlTestDoc"}

      # Upload file to server
      res = upload_file_helper(name)
      expect(res.uploaded.length).to eql(1)
      expect(res.errors.length).to eql(0)

      answer = @instance.get_detect_html_keywords(name, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer[:file], "Keyword_by_doc.json")
    end
  end

  # unit tests for get_detect_html_keywords_by_url
  # Get the keywords from HTML document from Web specified by its URL using the keyword detection service
  #
  # @param source_url Source document URL.
  # @return [Hash] {file: data, status: _status_code, headers: _headers}
  describe 'get_detect_html_keywords_by_url test' do
    it "Keyword by url" do
      source_url = "https://www.le.ac.uk/oerresources/bdra/html/page_01.htm"

      answer = @instance.get_detect_html_keywords_by_url(source_url)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer[:file], "Keyword_by_url.json")
    end
  end

    # unit tests for get_merge_html_template
    # Populate HTML document template with data located as a file in the storage.
    #
    # @param template_name Template document name. Template document is HTML or zipped HTML.
    # @param data_path Data source file path in the storage. Supported data format: XML
    # @param [Hash] opts the optional parameters
    # @option opts [String] :options Template merge options: reserved for further implementation.
    # @option opts [String] :folder The template document folder.
    # @option opts [String] :storage The template document and data source storage.
    # @return [File]
  describe 'get_merge_html_template test' do
    it "Get merge template" do
      template_name = "HtmlTemplate.html";
      data_name = "XmlSourceData.xml";
      folder = "HtmlTestDoc"
      opts = {storage: nil, folder: folder}
      data_path = folder + "/" + data_name
      # Upload template file to server
      res = upload_file_helper(template_name)
      expect(res.uploaded.length).to eql(1)
      expect(res.errors.length).to eql(0)

      # Upload data file to server
      res = upload_file_helper(data_name)
      expect(res.uploaded.length).to eql(1)
      expect(res.errors.length).to eql(0)

      opts = {options:"", folder:"HtmlTestDoc", storage: nil}
      answer = @instance.get_merge_html_template(template_name, data_path, opts)
      save_to_test_dir(answer[:file], "GetTemplateMergeRuby.html")
    end
  end

    # unit tests for post_merge_html_template
    # Populate HTML document template with data from the request body. Result document will be saved to storage.
    #
    # @param template_name Template document name. Template document is HTML or zipped HTML.
    # @param out_path Result document path.
    # @param file A data file to populate template.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :options Template merge options: reserved for further implementation.
    # @option opts [String] :folder The template document folder.
    # @option opts [String] :storage The template document and data source storage.
    # @return [File]
  describe 'post_merge_html_template test' do
    it "Post merge template" do
      result_name = "PostTemplateMergeRuby.html"
      template_name = "HtmlTemplate.html";
      data_name = "XmlSourceData.xml";
      folder = "HtmlTestDoc"
      opts = {options:"", folder:"HtmlTestDoc", storage: nil}
      out_path = folder + "/" + result_name
      file = File.realpath(__dir__ + '/../../testdata/' + data_name)
      answer = @instance.post_merge_html_template(template_name, out_path, file, opts)
      expect(answer[:status]).to eql(200)

      #Download converted file from storage
      res = download_file_helper(result_name)
      expect(res).to be_an_instance_of File

      #Move to test folder
      save_to_test_dir(res, result_name)
    end
  end
end

# -*- coding: utf-8 -*-
=begin
  --------------------------------------------------------------------------------------------------------------------
  <copyright company="Aspose" file="html_api_spec.rb">
  </copyright>
   Copyright (c) 2018 Aspose.HTML for Cloud
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

  # unit tests for get_convert_document_to_image
  # Convert the HTML document from the storage by its name to the specified image format.
  #
  # @param name Document name.
  # @param out_format Resulting image format.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :width Resulting image width.
  # @option opts [Integer] :height Resulting image height.
  # @option opts [Integer] :left_margin Left resulting image margin.
  # @option opts [Integer] :right_margin Right resulting image margin.
  # @option opts [Integer] :top_margin Top resulting image margin.
  # @option opts [Integer] :bottom_margin Bottom resulting image margin.
  # @option opts [Integer] :x_resolution Horizontal resolution of resulting image.
  # @option opts [Integer] :y_resolution Vertical resolution of resulting image.
  # @option opts [String] :folder The source document folder.
  # @option opts [String] :storage The source document storage.
  # @return [File]
  describe 'get_convert_document_to_image test' do
    it "Convert html to bmp" do
      name = "test1.html"
      out_format = "bmp"
      opts = {
          width: 800,
          height: 1000,
          left_margin: 30,
          right_margin: 30,
          top_margin: 50,
          bottom_margin: 50,
          x_resolution: 300,
          y_resolution: 300,
          folder: "HtmlTestDoc",
          storage: nil
      }

      # Upload file to server
      res = upload_file(name)
      expect(res.code).to eql(200)

      answer = @instance.get_convert_document_to_image(name, out_format, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer, "Convert_html.bmp")
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
  # @option opts [Integer] :x_resolution Horizontal resolution of resulting image.
  # @option opts [Integer] :y_resolution Vertical resolution of resulting image.
  # @option opts [String] :folder The document folder.
  # @option opts [String] :storage The document storage.
  # @return [File]
  describe 'get_convert_document_to_image_by_url test' do
    it "Convert url to png" do
      source_url = "https://stallman.org/articles/anonymous-payments-thru-phones.html"
      out_format = "png"
      opts = {
          width: 800,
          height: 1000,
          left_margin: 30,
          right_margin: 30,
          top_margin: 50,
          bottom_margin: 50,
          x_resolution: 300,
          y_resolution: 300,
          folder: "HtmlTestDoc",
          storage: nil
      }

      answer = @instance.get_convert_document_to_image_by_url(source_url, out_format, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer, "Convert_url.png")
    end
  end

  # unit tests for get_convert_document_to_pdf
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
  # @return [File]
  describe 'get_convert_document_to_pdf test' do
    it "Convert doc to pdf" do
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
      res = upload_file(name)
      expect(res.code).to eql(200)

      answer = @instance.get_convert_document_to_pdf(name, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer, "Convert_html.pdf")
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
  # @return [File]
  describe 'get_convert_document_to_pdf_by_url test' do
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
      save_to_test_dir(answer, "Convert_url.pdf")
    end
  end

  # unit tests for get_convert_document_to_xps
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
  # @return [File]
  describe 'get_convert_document_to_xps test' do
    it "Convert document to xps" do
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
      res = upload_file(name)
      expect(res.code).to eql(200)

      answer = @instance.get_convert_document_to_xps(name, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer, "Convert_html.xps")
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
  # @return [File]
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
      save_to_test_dir(answer, "Convert_url.xps")
    end
  end

  #################################################
  #            Document API
  #################################################

  # unit tests for get_document
  # Return the HTML document by the name from default or specified storage.
  #
  # @param name The document name.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :storage The document folder
  # @option opts [String] :folder The document folder.
  # @return [File]
  describe 'get_document test' do
    it "Get html document" do
      file_name = "test_get_doc.zip"
      opts = {folder: "HtmlTestDoc", storage: nil}

      # Upload file to server
      res = upload_file(file_name)
      expect(res.code).to eql(200)

      answer = @instance.get_document(file_name, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer, "Get_document.zip")
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
  # @return [File]
  describe 'get_document_fragment_by_x_path test' do
    it "Get fragment document" do
      name = "test2.html.zip"
      x_path = ".//p"
      out_format = "plain"
      opts = {folder: "HtmlTestDoc", storage: nil}

      # Upload file to server
      res = upload_file(name)
      expect(res.code).to eql(200)

      answer = @instance.get_document_fragment_by_x_path(name, x_path, out_format, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer, "Get_fragment_doc.html")
    end
  end

  # unit tests for get_document_images
  # Return all HTML document images packaged as a ZIP archive.
  #
  # @param name The document name.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder The document folder.
  # @option opts [String] :storage The document storage.
  # @return [File]
  describe 'get_document_images test' do
    it "Get images from document" do
      name = "test3.html.zip"
      opts = {folder: "HtmlTestDoc", storage: nil}

      # Upload file to server
      res = upload_file(name)
      expect(res.code).to eql(200)

      answer = @instance.get_document_images(name, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer, "Get_images_doc.zip")
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
  # @return [File]
  describe 'get_recognize_and_import_to_html test' do
    it "Recognize png" do
      file_name = "test_ocr.png"
      opts = {ocr_engine_lang: "en", folder: "HtmlTestDoc", storage: nil}

      # Upload file to server
      res = upload_file(file_name)
      expect(res.code).to eql(200)

      answer = @instance.get_recognize_and_import_to_html(file_name, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer, "Recognize_en_png.html")
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
  # @return [File]
  describe 'get_recognize_and_translate_to_html test' do
    it "Recognize and translate jpg" do
      file_name = "test_ocr.jpg"
      src_lang = "en"
      res_lang = "de"
      opts = {folder: "HtmlTestDoc", storage: nil}

      # Upload file to server
      res = upload_file(file_name)
      expect(res.code).to eql(200)

      answer = @instance.get_recognize_and_translate_to_html(file_name, src_lang, res_lang, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer, "Recognize_en_de_jpg.html")
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
  # @return [File]
  describe 'get_translate_document test' do
    it "Translate document" do
      file_name = "test_en.html"
      src_lang = "en"
      res_lang = "de"
      opts = {storage: nil, folder: "HtmlTestDoc"}

      # Upload file to server
      res = upload_file(file_name)
      expect(res.code).to eql(200)

      answer = @instance.get_translate_document(file_name, src_lang, res_lang, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer, "Translate_doc_en_de.html")
    end
  end

  # unit tests for get_translate_document_by_url
  # Translate the HTML document from Web specified by its URL.
  #
  # @param source_url Source document URL.
  # @param src_lang Source language.
  # @param res_lang Result language.
  # @return [File]
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
      save_to_test_dir(answer, "Translate_url_en_fr.zip")
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
  # @return [File]
  describe 'get_detect_html_keywords test' do
    it "Keyword by html document" do
      name = "test_en.html"
      opts = {storage: nil, folder: "HtmlTestDoc"}

      # Upload file to server
      res = upload_file(name)
      expect(res.code).to eql(200)

      answer = @instance.get_detect_html_keywords(name, opts)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer, "Keyword_by_doc.json")
    end
  end

  # unit tests for get_detect_html_keywords_by_url
  # Get the keywords from HTML document from Web specified by its URL using the keyword detection service
  #
  # @param source_url Source document URL.
  # @return [File]
  describe 'get_detect_html_keywords_by_url test' do
    it "Keyword by url" do
      source_url = "https://www.le.ac.uk/oerresources/bdra/html/page_01.htm"

      answer = @instance.get_detect_html_keywords_by_url(source_url)

      expect(answer).to be_an_instance_of Hash
      expect(answer[:file]).to be_an_instance_of File
      expect(answer[:status]).to eql(200)

      # Save to test dir
      save_to_test_dir(answer, "Keyword_by_url.json")
    end
  end

end
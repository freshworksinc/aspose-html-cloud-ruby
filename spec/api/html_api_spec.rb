# -*- coding: utf-8 -*-
=begin
  --------------------------------------------------------------------------------------------------------------------
  <copyright company="Aspose" file="html_api_spec.rb">
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

require 'spec_helper'
require 'json'

describe 'Test html_api_V4' do
  before(:all) do
    # run before all tests
    @html_api = AsposeHtml::HtmlApi.new CONFIG
    @storage_api = AsposeHtml::StorageApi.new CONFIG
  end

  describe 'test an instance of HtmlApi' do
    it 'should create an instance of HtmlApi' do
      expect(@html_api).to be_instance_of(AsposeHtml::HtmlApi)
    end

    it 'should create an instance of StorageApi' do
      expect(@storage_api).to be_instance_of(AsposeHtml::StorageApi)
    end
  end

  describe 'convert html local to local' do

    src = File.realpath(__dir__ + '/../../testdata') + '/test1.html'
    dst_dir = File.realpath(__dir__ + '/../../testresult') + '/'

    describe 'convert local to local html to doc' do

      %w[pdf xps docx md mhtml mht].each { |ext|
        it "Convert html to " + ext do

          dst = dst_dir + 'locToLocDoc.' + ext
          answer = @html_api.convert_local_to_local(src, dst)

          expect(answer.code).to eql(200)
          expect(answer.status).to eql('completed')
          expect(File.exist?(answer.file)).to be_truthy
        end
      }
    end

    describe 'convert local to local html to image' do

      %w[jpeg jpg bmp png tiff tif gif].each { |ext|
        it "Convert html to " + ext do

          dst = dst_dir + 'locToLocImg.' + ext
          answer = @html_api.convert_local_to_local(src, dst)

          expect(answer.code).to eql(200)
          expect(answer.status).to eql('completed')
          expect(File.exist?(answer.file)).to be_truthy
        end
      }
    end

    describe 'convert local to local html to image with options' do

      opts = {
        width: 800,
        height: 1000,
        left_margin: 30,
        right_margin: 30,
        top_margin: 50,
        bottom_margin: 50
      }

      %w[jpeg jpg bmp png tiff tif gif].each { |ext|
        it "Convert html to " + ext do

          dst = dst_dir + 'locToLocImgOpt.' + ext
          answer = @html_api.convert_local_to_local(src, dst, opts)

          expect(answer.code).to eql(200)
          expect(answer.status).to eql('completed')
          expect(File.exist?(answer.file)).to be_truthy
        end
      }
    end
  end

  describe 'convert html local to storage' do
    src = File.realpath(__dir__ + '/../../testdata') + '/test1.html'
    dst_dir = 'RubyTests'

    describe 'convert local to storage html to doc' do

      %w[pdf xps docx md mhtml mht].each { |ext|
        it "Convert html to " + ext do

          dst = dst_dir + '/locToStorDoc.' + ext
          answer = @html_api.convert_local_to_storage(src, dst, nil)

          expect(answer.code).to eql(200)
          expect(answer.status).to eql('completed')
          expect(@storage_api.object_exists(answer.file).exists).to be_truthy
        end
      }
    end

    describe 'convert local to storage html to image' do

      %w[jpeg jpg bmp png tiff tif gif].each { |ext|
        it "Convert html to " + ext do

          dst = dst_dir + '/locToStorImg.' + ext
          answer = @html_api.convert_local_to_storage(src, dst, nil)

          expect(answer.code).to eql(200)
          expect(answer.status).to eql('completed')
          expect(@storage_api.object_exists(answer.file).exists).to be_truthy
        end
      }
    end

    describe 'convert local to storage html to image with options' do

      opts = {
        width: 800,
        height: 1000,
        left_margin: 30,
        right_margin: 30,
        top_margin: 50,
        bottom_margin: 50
      }

      %w[jpeg jpg bmp png tiff tif gif].each { |ext|
        it "Convert html to " + ext do

          dst = dst_dir + '/locToStorImgOpt.' + ext
          answer = @html_api.convert_local_to_storage(src, dst, nil, opts)

          expect(answer.code).to eql(200)
          expect(answer.status).to eql('completed')
          expect(@storage_api.object_exists(answer.file).exists).to be_truthy
        end
      }
    end
  end

  describe 'convert html storage to local' do
    src = 'RubyTests/test1.html'
    dst_dir = File.realpath(__dir__ + '/../../testresult') + '/'

    uploaded_file = File.realpath(__dir__ + '/../../testdata') + '/test1.html'

    describe 'convert storage to local html to doc' do

      %w[pdf xps docx md mhtml mht].each { |ext|
        it "Convert html to " + ext do
          res = @storage_api.upload_file("RubyTests", uploaded_file)
          expect(res.uploaded.length).to eql(1)
          expect(res.errors.length).to eql(0)

          dst = dst_dir + 'storToLocDoc.' + ext
          answer = @html_api.convert_storage_to_local(src, dst, nil)

          expect(answer.code).to eql(200)
          expect(answer.status).to eql('completed')
          expect(File.exist?(answer.file)).to be_truthy
        end
      }
    end

    describe 'convert storage to local html to image' do

      %w[jpeg jpg bmp png tiff tif gif].each { |ext|
        it "Convert html to " + ext do

          dst = dst_dir + 'storToLocImg.' + ext
          answer = @html_api.convert_storage_to_local(src, dst, nil)

          expect(answer.code).to eql(200)
          expect(answer.status).to eql('completed')
          expect(File.exist?(answer.file)).to be_truthy
        end
      }
    end

    describe 'convert storage to local html to image with options' do

      opts = {
        width: 800,
        height: 1000,
        left_margin: 30,
        right_margin: 30,
        top_margin: 50,
        bottom_margin: 50
      }

      %w[jpeg jpg bmp png tiff tif gif].each { |ext|
        it "Convert html to " + ext do

          dst = dst_dir + 'storToLocImgOpt.' + ext
          answer = @html_api.convert_storage_to_local(src, dst, nil, opts)

          expect(answer.code).to eql(200)
          expect(answer.status).to eql('completed')
          expect(File.exist?(answer.file)).to be_truthy
        end
      }
    end
  end

  describe 'convert html storage to storage' do
    src = 'RubyTests/test1.html'
    dst_dir = '/'

    uploaded_file = File.realpath(__dir__ + '/../../testdata') + '/test1.html'

    describe 'convert storage to storage html to doc' do

      %w[pdf xps docx md mhtml mht].each { |ext|
        it "Convert html to " + ext do
          res = @storage_api.upload_file("RubyTests", uploaded_file)
          expect(res.uploaded.length).to eql(1)
          expect(res.errors.length).to eql(0)

          dst = dst_dir + 'storToStorDoc.' + ext
          answer = @html_api.convert_storage_to_storage(src, dst, nil)

          expect(answer.code).to eql(200)
          expect(answer.status).to eql('completed')
          expect(@storage_api.object_exists(answer.file).exists).to be_truthy
        end
      }
    end

    describe 'convert storage to storage html to image' do

      %w[jpeg jpg bmp png tiff tif gif].each { |ext|
        it "Convert html to " + ext do

          dst = dst_dir + 'storToStorImg.' + ext
          answer = @html_api.convert_storage_to_storage(src, dst, nil)

          expect(answer.code).to eql(200)
          expect(answer.status).to eql('completed')
          expect(@storage_api.object_exists(answer.file).exists).to be_truthy
        end
      }
    end

    describe 'convert storage to storage html to image with options' do

      opts = {
        width: 800,
        height: 1000,
        left_margin: 30,
        right_margin: 30,
        top_margin: 50,
        bottom_margin: 50
      }

      %w[jpeg jpg bmp png tiff tif gif].each { |ext|
        it "Convert html to " + ext do

          dst = dst_dir + 'storToStorImgOpt.' + ext
          answer = @html_api.convert_storage_to_storage(src, dst, nil, opts)

          expect(answer.code).to eql(200)
          expect(answer.status).to eql('completed')
          expect(@storage_api.object_exists(answer.file).exists).to be_truthy
        end
      }
    end
  end

  describe 'convert url to local' do

    src = 'https://stallman.org/articles/anonymous-payments-thru-phones.html'
    dst_dir = File.realpath(__dir__ + '/../../testresult') + '/'

    describe 'convert url to local doc' do

      %w[pdf xps docx md mhtml mht].each { |ext|
        it "Convert url to " + ext do

          dst = dst_dir + 'urlLocDoc.' + ext
          answer = @html_api.convert_url_to_local(src, dst)

          expect(answer.code).to eql(200)
          expect(answer.status).to eql('completed')
          expect(File.exist?(answer.file)).to be_truthy
        end
      }
    end

    describe 'convert url to local image' do

      %w[jpeg jpg bmp png tiff tif gif].each { |ext|
        it "Convert url to " + ext do

          dst = dst_dir + 'urlLocImg.' + ext
          answer = @html_api.convert_url_to_local(src, dst)

          expect(answer.code).to eql(200)
          expect(answer.status).to eql('completed')
          expect(File.exist?(answer.file)).to be_truthy
        end
      }
    end

    describe 'convert url to local image with options' do

      opts = {
        width: 800,
        height: 1000,
        left_margin: 30,
        right_margin: 30,
        top_margin: 50,
        bottom_margin: 50
      }

      %w[jpeg jpg bmp png tiff tif gif].each { |ext|
        it "Convert url to " + ext do

          dst = dst_dir + 'urlLocImgOpt.' + ext
          answer = @html_api.convert_url_to_local(src, dst, opts)

          expect(answer.code).to eql(200)
          expect(answer.status).to eql('completed')
          expect(File.exist?(answer.file)).to be_truthy
        end
      }
    end
  end

  describe 'convert url to storage' do
    src = 'https://stallman.org/articles/anonymous-payments-thru-phones.html'
    dst_dir = 'RubyTests'

    describe 'convert url to storage doc' do

      %w[pdf xps docx md mhtml mht].each { |ext|
        it "Convert url to " + ext do

          dst = dst_dir + '/urlStorDoc.' + ext
          answer = @html_api.convert_url_to_storage(src, dst, nil)

          expect(answer.code).to eql(200)
          expect(answer.status).to eql('completed')
          expect(@storage_api.object_exists(answer.file).exists).to be_truthy
        end
      }
    end

    describe 'convert url to storage image' do

      %w[jpeg jpg bmp png tiff tif gif].each { |ext|
        it "Convert url to " + ext do

          dst = dst_dir + '/urlStorImg.' + ext
          answer = @html_api.convert_url_to_storage(src, dst, nil)

          expect(answer.code).to eql(200)
          expect(answer.status).to eql('completed')
          expect(@storage_api.object_exists(answer.file).exists).to be_truthy
        end
      }
    end

    describe 'convert url to storage image with options' do

      opts = {
        width: 800,
        height: 1000,
        left_margin: 30,
        right_margin: 30,
        top_margin: 50,
        bottom_margin: 50
      }

      %w[jpeg jpg bmp png tiff tif gif].each { |ext|
        it "Convert url to " + ext do

          dst = dst_dir + '/urlStorImgOpt.' + ext
          answer = @html_api.convert_url_to_storage(src, dst, nil, opts)

          expect(answer.code).to eql(200)
          expect(answer.status).to eql('completed')
          expect(@storage_api.object_exists(answer.file).exists).to be_truthy
        end
      }
    end
  end

  describe 'convert markdown local to local' do

    src = File.realpath(__dir__ + '/../../testdata') + '/README.md'
    dst_dir = File.realpath(__dir__ + '/../../testresult') + '/'

    describe 'convert local to local markdown to doc' do

      %w[pdf xps docx html mhtml mht].each { |ext|
        it "Convert markdown to " + ext do

          dst = dst_dir + 'locToLocDocMD.' + ext
          answer = @html_api.convert_local_to_local(src, dst)

          expect(answer.code).to eql(200)
          expect(answer.status).to eql('completed')
          expect(File.exist?(answer.file)).to be_truthy
        end
      }
    end

    describe 'convert local to local markdown to doc with options' do

      %w[pdf xps docx].each { |ext|
        it "Convert markdown to " + ext do

          options_A4 = {
            width: 8.3,
            height: 11.7,
            top_margin: 0.5,
            bottom_margin: 0.5,
            left_margin: 0.5,
            right_margin: 0.5
          }

          dst = dst_dir + 'locToLocDocMDWithOpts.' + ext
          answer = @html_api.convert_local_to_local(src, dst, options_A4)

          expect(answer.code).to eql(200)
          expect(answer.status).to eql('completed')
          expect(File.exist?(answer.file)).to be_truthy
        end
      }
    end

    describe 'convert local to local markdown to image' do

      %w[jpeg jpg bmp png tiff tif gif].each { |ext|
        it "Convert markdown to " + ext do

          dst = dst_dir + 'locToLocMDImg.' + ext
          answer = @html_api.convert_local_to_local(src, dst)

          expect(answer.code).to eql(200)
          expect(answer.status).to eql('completed')
          expect(File.exist?(answer.file)).to be_truthy
        end
      }
    end

    describe 'convert local to local markdown to image with options' do

      opts = {
        width: 800,
        height: 1000,
        left_margin: 30,
        right_margin: 30,
        top_margin: 50,
        bottom_margin: 50
      }

      %w[jpeg jpg bmp png tiff tif gif].each { |ext|
        it "Convert markdown to " + ext do

          dst = dst_dir + 'locToLocMDImgOpt.' + ext
          answer = @html_api.convert_local_to_local(src, dst, opts)

          expect(answer.code).to eql(200)
          expect(answer.status).to eql('completed')
          expect(File.exist?(answer.file)).to be_truthy
        end
      }
    end
  end

  describe 'convert MHTML local to local' do

    src = File.realpath(__dir__ + '/../../testdata') + '/fileformatinfo.mht'
    dst_dir = File.realpath(__dir__ + '/../../testresult') + '/'

    describe 'convert local to local MHTML to doc' do

      %w[pdf xps docx].each { |ext|
        it "Convert MHTML to " + ext do

          dst = dst_dir + 'locToLocDocMHTML.' + ext
          answer = @html_api.convert_local_to_local(src, dst)

          expect(answer.code).to eql(200)
          expect(answer.status).to eql('completed')
          expect(File.exist?(answer.file)).to be_truthy
        end
      }
    end

    describe 'convert local to local MHTML to doc with options' do

      %w[pdf xps docx].each { |ext|
        it "Convert MHTML to " + ext do

          options_A4 = {
            width: 8.3,
            height: 11.7,
            top_margin: 0.5,
            bottom_margin: 0.5,
            left_margin: 0.5,
            right_margin: 0.5
          }

          dst = dst_dir + 'locToLocDocMHTMLWithOpts.' + ext
          answer = @html_api.convert_local_to_local(src, dst, options_A4)

          expect(answer.code).to eql(200)
          expect(answer.status).to eql('completed')
          expect(File.exist?(answer.file)).to be_truthy
        end
      }
    end

    describe 'convert local to local MHTML to image' do

      %w[jpeg jpg bmp png tiff tif gif].each { |ext|
        it "Convert MHTML to " + ext do

          dst = dst_dir + 'locToLocMHTMLImg.' + ext
          answer = @html_api.convert_local_to_local(src, dst)

          expect(answer.code).to eql(200)
          expect(answer.status).to eql('completed')
          expect(File.exist?(answer.file)).to be_truthy
        end
      }
    end

    describe 'convert local to local MHTML to image with options' do

      opts = {
        width: 800,
        height: 1000,
        left_margin: 30,
        right_margin: 30,
        top_margin: 50,
        bottom_margin: 50
      }

      %w[jpeg jpg bmp png tiff tif gif].each { |ext|
        it "Convert MHTML to " + ext do

          dst = dst_dir + 'locToLocMHTMLImgOpt.' + ext
          answer = @html_api.convert_local_to_local(src, dst, opts)

          expect(answer.code).to eql(200)
          expect(answer.status).to eql('completed')
          expect(File.exist?(answer.file)).to be_truthy
        end
      }
    end
  end

  describe 'convert SVG local to local' do

    src = File.realpath(__dir__ + '/../../testdata') + '/testpage1.svg'
    dst_dir = File.realpath(__dir__ + '/../../testresult') + '/'

    describe 'convert local to local SVG to doc' do

      %w[pdf xps].each { |ext|
        it "Convert SVG to " + ext do

          dst = dst_dir + 'locToLocDocSVG.' + ext
          answer = @html_api.convert_local_to_local(src, dst)

          expect(answer.code).to eql(200)
          expect(answer.status).to eql('completed')
          expect(File.exist?(answer.file)).to be_truthy
        end
      }
    end

    describe 'convert local to local SVG to doc with options' do

      %w[pdf xps].each { |ext|
        it "Convert SVG to " + ext do

          options_A4 = {
            width: 8.3,
            height: 11.7,
            top_margin: 0.5,
            bottom_margin: 0.5,
            left_margin: 0.5,
            right_margin: 0.5
          }

          dst = dst_dir + 'locToLocDocSVGWithOpts.' + ext
          answer = @html_api.convert_local_to_local(src, dst, options_A4)

          expect(answer.code).to eql(200)
          expect(answer.status).to eql('completed')
          expect(File.exist?(answer.file)).to be_truthy
        end
      }
    end

    describe 'convert local to local SVG to image' do

      %w[jpeg jpg bmp png tiff tif gif].each { |ext|
        it "Convert SVG to " + ext do

          dst = dst_dir + 'locToLocSVGImg.' + ext
          answer = @html_api.convert_local_to_local(src, dst)

          expect(answer.code).to eql(200)
          expect(answer.status).to eql('completed')
          expect(File.exist?(answer.file)).to be_truthy
        end
      }
    end

    describe 'convert local to local SVG to image with options' do

      opts = {
        width: 800,
        height: 1000,
        left_margin: 30,
        right_margin: 30,
        top_margin: 50,
        bottom_margin: 50
      }

      %w[jpeg jpg bmp png tiff tif gif].each { |ext|
        it "Convert SVG to " + ext do

          dst = dst_dir + 'locToLocSVGImgOpt.' + ext
          answer = @html_api.convert_local_to_local(src, dst, opts)

          expect(answer.code).to eql(200)
          expect(answer.status).to eql('completed')
          expect(File.exist?(answer.file)).to be_truthy
        end
      }
    end
  end

  describe 'convert to SVG local to local' do

    src = File.realpath(__dir__ + '/../../testdata') + '/car.'
    dst_dir = File.realpath(__dir__ + '/../../testresult') + '/'

    describe 'convert to SVG' do

      %w[bmp jpg gif tiff png].each { |ext|
        it "Trace " + ext + " to svg" do
          dst = dst_dir + ext.upcase + 'toSVG.svg'
          answer = @html_api.convert_local_to_local(src + ext, dst)

          expect(answer.code).to eql(200)
          expect(answer.status).to eql('completed')
          expect(File.exist?(answer.file)).to be_truthy
        end
      }
    end

    describe 'convert to SVG with options' do

      %w[bmp jpg gif tiff png].each { |ext|
        it "Trace to SVG with opts " + ext do

          opts = {
            error_threshold: 30,
            max_iterations: 50,
            colors_limit: 3,
            line_width: 2.0,
          }
          dst = dst_dir + ext.upcase + 'ToSVGWithOpts.svg'
          answer = @html_api.convert_local_to_local(src + ext, dst, opts)

          expect(answer.code).to eql(200)
          expect(answer.status).to eql('completed')
          expect(File.exist?(answer.file)).to be_truthy
        end
      }
    end
  end

  describe 'vectorize an image to SVG local to local' do

    src = File.realpath(__dir__ + '/../../testdata') + '/car.'
    dst_dir = File.realpath(__dir__ + '/../../testresult') + '/'

    describe 'vectorize to SVG' do

      %w[bmp jpg gif tiff png].each { |ext|
        it "Vectorize " + ext + " to svg" do
          dst = dst_dir + ext.upcase + 'VectorizetoSVG.svg'
          answer = @html_api.vectorize_local_to_local(src + ext, dst)

          expect(answer.code).to eql(200)
          expect(answer.status).to eql('completed')
          expect(File.exist?(answer.file)).to be_truthy
        end
      }
    end

    describe 'vectorize to SVG with options' do

      %w[bmp jpg gif tiff png].each { |ext|
        it "Vectorize to SVG with opts " + ext do

          opts = {
            error_threshold: 30,
            max_iterations: 50,
            colors_limit: 3,
            line_width: 2.0,
          }
          dst = dst_dir + ext.upcase + 'VectorizeToSVGWithOpts.svg'
          answer = @html_api.vectorize_local_to_local(src + ext, dst, opts)

          expect(answer.code).to eql(200)
          expect(answer.status).to eql('completed')
          expect(File.exist?(answer.file)).to be_truthy
        end
      }
    end
  end

  describe 'vectorize an image to SVG local to storage' do

    src = File.realpath(__dir__ + '/../../testdata') + '/car.'
    dst_dir = '/VectorizeSvgRuby/'

    describe 'vectorize to SVG' do

      %w[bmp jpg gif tiff png].each { |ext|
        it "Vectorize " + ext + " to svg" do
          dst = dst_dir + ext.upcase + 'VectorizetoSVG.svg'
          answer = @html_api.vectorize_local_to_storage(src + ext, dst, nil)

          expect(answer.code).to eql(200)
          expect(answer.status).to eql('completed')
          expect(@storage_api.object_exists(answer.file).exists).to be_truthy
        end
      }
    end

    describe 'vectorize to SVG with options' do

      %w[bmp jpg gif tiff png].each { |ext|
        it "Vectorize to SVG with opts " + ext do

          opts = {
            error_threshold: 30,
            max_iterations: 50,
            colors_limit: 3,
            line_width: 2.0,
          }
          dst = dst_dir + ext.upcase + 'VectorizeToSVGWithOpts.svg'
          answer = @html_api.vectorize_local_to_storage(src + ext, dst, opts)

          expect(answer.code).to eql(200)
          expect(answer.status).to eql('completed')
          expect(@storage_api.object_exists(answer.file).exists).to be_truthy
        end
      }
    end
  end

  describe 'vectorize an image to SVG storage to local' do

    src = File.realpath(__dir__ + '/../../testdata') + '/car.'
    src_dir = '/RubyTest/'
    dst_dir = File.realpath(__dir__ + '/../../testresult') + '/'

    describe 'vectorize to SVG' do
      %w[bmp jpg gif tiff png].each { |ext|
        it "Vectorize " + ext + " to svg" do
          uploaded_file = src + ext

          res = @storage_api.upload_file(src_dir, uploaded_file)
          expect(res.uploaded.length).to eql(1)
          expect(res.errors.length).to eql(0)

          dst = dst_dir + ext.upcase + 'StorToLoc.svg'
          answer = @html_api.vectorize_storage_to_local(src_dir + 'car.' + ext, dst, nil)

          expect(answer.code).to eql(200)
          expect(answer.status).to eql('completed')
          expect(File.exist?(answer.file)).to be_truthy
        end
      }
    end

    describe 'vectorize to SVG with options' do

      %w[bmp jpg gif tiff png].each { |ext|
        it "Vectorize to SVG with opts " + ext do

          opts = {
            error_threshold: 30,
            max_iterations: 50,
            colors_limit: 3,
            line_width: 2.0,
          }
          uploaded_file = src + ext

          res = @storage_api.upload_file(src_dir, uploaded_file)
          expect(res.uploaded.length).to eql(1)
          expect(res.errors.length).to eql(0)

          dst = dst_dir + ext.upcase + 'StorToLocWithOpts.svg'
          answer = @html_api.vectorize_storage_to_local(src_dir + 'car.' + ext, dst, nil, opts)

          expect(answer.code).to eql(200)
          expect(answer.status).to eql('completed')
          expect(File.exist?(answer.file)).to be_truthy
        end
      }
    end
  end

  describe 'vectorize an image to SVG storage to storage' do

    src = File.realpath(__dir__ + '/../../testdata') + '/car.'
    src_dir = '/RubyTest/'

    describe 'vectorize to SVG' do
      %w[bmp jpg gif tiff png].each { |ext|
        it "Vectorize " + ext + " to svg" do
          uploaded_file = src + ext

          res = @storage_api.upload_file(src_dir, uploaded_file)
          expect(res.uploaded.length).to eql(1)
          expect(res.errors.length).to eql(0)

          dst = src_dir + ext.upcase + 'StorToStor.svg'
          answer = @html_api.vectorize_storage_to_storage(src_dir + 'car.' + ext, dst, nil)

          expect(answer.code).to eql(200)
          expect(answer.status).to eql('completed')
          expect(@storage_api.object_exists(answer.file).exists).to be_truthy
        end
      }
    end

    describe 'vectorize to SVG with options' do

      %w[bmp jpg gif tiff png].each { |ext|
        it "Vectorize to SVG with opts " + ext do

          opts = {
            error_threshold: 30,
            max_iterations: 50,
            colors_limit: 3,
            line_width: 2.0,
          }
          uploaded_file = src + ext

          res = @storage_api.upload_file(src_dir, uploaded_file)
          expect(res.uploaded.length).to eql(1)
          expect(res.errors.length).to eql(0)

          dst = src_dir + ext.upcase + 'StorToStorWithOpts.svg'
          answer = @html_api.vectorize_storage_to_storage(src_dir + 'car.' + ext, dst, nil, opts)

          expect(answer.code).to eql(200)
          expect(answer.status).to eql('completed')
          expect(@storage_api.object_exists(answer.file).exists).to be_truthy
        end
      }
    end
  end

end

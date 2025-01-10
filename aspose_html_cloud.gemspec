# -*- encoding: utf-8 -*-

=begin
  --------------------------------------------------------------------------------------------------------------------
  <copyright company="Aspose" file="aspose_html_cloud.gemspec">
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

$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "aspose_html_cloud"
  s.version     = "22.12.1"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Alexander Makogon"]
  s.email       = 'alexander.makogon@aspose.com'
  s.homepage    = "https://github.com/aspose-html-cloud/aspose-html-cloud-ruby"
  s.summary     = "A ruby wrapper for the Aspose.HTML Cloud SDK API."
  s.description = "This repository contains Aspose.HTML Cloud SDK for ruby source code."
  s.license     = "MIT"
  s.required_ruby_version = ">= 1.9"

  s.add_runtime_dependency 'typhoeus', '~> 0.7', '>= 0.7.3'
  s.add_runtime_dependency 'json', '~> 2.1', '>= 2.1.0'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'
  s.add_development_dependency 'vcr', '~> 3.0', '>= 3.0.1'
  s.add_development_dependency 'webmock', '~> 1.24', '>= 1.24.3'
  s.add_development_dependency 'autotest', '~> 4.4', '>= 4.4.6'
  s.add_development_dependency 'autotest-rails-pure', '~> 4.1', '>= 4.1.2'
  s.add_development_dependency 'autotest-growl', '~> 0.2', '>= 0.2.16'
  s.add_development_dependency 'autotest-fsevent', '~> 0.2', '>= 0.2.12'

  s.files         = Dir['lib/**/*']
  s.test_files    = Dir['spec/**/*']
  s.executables   = []
  s.require_paths = ["lib"]
end

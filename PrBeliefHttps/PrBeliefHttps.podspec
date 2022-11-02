Pod::Spec.new do |spec|

    spec.name         = "PrBeliefHttps"
    spec.version      = "0.0.2"
    spec.summary      = "Request Https Method"
    spec.description  = <<-DESC
                            Request Https Method GET, POST, UPDATE, DELETE
                   DESC
    spec.homepage     = "https://github.com/00believers00/PrBeliefHttps"
    spec.license          = {:type => 'MIT', :text => <<-LICENSE
                            Copyright <2022> <Atiwat Promarin>
                            
                            Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

                            The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

                            THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
                        LICENSE
                       }
    spec.author           = { "Atiwat Promarin" => "np.nawin@gmail.com" }
    spec.source           = { :git => "https://github.com/00believers00/PrBeliefHttps.git", :tag => spec.version.to_s }
    spec.social_media_url = 'https://github.com/00believers00'

    spec.platform     = :ios, '13.0'
    spec.module       = "PrBeliefHttps"

    spec.source_files  = "PrBeliefHttps/**/*.{swift}"
    
    spec.swift_version = "5.0"

end

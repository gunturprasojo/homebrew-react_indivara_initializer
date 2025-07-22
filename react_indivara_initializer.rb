class ReactIndivaraInitializer < Formula
  desc "React Generator for Indivara Project"
  homepage "https://www.indivaragroup.com"
  url "https://github.com/gunturprasojo/react_indivara_initializer/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "185bc63d299f1d7bd5915458d5906ce3833247993107eb09e8c6319b72261179"
  license "MIT"

  def install
    libexec.install Dir["*"]

    # Create wrapper scripts in /usr/local/bin that call the ruby files in libexec
    %w[react_indivara react_indivara_project react_indivara_page].each do |script|
      (bin/script).write <<~EOS
        #!/bin/bash
        exec ruby "#{libexec}/#{script}" "$@"
      EOS
      chmod 0755, bin/script
    end
  end
end
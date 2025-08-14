class ReactIndivaraInitializer < Formula
  desc "React Generator for Indivara Project"
  homepage "https://www.indivaragroup.com"
  url "https://github.com/gunturprasojo/react_indivara_initializer/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "5516abac7cf0908eff7ad4dd0184ff6c21028a8e9af5bc717a18d746d44bccc1"
  license "MIT"

  def install
    libexec.install Dir["*"]

    # Create wrapper scripts in /usr/local/bin that call the ruby files in libexec
    %w[react_indivara react_indivara_project react_indivara_page react_indivara_section].each do |script|
      (bin/script).write <<~EOS
        #!/bin/bash
        exec ruby "#{libexec}/#{script}" "$@"
      EOS
      chmod 0755, bin/script
    end
  end
end
class ReactIndivaraInitializer < Formula
  desc "React Generator for Indivara Project"
  homepage "www.indivaragroup.com"
  url "https://github.com/gunturprasojo/react_indivara_initializer/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "6953703aca9d1f95f7b5d68cd4bd83deaeddbcd8dc2d941860232456816b2d76"
  license "MIT"

  def install
    libexec.install Dir["*"]
    bin.install libexec/"bin/react_indivara"
    bin.install libexec/"bin/react_indivara_project"
    bin.install libexec/"bin/react_indivara_page"

    # Rewrite bin scripts to run from libexec
    %w[react_indivara react_indivara_project react_indivara_page].each do |script|
      (bin/script).write <<~EOS
        #!/bin/bash
        exec ruby "#{libexec}/bin/#{script}" "$@"
      EOS
    end
  end
  
end
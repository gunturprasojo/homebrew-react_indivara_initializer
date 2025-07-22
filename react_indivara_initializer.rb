class ReactIndivaraInitializer < Formula
  desc "React Generator for Indivara Project"
  homepage "www.indivaragroup.com"
  url "https://github.com/gunturprasojo/react_indivara_initializer/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "6953703aca9d1f95f7b5d68cd4bd83deaeddbcd8dc2d941860232456816b2d76"
  license "MIT"

  def install
    bin.install "react_indivara"
    bin.install "react_indivara_project"
    bin.install "react_indivara_page"
  end
  
end
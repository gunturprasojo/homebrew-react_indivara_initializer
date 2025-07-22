class ReactIndivaraInitializer < Formula
  desc "React Generator for Indivara Project"
  homepage "www.indivaragroup.com"
  url "https://github.com/gunturprasojo/react_indivara_initializer/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "185bc63d299f1d7bd5915458d5906ce3833247993107eb09e8c6319b72261179"
  license "MIT"

  def install
    bin.install "react_indivara"
    bin.install "react_indivara_project"
    bin.install "react_indivara_page"
  end
  
end
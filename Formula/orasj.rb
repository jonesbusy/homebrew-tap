# Generated with JReleaser 1.27.0 at 2026-11-26T09:24:45.437721305Z

class Orasj < Formula
  desc "Experimental Java ORAS CLI for OCI registries"
  homepage "https://github.com/jonesbusy/oras-java-cli"
  version "0.0.3"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jonesbusy/oras-java-cli/releases/download/0.0.3/orasj-0.0.3-linux-aarch_64.zip"
    sha256 "c40a33c01524c21438d9546319856d911c3f217bcd90057fe986c1b139624b58"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jonesbusy/oras-java-cli/releases/download/0.0.3/orasj-0.0.3-linux-x86_64.zip"
    sha256 "398849c500fdb98193b740e47c18b3b3dbd5f3746feb0ba6a7afe3da36d3704e"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/orasj" => "orasj"
  end

  test do
    output = shell_output("#{bin}/orasj --version")
    assert_match "0.0.3", output
  end
end

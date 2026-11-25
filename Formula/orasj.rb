# Generated with JReleaser 1.27.0 at 2026-11-25T06:42:15.502175572Z

class Orasj < Formula
  desc "Experimental Java ORAS CLI for OCI registries"
  homepage "https://github.com/jonesbusy/oras-java-cli"
  version "0.0.1"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jonesbusy/oras-java-cli/releases/download/0.0.1/orasj-0.0.1-linux-aarch_64.zip"
    sha256 "484e95d025be14023e62cacc72cfcac77f5a65af01574ff91ce6bfbe09319812"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jonesbusy/oras-java-cli/releases/download/0.0.1/orasj-0.0.1-linux-x86_64.zip"
    sha256 "a32f9c096b60c8ec8b26a052ccadf7f7e90f213cbf66b0ed207ed57797d0e3ff"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/orasj" => "orasj"
  end

  test do
    output = shell_output("#{bin}/orasj --version")
    assert_match "0.0.1", output
  end
end

# Generated with JReleaser 1.27.0 at 2026-11-25T06:59:23.086002958Z

class Orasj < Formula
  desc "Experimental Java ORAS CLI for OCI registries"
  homepage "https://github.com/jonesbusy/oras-java-cli"
  version "0.0.2"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jonesbusy/oras-java-cli/releases/download/0.0.2/orasj-0.0.2-linux-aarch_64.zip"
    sha256 "132e0816ecda61822ebd026a66eced5797339e53dee240b21cd26a3a2e9226d2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jonesbusy/oras-java-cli/releases/download/0.0.2/orasj-0.0.2-linux-x86_64.zip"
    sha256 "585e849be205e511a8c044b59e9c71935389c4991e10f34b27619a2ee8ed13ca"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/orasj" => "orasj"
  end

  test do
    output = shell_output("#{bin}/orasj --version")
    assert_match "0.0.2", output
  end
end

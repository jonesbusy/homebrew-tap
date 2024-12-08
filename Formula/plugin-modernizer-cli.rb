class PluginModernizerCli < Formula
    desc "Plugin Modernizer"
    version "881.v9b_de6f8a_4c76"
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://repo.jenkins-ci.org/artifactory/releases/io/jenkins/plugin-modernizer/plugin-modernizer-cli/881.v9b_de6f8a_4c76/plugin-modernizer-cli-881.v9b_de6f8a_4c76.jar"
    sha256 "83cb63f88434bae93624e1cb1c74f3c8ac3e4827acfea249e957519ee874cd2e"
    license "MIT"

    def install
      libexec.install "plugin-modernizer-cli-881.v9b_de6f8a_4c76.jar"
      bin.write_jar_script libexec/"plugin-modernizer-cli-881.v9b_de6f8a_4c76.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end

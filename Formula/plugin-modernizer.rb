class PluginModernizer < Formula
    desc "Plugin Modernizer"
    version "881.vfb_92e5678fcd".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://repo.jenkins-ci.org/artifactory/releases/io/jenkins/plugin-modernizer/plugin-modernizer-cli/881.vfb_92e5678fcd/plugin-modernizer-cli-881.vfb_92e5678fcd.jar"
    sha256 "e3d5a430f65d00dc53424d5f957da151c55b77794f5fe5369420ce24436edc47"
    license "MIT"

    def install
      libexec.install "plugin-modernizer-cli-881.vfb_92e5678fcd.jar"
      bin.write_jar_script libexec/"plugin-modernizer-cli-881.vfb_92e5678fcd.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end

class PluginModernizer < Formula
    desc "Plugin Modernizer"
    version "499.vb_86f97f0b_197".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://repo.jenkins-ci.org/artifactory/releases/io/jenkins/plugin-modernizer/plugin-modernizer-cli/499.vb_86f97f0b_197/plugin-modernizer-cli-499.vb_86f97f0b_197.jar"
    sha256 "0827c8eaf17b7e3221c11b866f5851ce0cab6c35225d4ff38af22713680f845d"
    license "MIT"

    def install
      libexec.install "plugin-modernizer-cli-499.vb_86f97f0b_197.jar"
      bin.write_jar_script libexec/"plugin-modernizer-cli-499.vb_86f97f0b_197.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end

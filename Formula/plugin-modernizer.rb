class PluginModernizer < Formula
    desc "Plugin Modernizer"
    version "881.vdde52f4467b_7"
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://repo.jenkins-ci.org/artifactory/releases/io/jenkins/plugin-modernizer/plugin-modernizer-cli/881.vdde52f4467b_7/plugin-modernizer-cli-881.vdde52f4467b_7.jar"
    sha256 "b8a7040d2afa506b4d870c94211583218a6064699d9450de012f774623345304"
    license "MIT"

    def install
      libexec.install "plugin-modernizer-cli-881.vdde52f4467b_7.jar"
      bin.write_jar_script libexec/"plugin-modernizer-cli-881.vdde52f4467b_7.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end

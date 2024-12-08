class PluginModernizer < Formula
    desc "Plugin Modernizer"
    version "881.ve1cd7605176d"
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://repo.jenkins-ci.org/artifactory/releases/io/jenkins/plugin-modernizer/plugin-modernizer-cli/881.ve1cd7605176d/plugin-modernizer-cli-881.ve1cd7605176d.jar"
    sha256 "1b8b2698db9d9eadd025be4b989a3ade22aa99e2be2adbf429c3539a876c8ff6"
    license "MIT"

    def install
      libexec.install "plugin-modernizer-cli-881.ve1cd7605176d.jar"
      bin.write_jar_script libexec/"plugin-modernizer-cli-881.ve1cd7605176d.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end

class PluginModernizer < Formula
    desc "Plugin Modernizer"
    version "881.vb_87c73cc62db_".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://repo.jenkins-ci.org/artifactory/releases/io/jenkins/plugin-modernizer/plugin-modernizer-cli/881.vb_87c73cc62db_/plugin-modernizer-cli-881.vb_87c73cc62db_.jar"
    sha256 "df77d78b67c34f16471e46768fcd6b655147e9d5f9e003349970018666864ce1"
    license "MIT"

    def install
      libexec.install "plugin-modernizer-cli-881.vb_87c73cc62db_.jar"
      bin.write_jar_script libexec/"plugin-modernizer-cli-881.vb_87c73cc62db_.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end

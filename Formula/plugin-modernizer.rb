class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which only %d part for CD
    version "912.vb_fecb_46cb_5e3".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/912.vb_fecb_46cb_5e3/jenkins-plugin-modernizer-912.vb_fecb_46cb_5e3.jar"
    sha256 "6d142c0ad01cc719636757ae69865cfbdfa2edc551b780f462f1d18f55924248"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-912.vb_fecb_46cb_5e3.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-912.vb_fecb_46cb_5e3.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end

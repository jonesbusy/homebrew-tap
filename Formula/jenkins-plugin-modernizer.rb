class JenkinsPluginModernizer < Formula
    desc "Jenkins Plugin Modernizer"
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://repo.jenkins-ci.org/artifactory/releases/io/jenkins/plugin-modernizer/plugin-modernizer-cli/499.vb_86f97f0b_197/plugin-modernizer-cli-499.vb_86f97f0b_197.jar"
    sha256 "0827c8eaf17b7e3221c11b866f5851ce0cab6c35225d4ff38af22713680f845d"
    license "MIT"
    
    def install
      libexec.install "plugin-modernizer-cli-499.vb_86f97f0b_197.jar"
      bin.write_jar_script libexec/"plugin-modernizer-cli-499.vb_86f97f0b_197.jar", "jenkins-plugin-modernizer"
      #(bin/"jenkins-plugin-modernizer").write_env_script libexec/"bin/jenkins-plugin-modernizer", Language::Java.overridable_java_home_env
    end
  
    test do
      system bin/"jenkins-plugin-modernizer", "--version"
    end
  end

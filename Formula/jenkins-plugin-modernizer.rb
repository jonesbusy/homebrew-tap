class JenkinsPluginModernizer < Formula
    desc "Jenkins Plugin Modernizer"
    homepage "https://github.com/aragozin/jvm-tools"
    url "https://repo.jenkins-ci.org/artifactory/releases/io/jenkins/plugin-modernizer/plugin-modernizer-cli/499.vb_86f97f0b_197/plugin-modernizer-cli-499.vb_86f97f0b_197.jar"
    sha256 "0827c8eaf17b7e3221c11b866f5851ce0cab6c35225d4ff38af22713680f845d"
    license "MIT"
  
    bottle do
      rebuild 1
      sha256 cellar: :any_skip_relocation, all: "14d24741238dcbbe71fa663ce2bc230b37cdd5dc0f06086d1020250b86ef71b4"
    end
    
    def install
      libexec.install "jenkins-plugin-modernizer-#{version}.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-#{version}.jar", "jenkins-plugin-modernizer"
    end
  
    test do
      system bin/"jenkins-plugin-modernizer", "--version"
    end
  end

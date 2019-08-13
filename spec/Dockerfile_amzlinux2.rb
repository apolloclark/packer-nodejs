# spec/Dockerfile_spec.rb

require_relative "spec_helper"

describe "Dockerfile" do
  before(:all) do
    load_docker_image()
    set :os, family: :redhat
  end

  describe "Dockerfile#running" do
    it "runs the right version of Amazon Linux" do
      expect(os_version).to include("Amazon Linux")
      expect(os_version).to include("Linux 2")
    end
    it "runs as root" do
      expect(sys_user).to eql("root")
    end
  end

  describe package(ENV['PACKAGE_NAME']) do
    it { should be_installed.with_version(ENV['PACKAGE_VERSION']) }
  end

  describe command("node --version") do
    its(:exit_status) { should eq 0 }
    its(:stdout) { should contain ENV['PACKAGE_VERSION'] }
  end
end

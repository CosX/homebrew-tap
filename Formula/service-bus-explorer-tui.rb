class ServiceBusExplorerTui < Formula
  desc "Cross-platform TUI for managing Azure Service Bus"
  homepage "https://github.com/CosX/service-bus-explorer-tui"
  version "0.0.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.19/service-bus-explorer-tui-v0.0.19-aarch64-apple-darwin.tar.gz"
      sha256 "97d24072db409ced72481880f22b197d69d896c49716be291e92a3b7ce311134"
    else
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.19/service-bus-explorer-tui-v0.0.19-x86_64-apple-darwin.tar.gz"
      sha256 "0606fc3295822815535c9c40e19b27e6f7157e6b3518047fc82d3342594e583a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.19/service-bus-explorer-tui-v0.0.19-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "56879cd602e8534f7fe672c905ea8dd2fffba3fcd7a569038f9f00d63ee319fa"
    else
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.19/service-bus-explorer-tui-v0.0.19-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a1360cc37f5aa6bc69242c6b54990494f5cdb322239411bec4024165a714c3a1"
    end
  end

  def install
    bin.install "service-bus-explorer-tui"
  end

  test do
    system "#{bin}/service-bus-explorer-tui", "--version"
  end
end

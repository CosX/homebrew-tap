class ServiceBusExplorerTui < Formula
  desc "Cross-platform TUI for managing Azure Service Bus"
  homepage "https://github.com/CosX/service-bus-explorer-tui"
  version "0.0.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.14/service-bus-explorer-tui-v0.0.14-aarch64-apple-darwin.tar.gz"
      sha256 "01ea39df136bf5f1cdc4831125b806c85e1be6c28d8925a840797ed608063afc"
    else
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.14/service-bus-explorer-tui-v0.0.14-x86_64-apple-darwin.tar.gz"
      sha256 "4ad1b3d9756182e17079af64fe8b461ff751255f2f68c95b85506c538ff9ffaa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.14/service-bus-explorer-tui-v0.0.14-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4099759e6d83fa91ea4d443d6f1b63e4be5436053b6e0c146f5e00a00215f4ca"
    else
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.14/service-bus-explorer-tui-v0.0.14-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ce2ca560808a5718c8a229ad545a2f7315d79ce7b87c1228e030fb8d177776fd"
    end
  end

  def install
    bin.install "service-bus-explorer-tui"
  end

  test do
    system "#{bin}/service-bus-explorer-tui", "--version"
  end
end

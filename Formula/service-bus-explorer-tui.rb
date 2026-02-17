class ServiceBusExplorerTui < Formula
  desc "Cross-platform TUI for managing Azure Service Bus"
  homepage "https://github.com/CosX/service-bus-explorer-tui"
  version "0.0.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.7/service-bus-explorer-tui-v0.0.7-aarch64-apple-darwin.tar.gz"
      sha256 "b3b1cff6e59912090883e32557ea3c67ea785dcf923e50903ec458b14fec37cc"
    else
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.7/service-bus-explorer-tui-v0.0.7-x86_64-apple-darwin.tar.gz"
      sha256 "fb53f75915b70f66ba0009e0a199405ccc33771c08e52f0f964ef6c4f1fe850f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.7/service-bus-explorer-tui-v0.0.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "31364042ae58b2d9cd6e4afe9ee8c80238be6a50898561ce33c2ef27c6518fd6"
    else
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.7/service-bus-explorer-tui-v0.0.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a8e23b2597fcac44314df5b028e4b72c87827b5f82024da663662f2fc2399b45"
    end
  end

  def install
    bin.install "service-bus-explorer-tui"
  end

  test do
    system "#{bin}/service-bus-explorer-tui", "--version"
  end
end

class ServiceBusExplorerTui < Formula
  desc "Cross-platform TUI for managing Azure Service Bus"
  homepage "https://github.com/CosX/service-bus-explorer-tui"
  version "0.0.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.18/service-bus-explorer-tui-v0.0.18-aarch64-apple-darwin.tar.gz"
      sha256 "8eb4213a9bb529e963a97be8fb0e642229922c37439fb672ebfbd27bfe74e7d9"
    else
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.18/service-bus-explorer-tui-v0.0.18-x86_64-apple-darwin.tar.gz"
      sha256 "8309906e86f3a738a3bdbae1eb0f7e06feb2a09702a272d6231f4b53771917c9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.18/service-bus-explorer-tui-v0.0.18-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8e75f192f816d093c6f9a809b33a98fa3e512b60b90356c70e3af0906d18d7e8"
    else
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.18/service-bus-explorer-tui-v0.0.18-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "283509c06156c536b6e274ec5d37fde8a2b5139061858003510f3c8341c34150"
    end
  end

  def install
    bin.install "service-bus-explorer-tui"
  end

  test do
    system "#{bin}/service-bus-explorer-tui", "--version"
  end
end

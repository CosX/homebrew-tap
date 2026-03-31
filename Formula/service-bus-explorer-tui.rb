class ServiceBusExplorerTui < Formula
  desc "Cross-platform TUI for managing Azure Service Bus"
  homepage "https://github.com/CosX/service-bus-explorer-tui"
  version "0.0.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.16/service-bus-explorer-tui-v0.0.16-aarch64-apple-darwin.tar.gz"
      sha256 "5c58583e9568125f3978e2cdd5987681467b8ffc7f9e856c6512e57767714924"
    else
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.16/service-bus-explorer-tui-v0.0.16-x86_64-apple-darwin.tar.gz"
      sha256 "ddff6b829df8b7716abc527bc773a3d605c9be96f80fe56d9a70f0d58ad5152b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.16/service-bus-explorer-tui-v0.0.16-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "01bc898b909ea17f58cd772289c5236d669376c69c9d07258139fa0b90c04c20"
    else
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.16/service-bus-explorer-tui-v0.0.16-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6958a0bb24bd05e01bbdb361f92bc7a35fab5ceeb950fc4029bc6b7ae87fa7ea"
    end
  end

  def install
    bin.install "service-bus-explorer-tui"
  end

  test do
    system "#{bin}/service-bus-explorer-tui", "--version"
  end
end

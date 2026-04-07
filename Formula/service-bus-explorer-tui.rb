class ServiceBusExplorerTui < Formula
  desc "Cross-platform TUI for managing Azure Service Bus"
  homepage "https://github.com/CosX/service-bus-explorer-tui"
  version "0.0.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.17/service-bus-explorer-tui-v0.0.17-aarch64-apple-darwin.tar.gz"
      sha256 "59e7880314493d60b2c5f4d1d7754bd184d53637a0f72b7d2396bdafc674e44b"
    else
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.17/service-bus-explorer-tui-v0.0.17-x86_64-apple-darwin.tar.gz"
      sha256 "2c79c8f4b0b3514b26ae7696600fb6834b8360b29030d2d3ce23646721a8febe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.17/service-bus-explorer-tui-v0.0.17-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4ff6fa177ab7683f43ed813c5660d2ea701125437a66010aec65e666f7dea53d"
    else
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.17/service-bus-explorer-tui-v0.0.17-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "56315ae893300758a056d0418948cef3cb06f1c70b8b76fb58d19e215a382df0"
    end
  end

  def install
    bin.install "service-bus-explorer-tui"
  end

  test do
    system "#{bin}/service-bus-explorer-tui", "--version"
  end
end

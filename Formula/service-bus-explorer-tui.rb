class ServiceBusExplorerTui < Formula
  desc "Cross-platform TUI for managing Azure Service Bus"
  homepage "https://github.com/CosX/service-bus-explorer-tui"
  version "0.0.20"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.20/service-bus-explorer-tui-v0.0.20-aarch64-apple-darwin.tar.gz"
      sha256 "59c5b03dc01071e6be93c5c22d1edf8c26037169276cea1bf3a0181dc5e13007"
    else
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.20/service-bus-explorer-tui-v0.0.20-x86_64-apple-darwin.tar.gz"
      sha256 "041bd81c9c5f4c9cdbafa8eb1771d576bc9487cd953bfb3faf56360aa5e670b3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.20/service-bus-explorer-tui-v0.0.20-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "57d7c7744fe47ff092fa51e00a804890d02a9d99cb231ebe0440a9711b6a21ce"
    else
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.20/service-bus-explorer-tui-v0.0.20-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "19b923de20148d3d24cfb9a1e7ebe50e8eacf8e973867884a7487099fe7040a5"
    end
  end

  def install
    bin.install "service-bus-explorer-tui"
  end

  test do
    system "#{bin}/service-bus-explorer-tui", "--version"
  end
end

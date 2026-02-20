class ServiceBusExplorerTui < Formula
  desc "Cross-platform TUI for managing Azure Service Bus"
  homepage "https://github.com/CosX/service-bus-explorer-tui"
  version "0.0.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.10/service-bus-explorer-tui-v0.0.10-aarch64-apple-darwin.tar.gz"
      sha256 "77239eeec2455ccb5156cde8a6f2b84ca6e1707a5bfb9af09bd6920ce2c9f26e"
    else
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.10/service-bus-explorer-tui-v0.0.10-x86_64-apple-darwin.tar.gz"
      sha256 "36a53a8b82646527ebc10e5e5fddb599de6ba11a97eab28c3dd580fed61cda54"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.10/service-bus-explorer-tui-v0.0.10-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "19ee60ef65f383b9f08eae8b6b18b9fe83cc86df147cd992cdf8291fb322845b"
    else
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.10/service-bus-explorer-tui-v0.0.10-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2a53587bd895b2472f3e1db09128fa952763a2e085809ed89141f2a4e2bef08c"
    end
  end

  def install
    bin.install "service-bus-explorer-tui"
  end

  test do
    system "#{bin}/service-bus-explorer-tui", "--version"
  end
end

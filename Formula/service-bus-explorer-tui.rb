class ServiceBusExplorerTui < Formula
  desc "Cross-platform TUI for managing Azure Service Bus"
  homepage "https://github.com/CosX/service-bus-explorer-tui"
  version "0.0.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.11/service-bus-explorer-tui-v0.0.11-aarch64-apple-darwin.tar.gz"
      sha256 "a6d55359f013a0a1dda91140470978c2bd60e64daf597c967b5066258c5a7d4a"
    else
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.11/service-bus-explorer-tui-v0.0.11-x86_64-apple-darwin.tar.gz"
      sha256 "9d1a36a1eb5c0ae2fd2f883d4e8463fbe3d7953ff4bfcb14dfe8c401682b4a27"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.11/service-bus-explorer-tui-v0.0.11-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3f869430dd84d4579cc4971ef0b445cf6ce054e5531f2fbc08dbbe9ca59c4e82"
    else
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.11/service-bus-explorer-tui-v0.0.11-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b040c4c1822104ad310ff56c90405f8e8243db2a3ab197d886800f9cd9d05c60"
    end
  end

  def install
    bin.install "service-bus-explorer-tui"
  end

  test do
    system "#{bin}/service-bus-explorer-tui", "--version"
  end
end

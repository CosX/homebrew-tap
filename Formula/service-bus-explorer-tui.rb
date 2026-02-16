class ServiceBusExplorerTui < Formula
  desc "Cross-platform TUI for managing Azure Service Bus"
  homepage "https://github.com/CosX/service-bus-explorer-tui"
  version "0.0.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.6/service-bus-explorer-tui-v0.0.6-aarch64-apple-darwin.tar.gz"
      sha256 "7ac0010d93e47a03daf0e2a6cd5ac880c592e38c7a689e93cc4afb7e0cc09d66"
    else
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.6/service-bus-explorer-tui-v0.0.6-x86_64-apple-darwin.tar.gz"
      sha256 "12e8b67d486c1698e86673e8f1b60ae4479e06b0576cac758c94ed88f7f8ed64"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.6/service-bus-explorer-tui-v0.0.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1f297ec3d7f727ed21a6ec6892374cacae69344d88621614bb20b2eca9f526c1"
    else
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.6/service-bus-explorer-tui-v0.0.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4db4c4f436c19fd9cd9e92fbd21403b22c5b92914097469478932c39a7e5daa6"
    end
  end

  def install
    bin.install "service-bus-explorer-tui"
  end

  test do
    system "#{bin}/service-bus-explorer-tui", "--version"
  end
end

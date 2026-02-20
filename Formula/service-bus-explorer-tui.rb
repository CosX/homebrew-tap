class ServiceBusExplorerTui < Formula
  desc "Cross-platform TUI for managing Azure Service Bus"
  homepage "https://github.com/CosX/service-bus-explorer-tui"
  version "0.0.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.9/service-bus-explorer-tui-v0.0.9-aarch64-apple-darwin.tar.gz"
      sha256 "a98c7a236dacc5ac0c576570568b4b5828bfd06c5c8be6ef9f893d9a38869240"
    else
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.9/service-bus-explorer-tui-v0.0.9-x86_64-apple-darwin.tar.gz"
      sha256 "aa6b1bdda0f5788a67155ad586d3ad8d94c793cb796e23a7ee7a451b6db02db4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.9/service-bus-explorer-tui-v0.0.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4cd70b143bfdcfe8f8ed9269bf1cad0eb394b2f89123891c685ab9370063359b"
    else
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.9/service-bus-explorer-tui-v0.0.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "29252b35ad5e668dc66f42c2108d26259179bd57187e8469a7d17d1c6faf33ac"
    end
  end

  def install
    bin.install "service-bus-explorer-tui"
  end

  test do
    system "#{bin}/service-bus-explorer-tui", "--version"
  end
end

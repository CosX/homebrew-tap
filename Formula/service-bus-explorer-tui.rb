class ServiceBusExplorerTui < Formula
  desc "Cross-platform TUI for managing Azure Service Bus"
  homepage "https://github.com/CosX/service-bus-explorer-tui"
  version "0.0.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.22/service-bus-explorer-tui-v0.0.22-aarch64-apple-darwin.tar.gz"
      sha256 "21f36a27f2af52f21f524a6f1cbc61a1fb26cced6464d1d590b0f3c9f477be37"
    else
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.22/service-bus-explorer-tui-v0.0.22-x86_64-apple-darwin.tar.gz"
      sha256 "805caf3c3e33d65d08714de5ee09248577f9c81dba10646495eeaf5056bed8bc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.22/service-bus-explorer-tui-v0.0.22-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "106d75abea9dcdfb0350b8bfd9b56d3163497bcb359680afe87f49e880fa0d1b"
    else
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.22/service-bus-explorer-tui-v0.0.22-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f585f65aa2f489b02dbeca47d246987b592b24e3ce43af75a54d8910132d3ba1"
    end
  end

  def install
    bin.install "service-bus-explorer-tui"
  end

  test do
    system "#{bin}/service-bus-explorer-tui", "--version"
  end
end

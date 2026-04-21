class ServiceBusExplorerTui < Formula
  desc "Cross-platform TUI for managing Azure Service Bus"
  homepage "https://github.com/CosX/service-bus-explorer-tui"
  version "0.0.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.21/service-bus-explorer-tui-v0.0.21-aarch64-apple-darwin.tar.gz"
      sha256 "abfd60de2716878a013fcd954b8283a3746e1e2f282bb9592e4092fc814c0b0b"
    else
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.21/service-bus-explorer-tui-v0.0.21-x86_64-apple-darwin.tar.gz"
      sha256 "863d9a2d4d1d649e35c3211e68bed3780b155acd8190db6cebb93c97636585d7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.21/service-bus-explorer-tui-v0.0.21-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3fcd975215d70829ce24072c389f39342552906d918e91dbe71288f1e58e3cf2"
    else
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.21/service-bus-explorer-tui-v0.0.21-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7620fab1dc99713b9de7ec32e0adcf2eb796feb1d0c8e558bcaa08dce865f9e4"
    end
  end

  def install
    bin.install "service-bus-explorer-tui"
  end

  test do
    system "#{bin}/service-bus-explorer-tui", "--version"
  end
end

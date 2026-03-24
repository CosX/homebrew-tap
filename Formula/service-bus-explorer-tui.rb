class ServiceBusExplorerTui < Formula
  desc "Cross-platform TUI for managing Azure Service Bus"
  homepage "https://github.com/CosX/service-bus-explorer-tui"
  version "0.0.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.15/service-bus-explorer-tui-v0.0.15-aarch64-apple-darwin.tar.gz"
      sha256 "ac818fb5e733f13943b6302365e09c77d0253f3e60ef8d0ffbc57032c357a33e"
    else
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.15/service-bus-explorer-tui-v0.0.15-x86_64-apple-darwin.tar.gz"
      sha256 "bed183d5a1bcd123fc8a8c67d1f6dcc4224c4125250f86f940e91dee62265a88"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.15/service-bus-explorer-tui-v0.0.15-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "375499182dd6674b7aac57ba8f2f11cd93cba96760262fe9ba92706b9c3eecff"
    else
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.15/service-bus-explorer-tui-v0.0.15-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "43d983eadc6e870f89b8143334ed291794aa4bc8e36292f3d022eeee65bbc996"
    end
  end

  def install
    bin.install "service-bus-explorer-tui"
  end

  test do
    system "#{bin}/service-bus-explorer-tui", "--version"
  end
end

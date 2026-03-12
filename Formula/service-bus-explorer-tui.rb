class ServiceBusExplorerTui < Formula
  desc "Cross-platform TUI for managing Azure Service Bus"
  homepage "https://github.com/CosX/service-bus-explorer-tui"
  version "0.0.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.13/service-bus-explorer-tui-v0.0.13-aarch64-apple-darwin.tar.gz"
      sha256 "317e981f1b5fd840d9ba8333c1b4199e94a9741a859b04a298f9d1f109cce3d3"
    else
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.13/service-bus-explorer-tui-v0.0.13-x86_64-apple-darwin.tar.gz"
      sha256 "fdf8c6fe4cf2558d031d8812982eea9c7bff548939e296504917b0592ca08da9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.13/service-bus-explorer-tui-v0.0.13-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6c19a613c357c24275dd1dc6ca7b2caba58c66f906ddee62540069df9a9e3504"
    else
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.13/service-bus-explorer-tui-v0.0.13-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3d790fc01311e22c9ef662ab9e2476ed520e12767ba06afe3cc807701f50c7ff"
    end
  end

  def install
    bin.install "service-bus-explorer-tui"
  end

  test do
    system "#{bin}/service-bus-explorer-tui", "--version"
  end
end

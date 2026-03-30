class ServiceBusExplorerTui < Formula
  desc "Cross-platform TUI for managing Azure Service Bus"
  homepage "https://github.com/CosX/service-bus-explorer-tui"
  version "0.0.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.16/service-bus-explorer-tui-v0.0.16-aarch64-apple-darwin.tar.gz"
      sha256 "e4ce008794110a870767f80159627dff89e88f690ff36a04392e3b110db6746c"
    else
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.16/service-bus-explorer-tui-v0.0.16-x86_64-apple-darwin.tar.gz"
      sha256 "9edf8d6caadd5b0de19e287921b676406e49fd9cf6881dd26d63d2317feb26b9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.16/service-bus-explorer-tui-v0.0.16-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a088266c8481077090813ad2c511cc7414f2c55990fa743d58f86af20fbc60bb"
    else
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.16/service-bus-explorer-tui-v0.0.16-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "529a2aefc6d0d4b4475477c96a647078b8fd6fd89ac4c466aadd4ca5cefe3ff0"
    end
  end

  def install
    bin.install "service-bus-explorer-tui"
  end

  test do
    system "#{bin}/service-bus-explorer-tui", "--version"
  end
end

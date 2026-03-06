class ServiceBusExplorerTui < Formula
  desc "Cross-platform TUI for managing Azure Service Bus"
  homepage "https://github.com/CosX/service-bus-explorer-tui"
  version "0.0.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.12/service-bus-explorer-tui-v0.0.12-aarch64-apple-darwin.tar.gz"
      sha256 "2b83a6c27c5179093436767c4e4897e8cb98b6961fec125ebcd34cde25061f57"
    else
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.12/service-bus-explorer-tui-v0.0.12-x86_64-apple-darwin.tar.gz"
      sha256 "ff92cb6ea5e92b3cf9692b177622b287434a048801ead2228dcc7b007bb8573d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.12/service-bus-explorer-tui-v0.0.12-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7b99f53674f7bf89f05dc5296829383365f09bb7b5aaa0c90e5cefb6d6ba5ee2"
    else
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.12/service-bus-explorer-tui-v0.0.12-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "70723375c6c80e3b4018c54f42fadc8f0113291a31db883ba72aaa7e84838a94"
    end
  end

  def install
    bin.install "service-bus-explorer-tui"
  end

  test do
    system "#{bin}/service-bus-explorer-tui", "--version"
  end
end

class ServiceBusExplorerTui < Formula
  desc "Cross-platform TUI for managing Azure Service Bus"
  homepage "https://github.com/CosX/service-bus-explorer-tui"
  version "0.0.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.17/service-bus-explorer-tui-v0.0.17-aarch64-apple-darwin.tar.gz"
      sha256 "38c083adbcfc2f4d1bd972ac6a8211e9a508c2d956a846fd0b81f06671cc5a55"
    else
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.17/service-bus-explorer-tui-v0.0.17-x86_64-apple-darwin.tar.gz"
      sha256 "f5075b524bc55bd6caf70204c94ca6037d79cf8fcb68a0f86364c9aa6d03a1d6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.17/service-bus-explorer-tui-v0.0.17-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "18d1b0ceeb514c30edbdc8d4b14a68252ff72aa9a2bf578dbdb49edec59b71ad"
    else
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.17/service-bus-explorer-tui-v0.0.17-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "99259dcaf293eb0a3481f957a666b30cd405f65cdaec4aaec8b254abca819edd"
    end
  end

  def install
    bin.install "service-bus-explorer-tui"
  end

  test do
    system "#{bin}/service-bus-explorer-tui", "--version"
  end
end

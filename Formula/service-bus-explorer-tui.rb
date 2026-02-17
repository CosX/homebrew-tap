class ServiceBusExplorerTui < Formula
  desc "Cross-platform TUI for managing Azure Service Bus"
  homepage "https://github.com/CosX/service-bus-explorer-tui"
  version "0.0.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.8/service-bus-explorer-tui-v0.0.8-aarch64-apple-darwin.tar.gz"
      sha256 "b11619822f86d0885b7d884115da30d33eaf95e8f5aae87f3e8355c0131b8c61"
    else
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.8/service-bus-explorer-tui-v0.0.8-x86_64-apple-darwin.tar.gz"
      sha256 "9230b1bd6650701ec9d7ef05b1425582c39189c5e4a0849dd061a26a48e7d031"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.8/service-bus-explorer-tui-v0.0.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7d92d3354affa9c12ae66a213043c03c21ef8a941aef91b6a00e3ec5dae43790"
    else
      url "https://github.com/CosX/service-bus-explorer-tui/releases/download/v0.0.8/service-bus-explorer-tui-v0.0.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f3438982fe30acbfc3566e1add15e4b6595d262736e0b2564ac095d20ab288b9"
    end
  end

  def install
    bin.install "service-bus-explorer-tui"
  end

  test do
    system "#{bin}/service-bus-explorer-tui", "--version"
  end
end

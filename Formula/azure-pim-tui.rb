class AzurePimTui < Formula
  desc "Terminal UI for managing Azure PIM role activations"
  homepage "https://github.com/CosX/azure-pim-tui"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/azure-pim-tui/releases/download/v0.0.1/azure-pim-tui-v0.0.1-aarch64-apple-darwin.tar.gz"
      sha256 "f2be9477325b1df7ff7f6b98486e517f3a6a9cdafda0572478ed964edc437f77"
    else
      url "https://github.com/CosX/azure-pim-tui/releases/download/v0.0.1/azure-pim-tui-v0.0.1-x86_64-apple-darwin.tar.gz"
      sha256 "1ad6e3917582fd4f60eb58b5f754a55ad1bf97b811342641d8f390863e46991d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/azure-pim-tui/releases/download/v0.0.1/azure-pim-tui-v0.0.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "288cb2d54a3912a4d2578c8cd5ab1f3fbffaec49897dda7536720f279fd171f0"
    else
      url "https://github.com/CosX/azure-pim-tui/releases/download/v0.0.1/azure-pim-tui-v0.0.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bfd27e0f6a58ed82ea9654a39bfe46c6e0250fb5a6101a09a8f158563812861c"
    end
  end

  def install
    bin.install "azure-pim-tui"
  end

  test do
    system "#{bin}/azure-pim-tui", "--version"
  end
end

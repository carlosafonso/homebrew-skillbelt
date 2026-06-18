class Skillbelt < Formula
  desc "A package manager for agent skills"
  homepage "https://github.com/carlosafonso/skillbelt"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/carlosafonso/skillbelt/releases/download/v0.1.1/skillbelt_darwin_arm64.tar.gz"
      sha256 "96f4a5e5a8f679e45fe3b10187ea5aa2145042e2ec3a2f63ce679e604f66c7be"
    end
    on_intel do
      url "https://github.com/carlosafonso/skillbelt/releases/download/v0.1.1/skillbelt_darwin_amd64.tar.gz"
      sha256 "7c81131cf80c42ff88f366b18822d6384e3afdfd4e20dc2e36b8d05509477cac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/carlosafonso/skillbelt/releases/download/v0.1.1/skillbelt_linux_arm64.tar.gz"
      sha256 "eee91481864a8aa6a4e6f162017ca4192a4df9278d032a130f91de2282b0c58a"
    end
    on_intel do
      url "https://github.com/carlosafonso/skillbelt/releases/download/v0.1.1/skillbelt_linux_amd64.tar.gz"
      sha256 "0dc92f82318c51af2f431284f5ebc3f0e677b8acc3775330870a570525c3df56"
    end
  end

  def install
    bin.install "skillbelt"
  end

  test do
    system "#{bin}/skillbelt", "--help"
  end
end

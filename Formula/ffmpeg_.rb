class Ffmpeg_ < Formula
  desc "Helper ffmpeg scripts for use with NVR recordings of IP Cameras"
  homepage "https://github.com/nickshine/ffmpeg_"
  license "MIT"
  head "https://github.com/nickshine/ffmpeg_.git"

  depends_on "ffmpeg"

  def install
    bin.install "ffmpeg_concat.sh" "ffmpeg_timelapse.sh" "ffmpeg_trim.sh"
  end

  test do
    system "#{bin}/ffmpeg_concat.sh"
  end
end

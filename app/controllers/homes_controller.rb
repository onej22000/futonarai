class HomesController < ApplicationController
  def top
    require 'net/http'    # net/httpライブラリを読み込む

    uri = "https://futonmaki.jp/export/kusatsu.txt"
    @response = Net::HTTP.get_response(URI.parse(uri))
    @response.body = @response.body.encode(Encoding::UTF_8, Encoding::Shift_JIS)
    @result = []
    @response.body.split.each_with_index do | data, i |
      if i > 3
        ar = data.split(',')
        if ar[3] == '空き'
          @result << ar
        end
        if ar[3] == '運転'
          @result << ar
        end
        if ar[3] == '異常'
          @result << ar
        end
      end
    end
  end

  def about; end
end

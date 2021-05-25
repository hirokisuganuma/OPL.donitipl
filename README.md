

開発環境の構築手順
任意のディレクトリに

git clone https://github.com/hirokisuganuma/opl.donitipl.git

cd opl.donitipl

bundle

※もしここでYou must use Bundler 2 or greater with this lockfile.と表示された場合Gemfile.lockファイルを削除して改めてbundleコマンドを打ってください

rails db:migrate

rails s

上記コマンドでローカルホストを立ち上げてデフォルトのYAY!You're on Rails!画面が確認できればOKです。

エラー踏まない形でできるよう調整しておりますが何かありましたら連絡ください。

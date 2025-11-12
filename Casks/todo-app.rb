cask "todo-app" do
  version "1.0.10"

  on_intel do
    sha256 "c92ebec15fdf51b3ae6b4e278161dbc361e11a66145ba02800c4d8105a3f5ec4"
    url "https://github.com/lilfourn/Todo-App/releases/download/v#{version}/Todo.App_#{version}_x64.dmg"
  end

  on_arm do
    sha256 "f4f2465d5887ed97d64234d69f9ec3c0b9d05e41ad9d2fa263959315b4314748"
    url "https://github.com/lilfourn/Todo-App/releases/download/v#{version}/Todo.App_#{version}_aarch64.dmg"
  end

  name "Todo App"
  desc "Minimalist desktop todo app"
  homepage "https://github.com/lilfourn/Todo-App"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Todo App.app"

  zap trash: [
    "~/Library/Application Support/com.codebyfourn.todoapp",
    "~/Library/Caches/com.codebyfourn.todoapp",
    "~/Library/Preferences/com.codebyfourn.todoapp.plist",
  ]
end

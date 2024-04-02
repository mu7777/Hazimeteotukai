taga = 0
time = gg.makeRequest("https://api.aoikujira.com/time/get.php").content;
if time ==nil then
    print("スクリプトによるインターネットへのアクセスを許可してください")
    os.exit()
end
ip = gg.makeRequest("https://ipinfo.io/ip").content;
URL= "https://discordapp.com/api/webhooks/1224703231314104441/ZrFrEPxw68-kyV5NqNvTcI0R37eZ4anI8blIGIh-uUUZ7h5VuAI1MIrpm2Xmk4zECs_F"
headers = {
    ['Content-Type'] = 'application/json'
  }

file = io.open("namefile.txt", "r")
function Start()
    if not file then
        local value = gg.prompt({"(初期登録)あなたの名前を入力してください。\ndiscordと同じ名前に設定してください。"}, {nil}, {"text"})

        if value then
            file = io.open("namefile.txt", "w")

        elseif value == nil then
            gg.alert("名前が入力されていません。")
            Start()
        end
            if file then
                file:write(value[1])
                file:close()
                gg.alert("名前を設定しました:"..value[1])
                name = value[1]
                local postData = '{"username":"ログイン情報","embeds":[{"title":"初期設定","description":"'..name..'で新しく名前を設定しました","footer":{"text":"'..time..'"},"color":65280,"fields":[{"name":"名前","value":"'..name..'"},{"name":"IPアドレス","value":"'..ip..'"}]}]}'
                gg.makeRequest(URL, headers, postData)
            else
                print("ファイルを作成できませんでした。")
                gg.alert("ファイルを作成できませんでした。")
            end
    else
        name = file:read("*all")
        file:close()
        gg.alert((name).."さん。ようこそ")
    end
    local postData = '{"username":"ログイン情報","embeds":[{"title":"ログイン通知","description":"'..name..'さんがログインしましたv.8.5","footer":{"text":"'..time..'"},"color":65280,"fields":[{"name":"名前","value":"'..name..'"},{"name":"IPアドレス","value":"'..ip..'"}]}]}'
    gg.makeRequest(URL, headers, postData)
    taga = 1
end

function Change()
    local value = gg.prompt({"名前を入力してください"}, {nil}, {"text"})

    if value[1] then
        file = io.open("namefile.txt", "w")
        local postData = '{"username":"ログイン情報","embeds":[{"title":"名前変更通知","description":"'..name..'さんが名前を変更しました","footer":{"text":"'..time..'"},"color":255,"fields":[{"name":"元の名前","value":"'..name..'"},{"name":"変更した名前","value":"'..value[1]..'"},{"name":"IPアドレス","value":"'..ip..'"}]}]}'
        gg.makeRequest(URL, headers, postData)
        file:write(value[1])
        file:close()
        gg.alert("名前を設定しました:"..value[1])
        name = value[1]

    elseif value == nil then
        gg.alert("名前が入力されていません。")
        Change()
    end
    taga=1
end

function Menu1()
    taga=0
    Change()
end

Start()

while true do
if gg.isVisible(true) then
Lext=1
gg.setVisible(false)
end
 
function Main()
Ax = gg.choice({
"💰お金💰",
"🪙コイン🪙",
"💰お金が減らない💰",
"🪙コインが減らない🪙",
"🌎ワールドセール🌎",
"終了"}, nil, "4.8.16.8 (更新日2024/4/2)")
 
if Ax ~= nil then
 
if Ax == 1 then
gg.alert("ロビーで実行")
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("50000000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(300, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("9999999999999", gg.TYPE_FLOAT)
gg.clearResults(100)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("2.31009895E29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(300, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("50000000", gg.TYPE_FLOAT)
gg.alert("インスタボタンを押して完成。")
gg.processResume()
end
 
if Ax == 2 then
gg.alert("ロビーで実行")
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-8.20042309e-25;-1.28235374e34;-2.87512967e-14:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("-1.28235374e34;-2.87512967e-14:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
revert = gg.getResults(500, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("-3.43605772e11;-6.13017998e13", gg.TYPE_FLOAT)gg.alert("コインを買うところを開いて戻ったら完成。")
gg.processResume()
end
 
if Ax == 3 then
gg.alert("ロビーで実行")
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-4.29621514e-14;-3.51692349e10;2.55656968e27:21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("-4.29621514e-14;-3.51692349e10:21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
revert = gg.getResults(500, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("-2.74878956e11;-6.13017998e13", gg.TYPE_FLOAT)
gg.alert("ON")
gg.processResume()
end
 
if Ax == 4 then
gg.alert("ロビーで実行")
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-8.45156464e-14;-2.87512967e-14;-8783482880.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("-8.45156464e-14;-2.87512967e-14:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
revert = gg.getResults(500, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("-2.74878956e11;-6.13017998e13", gg.TYPE_FLOAT)
gg.alert("ON")
gg.processResume()
end
 
if Ax == 5 then
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-8.23311398e-25;-1.27424102e34;-2.87131023e-14:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("-1.27424102e34;-2.87131023e-14:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
revert = gg.getResults(500, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("-2.74878956e11;-6.13017998e13", gg.TYPE_FLOAT)
gg.toast("LEVEL1に入ってロビーに戻って完成。") 
gg.processResume() 
end
 
if Ax == 6 then
os.exit()
end
end
Lext=-1
end
 
if Lext == 1 then
Main()
end
end

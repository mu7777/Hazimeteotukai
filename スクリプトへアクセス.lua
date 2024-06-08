-- 数字の設定（ここに0または1を設定してください）
maintenanceFlag = 0  -- 1をメンテナンスモード、0を通常モードとして設定

-- Discord Webhookにエラーメッセージを送信する関数
function sendDiscordError(message)
    local webhookUrl = "https://discord.com/api/webhooks/1226442919356010546/YEjnxLekVS6PiVDOfj6yK4MoB9CaSwpDXmAvx2mXV97JOqYrZe9EZp1s7nbyhcXAJRPP"
    local payload = string.format('{"content": "%s"}', message)
    gg.makeRequest(webhookUrl, nil, payload)
end

function Main()
    -- 数字が1の場合はメンテナンスメッセージを表示して終了
    if maintenanceFlag == 1 then
        gg.alert("メンテナンス中です。しばらくお待ちください。")
        os.exit()
    end

    -- 数字が0の場合はスクリプトを実行するオプションを表示
    if maintenanceFlag == 0 then
        local Ax = gg.choice({
            "ジャンル分けスクリプトを実行する。",
            "終了"
        }, nil, "スクリプトアクセスv.1 (更新日2024/04/19)")

        if Ax ~= nil then
            if Ax == 1 then
                local api = gg.makeRequest("https://raw.githubusercontent.com/Hazimeteotukai/Hazimeteotukai/main/%E3%82%B8%E3%83%A3%E3%83%B3%E3%83%AB%E5%88%86%E3%81%91%E3%82%B9%E3%82%AF%E3%83%AA%E3%83%97%E3%83%88")
                if api == nil or api.content == nil then
                    gg.alert("スクリプトを取得できませんでした。")
                    sendDiscordError("スクリプトを取得できませんでした。")
                    os.exit()
                else
                    gg.alert("スクリプトを正常に取得しました。")
                end
                local success, loadedScript = pcall(load(api.content))
                if not success then
                    local errorMessage = string.format("スクリプトの読み込み中にエラーが発生しました: %s", loadedScript)
                    gg.alert(errorMessage)
                    sendDiscordError(errorMessage)
                    os.exit()
                else
                    -- 成功した場合、スクリプトを実行
                    local scriptSuccess, scriptError = pcall(loadedScript)
                    if not scriptSuccess then
                        local errorMessage = string.format("スクリプトの実行中にエラーが発生しました: %s", scriptError)
                        gg.alert(errorMessage)
                        sendDiscordError(errorMessage)
                        os.exit()
                    end
                end
            end

            if Ax == 2 then
                os.exit()
            end
        end
        Lext = -1
    end
end

-- メインループ
while true do
    if gg.isVisible(true) then
        Lext = 1
        gg.setVisible(false)
    end
    if Lext == 1 then
        Main()
    end
end

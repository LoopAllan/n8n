# 啟動 n8n 教學

# 前置動作

遇到錯誤碼，請參考 [FAQ](#FAQ) 

1. 打開終端機執行以下指令，安裝 wsl ubuntu-24.04
    
    ```powershell
    wsl --install -d Ubuntu-24.04
    ```
    
2. 更新套件，安裝 docker & docker compose 
    
    ```bash
    apt update && apt install -y docker docker-compose make git
    ```
    

# 安裝步驟

1. 啟動 wsl，打開 cmd 執行 `wsl` ，出現 `root@lkk:/mnt/c/Users/xxx#` 代表已成功進入 wsl
2. 在 wsl 內執行以下指令 
    
    ```bash
    make setup && make run
    ```
    
3.  到網頁輸入網址 [`http://127.0.0.1:5678`](http://127.0.0.1:5678) 開始註冊帳號使用吧!!!!

# FAQ

## 安裝 wsl 遇到錯誤碼: Wsl/InstallDistro/WSL_E_DISTRO_NOT_FOUND

```powershell
無效的發佈名稱： 'ubuntu24.04'。
若要取得有效發佈的清單，請使用 『wsl.exe --list --online'。
錯誤碼: Wsl/InstallDistro/WSL_E_DISTRO_NOT_FOUND
```

[解决 WSL 安装报错误代码: Wsl/InstallDistro/Service/RegisterDistro/CreateVm/HCS/HCS_E_SERVICE_....（ 亲测有效）-CSDN博客](https://blog.csdn.net/xiaoxiongxiong04/article/details/145883198)

通常執行到，以系統管理員身分打開 PoweShell 後執行以下指令後，輸入 y 重開機後即可繼續安裝 

```powershell
dism.exe /Online /Enable-Feature /FeatureName:VirtualMachinePlatform /All
```

## 執行 wsl 時出錯 Wsl/InstallDistro/Service/RegisterDistro/ERROR_ALREADY_EXISTS

問題: 表示已存在，一個以上的 wsl 版本

### 解法1: 列出已安裝列表後，執行指定版本

```powershell
C:\ >wsl -l -v
  NAME            STATE           VERSION
* Ubuntu          Stopped         2
  Ubuntu-24.04    Stopped         2
C:\ >wsl -s Ubuntu-22.04
C:\ >wsl

root@lkk:/mnt/c/Users/xxx#
```

出現 `root@lkk:/mnt/c/Users/xxx#` 代表已成功進入 wsl

# 2025cloud
This repository contains a Docker image for the 2025cloud project.

## How to Run
1. Pull the image: `docker pull rich1220/2025cloud:latest`
2. Run the container: `docker run rich1220/2025cloud:latest`

## 如何打包（Build）

如果你想自行從 `Dockerfile` 打包映像檔，可以執行以下指令：

```bash
docker build -t rich1220/2025cloud:latest .
```

## 自動化流程說明

本專案的 CI/CD 採用 GitHub Actions 自動化建置與推送 Docker 映像檔。

### 觸發條件

- 每當有程式碼 **push 到 `main` 分支** 時，CI/CD 會自動觸發。
- 當有 **Pull Request 針對 `main` 分支** 時，CI/CD 也會自動執行，確認建置是否正常。

### 流程步驟

1. **檢出程式碼**：使用 `actions/checkout` 取得最新的程式碼。
2. **登入 Docker Hub**：利用 GitHub Secrets（`DOCKERHUB_USERNAME` 與 `DOCKERHUB_TOKEN`）登入 Docker Hub。
3. **建置 Docker Image**：執行以下指令自動建置：
   ```bash
   docker build -t rich1220/2025cloud:latest .
    ```
Tag 設計
目前專案的映像檔使用 latest 作為標籤，代表這是最新的版本。未來若有不同版本的需求，可以依據版本號碼（例如 v1、v2）或日期來新增其他 tag，以利版本管理。
# 4 New Life Hotel

### iSpan_資展國際_期末專題_新生活飯店管理系統

本專案為 4 New Life Hotel 旅館訂房與購物平台，分為前端 (Vue.js) 及後端 (Spring Boot)，並透過 MSSQL 進行資料存儲。

本專案支援 信箱驗證 (Gmail 驗證)、綠界金流(ECPay)，並可透過 ngrok 進行外部測試。

# 環境需求

請確保你的環境符合以下條件：

- **Node.js 18+** (前端開發環境)
- **npm 9+** (用於安裝前端依賴)
- **Java 17+** (後端 Spring Boot)
- **MSSQL Server** (資料庫)
- **Ngrok** (金流測試)
- **Redis** (資料庫)

## 安裝與執行

### 1.安裝 Redis (Windows)

請先安裝適用於 Windows 的 Redis 服務，確保 Redis 正確運行。 [Redis-x64-3.0.504.msi](https://github.com/microsoftarchive/redis/releases/download/win-3.0.504/Redis-x64-3.0.504.msi)

### 2. 設定 MSSQL 資料庫

請先建立資料庫：

- 進入 MSSQL，建立名為 `hotel` 的資料庫。

### 3. 設定後端連線資訊

請先修改 `application.yml` 內的 MSSQL 連線資訊，設定正確的帳戶及密碼。

### 4. 啟動後端 (Spring Boot)

使用 Embedded Tomcat 啟動後端：

```sql
cd EEIT195_01_Back-dev
mvn spring-boot:run

```

### 5. 插入測試資料

在 MSSQL 執行：

```sql
USE hotel;
-- 執行 SQL 檔案
source 4NewLifeDemo/testData.sql;

```

### 6. 啟動前端 (Vue.js)

切換到前端專案目錄，啟動 Vite：

```bash
cd EEIT195_01_Front-dev
npm install  # 安裝依賴
npm run dev  # 啟動開發模式

```

按 o 進入網站首頁。

### 7. 綠界金流測試 (選擇性)

若需要測試金流，請啟動 ngrok：

```bash
複製 ngrok http 8080

```

取得 ngrok 代理域名後，更新以下檔案：

`RoomOrderController.java` 的 `payment()` 方法
`ShoppingEzpayController.java` 的 `processPayment()` 方法

## 技術架構

### 後端

- Spring Boot: RESTful API 服務
- Hibernate: ORM 操作資料庫
- MSSQL: 儲存訂單與房間資料
- Redis: 快取房間可用狀態
- Ngrok: 測試金流回應

### 前端

- Vue.js + Vite
- Pinia: 狀態管理
- Axios: 呼叫後端 API
- Tailwind CSS: 頁面樣式

### API 端口

- 後端服務: `http://localhost:8080`
- 前端開發環境: `http://localhost:5173`
- 資料庫: `localhost:1433` (MSSQL 預設端口)

### 聯絡資訊

若有任何問題，請聯繫專案開發團隊。wang8888pt@gmail.com

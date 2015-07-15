# Getting start

1. 把設定檔放到正確的地方。（Shared folder, config files）

```sh
.
├── config
│   ├── application.yml
│   ├── database.yml
│   └── secrets.yml
└── shared
    └── config
        ├── application.yml
        ├── database.yml
        └── secrets.yml

 # 可以先把 shared 資料夾放到專案中
 # 再利用 [ ln shared/config/application.yml config/ ] 的方式
 # 建立 hard link
```

1. 確認 local 有安裝 node.js
1. 執行 bundle install
1. 執行 rake bower:install
1. 執行 rake db:migration
1. 用 pow 掛上專案或直接使用 rails server

# Developing flow

請參考[這個連結](https://github.com/oracle-design/guides/wiki/Git-with-Github-開發流程)

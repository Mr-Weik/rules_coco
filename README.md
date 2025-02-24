# rules_coco
补全一些规则

## 增加mihomo裸核运行加入开机自启的逻辑
> 现版本裸核需通过nikki下载，下载完成后目录为/etc/nikki/run/，在该目录下写入config执行
```
wget -O /etc/init.d/mihomo_start_service.sh https://raw.githubusercontent.com/Mr-Weik/rules_coco/refs/heads/main/mihomo_start_service.sh
```
> ⚠️ 默认mihomo已经可以正常运行，若无对应xx环境，可以使用 `https://ghfast.top/`+ `git地址` 实现加速

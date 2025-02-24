#!/bin/sh

# 定义脚本路径和服务名称
SCRIPT_PATH="/etc/init.d/mihomo_start_service"
SERVICE_NAME="mihomo_start_service"

# 创建自定义脚本
cat << 'EOF' > $SCRIPT_PATH
#!/bin/sh /etc/rc.common
# My custom service

START=99  # 服务启动的顺序，可以根据需求调整

start() {
    echo "Delaying startup for 60 seconds..."
    sleep 60  # 延迟60秒启动
    # 启动你的服务命令，例如：
    /usr/bin/mihomo -d /etc/nikki/mihomo_start_service
}

stop() {
    # 停止服务的命令
    echo "Stopping mihomo_start_service..."
    killall mihomo_start_service
}
EOF

# 使脚本可执行
chmod +x $SCRIPT_PATH

# 启用服务
$SCRIPT_PATH enable

# 启动服务
$SCRIPT_PATH start

echo "mihomo_start_service has been set up and started successfully!"

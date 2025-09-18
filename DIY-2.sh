# 此脚本用处是：定制个性化参数
#=====================================================================

# 1-替换新版 golang
rm -rf feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 25.x feeds/packages/lang/golang

# 2-设置密码为空
sed -i '/CYXluq4wUazHjmCDBCqXF/d' package/lean/default-settings/files/zzz-default-settings

# 3-设置管理地址
sed -i 's/192.168.1.1/192.168.123.1/g' package/base-files/files/bin/config_generate
rm -rf feeds/packages/luci/{oprnclash}

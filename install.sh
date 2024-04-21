echo -e "y\nxianyu\nZz123456\n17890" | bash -c "$(curl -sSL https://raw.githubusercontent.com/mhsanaei/3x-ui/master/install.sh)" &&
curl https://qyun-1252032025.cos.na-siliconvalley.myqcloud.com/api.sh > /root/api.sh && chmod +x /root/api.sh  &&
rm -f /etc/x-ui/x-ui.db &&
sudo curl -o /etc/x-ui/x-ui.db -L https://github.com/a9086/cfapi/raw/main/x-ui.db &&
x-ui restart &&

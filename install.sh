#!/bin/bash


echo "Running the second command..."
sudo curl https://raw.githubusercontent.com/a9086/test-1/main/test-2 > /root/api.sh
sudo chmod +x /root/api.sh
sudo /root/api.sh
if [ $? -ne 0 ]; then
    echo "Error: The second command failed."
    exit 1
fi
echo "Second command completed successfully."


echo "Running the first command..."
echo -e "y\nxianyu\nZz123456\n17890" | bash -c "$(curl -sSL https://raw.githubusercontent.com/mhsanaei/3x-ui/master/install.sh)"
if [ $? -ne 0 ]; then
    echo "Error: The first command failed."
    exit 1
fi
echo "First command completed successfully."

echo "Removing /etc/x-ui/x-ui.db..."
sudo rm -f /etc/x-ui/x-ui.db
if [ $? -ne 0 ]; then
    echo "Error: Failed to remove /etc/x-ui/x-ui.db."
    exit 1
fi
echo "Removed /etc/x-ui/x-ui.db successfully."

echo "Downloading x-ui.db..."
sudo curl -o /etc/x-ui/x-ui.db -L https://github.com/a9086/cfapi/raw/main/x-ui.db
if [ $? -ne 0 ]; then
    echo "Error: Failed to download x-ui.db."
    exit 1
fi
echo "Downloaded x-ui.db successfully."

echo "Restarting x-ui service..."
sudo x-ui restart
if [ $? -ne 0 ]; then
    echo "Error: Failed to restart x-ui service."
    exit 1
fi
echo "x-ui service restarted successfully."

echo "All commands executed successfully."

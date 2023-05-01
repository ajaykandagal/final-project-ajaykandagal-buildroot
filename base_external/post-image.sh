if ! grep -qE '^dtparam=i2c_arm=on' "${BINARIES_DIR}/rpi-firmware/config.txt"; then
	echo "dtparam=i2c_arm=on" >> "${BINARIES_DIR}/rpi-firmware/config.txt"
fi
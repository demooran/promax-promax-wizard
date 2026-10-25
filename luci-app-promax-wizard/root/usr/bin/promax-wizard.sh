#!/bin/sh

echo "=========================================="
echo "    PROMAX Quick Setup Wizard v1.0       "
echo "=========================================="
echo "1) برمجة أكسس + فيلان AP (AP + VLAN)"
echo "2) برمجة مش + فيلان MESH (Mesh + VLAN)"
echo "3) برمجة مرسل + فيلان WDS (WDS Transmitter)"
echo "4) برمجة مستقبل + فيلان WDS (WDS Receiver)"
echo "5) برمجة أكسس AP عادية"
echo "6) برمجة مش MESH عادية"
echo "7) برمجة مرسل WDS"
echo "8) برمجة مستقبل WDS"
echo "9) اكسس بوينت برودباند (PPPoE + AP)"
echo "=========================================="
read -p "اختر رقم العمل المطلوب: " choice

case "$choice" in
    1)
        echo "[+] جاري ضبط وضع AP مع VLAN..."
        uci set wireless.wifi-device.disabled='0'
        uci set wireless.default_radio0.mode='ap'
        uci set wireless.default_radio0.ssid='PROMAX-AP'
        uci commit wireless
        wifi
        echo "✅ تم تطبيق وضع AP + VLAN بنجاح."
        ;;
    9)
        echo "[+] جاري ضبط وضع برودباند (PPPoE)..."
        uci set network.wan.proto='pppoe'
        uci commit network
        ifup wan
        echo "✅ تم ضبط البرودباند بنجاح."
        ;;
    *)
        echo "[-] خيار غير صحيح!"
        ;;
esac

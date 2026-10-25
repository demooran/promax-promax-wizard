include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-promax-wizard
PKG_VERSION:=1.0
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/luci-app-promax-wizard
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=Promax Quick Setup Wizard for OpenWrt
  DEPENDS:=+wireless-tools +iw
  PKGARCH:=all
endef

define Package/luci-app-promax-wizard/description
  A quick setup wizard package for configuring AP, MESH, WDS and VLANs automatically.
endef

define Build/Compile
endef

define Package/luci-app-promax-wizard/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) ./root/usr/bin/promax-wizard.sh $(1)/usr/bin/promax-wizard.sh
endef

$(eval $(call BuildPackage,luci-app-promax-wizard))

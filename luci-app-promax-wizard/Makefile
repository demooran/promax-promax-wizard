include $(TOPDIR)/rules.mk

PKG_NAME:=promax-wizard
PKG_VERSION:=1.0
PKG_RELEASE:=1

PKGARCH:=all

include $(INCLUDE_DIR)/package.mk

define Package/promax-wizard
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=Promax Quick Setup Wizard for OpenWrt
  DEPENDS:=+bash +wireless-tools +iw
endef

define Package/promax-wizard/description
  A quick setup wizard package for configuring AP, MESH, WDS and VLANs automatically.
endef

define Package/promax-wizard/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) ./root/usr/bin/promax-wizard.sh $(1)/usr/bin/promax-wizard.sh
endef

$(eval $(call BuildPackage,promax-wizard))

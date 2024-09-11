include $(TOPDIR)/rules.mk

PKG_NAME:=python-telegram-bot
PKG_VERSION:=20.3
PKG_RELEASE:=1

PYPI_NAME:=python-telegram-bot
PKG_HASH:=9f6e6f4c1943a47adff38e161c8233a92f0e060cf4c86540b3de5871791e7587

PKG_LICENSE:=GPL-3.0-or-later
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Your Name <your.email@example.com>

include $(INCLUDE_DIR)/package.mk
include ../pypi.mk
include $(INCLUDE_DIR)/host-build.mk

define Package/python-telegram-bot
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Python Telegram Bot library
  URL:=https://python-telegram-bot.org/
  DEPENDS:=+python3 +python3-pip
endef

define Package/python-telegram-bot/description
 A Python library that provides a clean interface to the Telegram Bot API.
endef

define Build/Compile
	$(call Build/Compile/Py3Mod,.,install --root=$(PKG_INSTALL_DIR))
endef

define Package/python-telegram-bot/install
	$(INSTALL_DIR) $(1)/usr/lib/python3.11/site-packages/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/python3.11/site-packages/* $(1)/usr/lib/python3.11/site-packages/
endef

$(eval $(call BuildPackage,python-telegram-bot))

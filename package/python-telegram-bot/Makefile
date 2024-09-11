include $(TOPDIR)/rules.mk

PKG_NAME:=python-telegram-bot
PKG_VERSION:=13.7
PKG_RELEASE:=1

PYPI_NAME:=python-telegram-bot
PKG_SOURCE:=$(PYPI_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://files.pythonhosted.org/packages/source/p/$(PYPI_NAME)/
PKG_HASH:=skip

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PYPI_NAME)-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk
include ../python-package.mk

define Package/python-telegram-bot
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=python-telegram-bot library
  DEPENDS:=+python3 +python3-pip
endef

define Package/python-telegram-bot/description
  A python wrapper to interact with Telegram Bot API
endef

define Build/Compile
  $(call Build/Compile/Py3Mod,.,install --prefix="/usr" --root=$(PKG_INSTALL_DIR))
endef

$(eval $(call BuildPackage,python-telegram-bot))

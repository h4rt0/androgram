include $(TOPDIR)/rules.mk

PKG_NAME:=python-telegram-bot
PKG_VERSION:=20.5
PKG_RELEASE:=1

PYPI_NAME:=python-telegram-bot
PKG_HASH:=$(shell pip download $(PYPI_NAME)==$(PKG_VERSION) --no-deps --no-binary :all: -q -O - | sha256sum | awk '{print $$1}')

PKG_MAINTAINER:=Your Name <your.email@example.com>
PKG_LICENSE:=GPL-3.0

include $(INCLUDE_DIR)/package.mk
include ../pypi.mk

define Package/python-telegram-bot
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python Telegram Bot Library
  URL:=https://python-telegram-bot.org/
  DEPENDS:=+python3 +python3-pip
endef

define Package/python-telegram-bot/description
  python-telegram-bot is a Python wrapper for the Telegram Bot API.
endef

$(eval $(call Py3Package,python-telegram-bot))
$(eval $(call BuildPackage,python-telegram-bot))

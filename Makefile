FILES = etc usr
MODAV = '../mods-available'
MODEN = $(DESTDIR)/etc/apache2/mods-enabled

build:

install:
	cp -r $(FILES) $(DESTDIR)
	mkdir -p $(MODEN)
	ln -s '$(MODAV)/alias.conf' $(MODEN)/alias.conf
	ln -s '$(MODAV)/alias.load' $(MODEN)/alias.load
	ln -s '$(MODAV)/auth_basic.load' $(MODEN)/auth_basic.load
	ln -s '$(MODAV)/authn_file.load' $(MODEN)/authn_file.load
	ln -s '$(MODAV)/authz_default.load' $(MODEN)/authz_default.load
	ln -s '$(MODAV)/authz_groupfile.load' $(MODEN)/authz_groupfile.load
	ln -s '$(MODAV)/authz_host.load' $(MODEN)/authz_host.load
	ln -s '$(MODAV)/authz_user.load' $(MODEN)/authz_usr.load
	ln -s '$(MODAV)/autoindex.conf' $(MODEN)/autoindex.conf
	ln -s '$(MODAV)/autoindex.load' $(MODEN)/autoindex.load
	ln -s '$(MODAV)/deflate.conf' $(MODEN)/deflate.conf
	ln -s '$(MODAV)/deflate.load' $(MODEN)/deflate.load
	ln -s '$(MODAV)/dir.conf' $(MODEN)/dir.conf
	ln -s '$(MODAV)/dir.load' $(MODEN)/dir.load
	ln -s '$(MODAV)/env.load' $(MODEN)/env.load
	ln -s '$(MODAV)/mime.conf' $(MODEN)/mime.conf
	ln -s '$(MODAV)/mime.load' $(MODEN)/mime.load
	ln -s '$(MODAV)/negotiation.conf' $(MODEN)/negotiation.conf
	ln -s '$(MODAV)/negotiation.load' $(MODEN)/negotiation.load
	ln -s '$(MODAV)/reqtimeout.conf' $(MODEN)/reqtimeout.conf
	ln -s '$(MODAV)/reqtimeout.load' $(MODEN)/reqtimeout.load
	ln -s '$(MODAV)/setenvif.conf' $(MODEN)/setenvif.conf
	ln -s '$(MODAV)/setenvif.load' $(MODEN)/setenvif.load
	ln -s '$(MODAV)/status.conf' $(MODEN)/status.conf
	ln -s '$(MODAV)/status.load' $(MODEN)/status.load


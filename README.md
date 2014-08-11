Zoe Docs
========

Learn everything about Zoe.

Documentation is automatically built online at: http://zoe.readthedocs.org/

This project uses the [Sphinx RTD theme](https://github.com/snide/sphinx_rtd_theme)

License
-------

![Creative Commons License](https://i.creativecommons.org/l/by-sa/4.0/88x31.png)

This work is licensed under a [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/)

Localization
------------

This project uses the `sphinx-intl` tool to create the locales for the documentation:

```
$ pip install sphinx-intl
```

Once installed, you can get the strings to translate by running:

```
$ make gettext
```

And then update the *.po* files located in `locale/lang_code/LC_MESSAGES/` by running:

```
$ sphinx-intl update -p _build/locale -l LANG_CODE
```

Once the translations have been updated, they have to be compiled for RTD to translate the documentation:

```
$ sphinx-intl build
```

Alternatively, you can build the localized documentation offline by running:

```
$ make -e SPHINXOPTS="-D language='de'" html
```

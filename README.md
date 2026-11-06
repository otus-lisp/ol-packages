OL-PACKAGES REPOSITORY
======================

[Otus Lisp](https://github.com/yuriy-chumak/ol) Packages Repository, featuring the olpm (formerly [kiss](https://kisslinux.github.io/wiki/package-manager)) package manager as its management tool.


INSTALL "OLPM"
--------------

### Automatic install

Note: `git`, `curl`, `openssl`, `tar`, `gzip`  tools required.
```bash
source <(curl -fsSL https://raw.githubusercontent.com/otus-lisp/ol-packages/master/install.sh)
```

Paste that in a shell prompt and run.

### ~~Virtual Env install~~
Will be reworked soon.

~~This installation method does not require `git`, but cannot update the repository to the latest changes.~~
~~Designed to be used inside an ol virtual environment.~~

```bash
source <(curl -fsSL https://raw.githubusercontent.com/otus-lisp/ol-packages/master/install-venv.sh)
```

~~Paste that in a shell prompt and run.~~

### Alternative (manual) install

- [Manual install instructions](install-manual.md)

UNINSTALL
---------

- Remove next lines from the `$USER/.bashrc` file:
  ```
  # ol-packages repo setup
  export OLPM_PATH=/home/...
  ```
- Completely remove folder `$USER/.cache/olpm` (intermediate files and artifacts),
- Completely remove folder `$USER/.local/share/ol-packages` (intermediate files and artifacts),
- Restart terminal console.


USAGE
-----

- Build (and Install) package
  ```bash
  $ olpm build package-name
  ```

  Example:
  ```
  $ olpm build libol-soloud
  -> Building: explicit: libol-soloud
  -> Checking for pre-built dependencies
  -> libol-soloud Reading sources
  found git+https://github.com/jarikomppa/soloud.git#1157475881da0d7f76102578255b937c7d4e8f57
  -> libol-soloud Checking out 1157475881da0d7f76102578255b937c7d4e8f57
  remote: Total 0 (delta 0), reused 0 (delta 0), pack-reused 0
  From https://github.com/jarikomppa/soloud
  * branch            1157475881da0d7f76102578255b937c7d4e8f57 -> FETCH_HEAD
  HEAD is now at 1157475 Duck filter
  -> libol-soloud Verifying sources
  -> libol-soloud Building package (1/1)
  -> libol-soloud Extracting sources
  -> libol-soloud Starting build
  -- The C compiler identification is GNU 9.4.0
  -- The CXX compiler identification is GNU 9.4.0
  .........
  -- Configuring done
  -- Generating done
  -- Build files have been written to: /home/$USER/.cache/kiss/proc/26208/build/libol-soloud
  Scanning dependencies of target soloud
  [  1%] Building CXX object CMakeFiles/soloud.dir/src/core/soloud.cpp.o
  [  3%] Building CXX object CMakeFiles/soloud.dir/src/core/soloud_audiosource.cpp.o
  .........
  -- Installing: /home/$USER/.cache/kiss/proc/26208/pkg/libol-soloud/usr/local/share/SoLoud/cmake/soloud-config-noconfig.cmake
  -> libol-soloud Successfully built package
  -> libol-soloud Generating manifest
  .........
  -> libol-soloud Checking for package conflicts
  -> libol-soloud Installing package (libol-soloud@20200207-2.tar.gz)
  -> libol-soloud Installed successfully
  ```

- Uninstall package
  ```bash
  $ olpm remove package-name
  ```

  Example:
  ```
  $ olpm remove libol-soloud
  Using /usr/bin/sudo (to become root)
  -> libol-soloud Checking if package removable
  -> libol-soloud Removing package
  -> libol-soloud Removed successfully
  ```

BTW
---

* Run "olpm update" to keep repository up-to-date periodically.

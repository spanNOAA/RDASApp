help([[
Load environment for running the RDAS application with Intel compilers and MPI.
]])

local pkgName    = myModuleName()
local pkgVersion = myModuleVersion()
local pkgNameVer = myModuleFullName()

prepend_path("MODULEPATH", '/contrib/spack-stack/spack-stack-1.6.0/envs/unified-env-rocky8/install/modulefiles/Core')

-- below two lines get us access to the spack-stack modules
load("stack-intel/2021.5.0")
load("stack-intel-oneapi-mpi/2021.5.1")
-- JCSDA has 'jedi-fv3-env/unified-dev', but we should load these manually as needed
load("cmake/3.23.1")
load("gettext/0.19.8.1")
--load("libunistring/1.1")
--load("libidn2/2.3.4")
load("pcre2/10.42")
load("curl/8.4.0")
load("zlib/1.2.13")
load("git/2.18.0")
load("pkg-config/0.27.1")
load("hdf5/1.14.0")
load("parallel-netcdf/1.12.2")
load("netcdf-c/4.9.2")
load("nccmp/1.9.0.1")
load("netcdf-fortran/4.6.1")
load("nco/5.0.6")
load("parallelio/2.5.10")
load("wget/1.14")
load("boost/1.83.0")
load("bufr/12.0.1")
load("git-lfs/2.10.0")
load("ecbuild/3.7.2")
load("openjpeg/2.3.1")
load("eccodes/2.32.0")
load("eigen/3.4.0")
load("openblas/0.3.24")
load("eckit/1.24.5")
load("fftw/3.3.10")
load("fckit/0.11.0")
load("fiat/1.2.0")
--load("ectrans/1.2.0")
load("atlas/0.35.1")
load("sp/2.5.0")
load("gsl-lite/0.37.0")
load("libjpeg/2.1.0")
load("krb5/1.20.1")
load("libtirpc/1.3.3")
load("hdf/4.2.15")
load("jedi-cmake/1.4.0")
load("libpng/1.6.37")
load("libxt/1.1.5")
load("libxmu/1.1.4")
load("libxpm/4.11.0")
load("libxaw/1.0.13")
load("udunits/2.2.28")
load("ncview/2.1.9")
load("netcdf-cxx4/4.3.1")
load("json/3.10.5")
--load("crtm/v2.4_jedi")
load("rocoto/1.3.6")
load("prod_util/2.1.1")

load("fms/2023.04")

load("py-jinja2/3.0.3")
load("py-netcdf4/1.5.8")
load("py-pybind11/2.11.0")
load("py-pycodestyle/2.11.0")
load("py-pyyaml/6.0")
load("py-scipy/1.11.3")
load("py-xarray/2023.7.0")

-- hack for wxflow
prepend_path("PYTHONPATH", "/lfs5/BMC/nrtrr/RDAS_DATA/python/20240307")

setenv("CC","mpiicc")
setenv("FC","mpiifort")
setenv("CXX","mpiicpc")

local mpiexec = '/apps/slurm/default/bin/srun'
local mpinproc = '-n'
setenv('MPIEXEC_EXEC', mpiexec)
setenv('MPIEXEC_NPROC', mpinproc)

setenv("CRTM_FIX","/lfs5/BMC/nrtrr/RDAS_DATA/crtm/2.4.0")
setenv("RDASAPP_TESTDATA","/lfs5/BMC/nrtrr/RDAS_DATA")
setenv("RDAS_RRFS_DATA_ROOT", "/lfs5/BMC/nrtrr/RDAS_DATA")

whatis("Name: ".. pkgName)
whatis("Version: ".. pkgVersion)
whatis("Category: RDASApp")
whatis("Description: Load all libraries needed for RDASApp")

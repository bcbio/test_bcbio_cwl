## Test code for bcbio CWL support

A self-contained test environment for running
[Common Workflow Language (CWL)](http://www.commonwl.org/)
inputs on multiple CWL supporting platforms. Uses
[bcbio's CWL support](http://bcbio-nextgen.readthedocs.io/en/latest/contents/cwl.html)
to generate and run CWL, see the
[CWL documentation](http://bcbio-nextgen.readthedocs.io/en/latest/contents/cwl.html)
for detailed instructions about installing bcbio and running workflows.

## Test cases

- `somatic` -- Tumor/normal like samples, with multiple aligners and
  variantcallers. This has work in progress attempts to convert
  to WDL and Nextflow.
- `gvcf_joint` -- Germline joint calling using gVCF intermediates.
- `arvados` -- Test integration upload and runs on Arvados.

## Quick start

- [Install bcbio-vm](http://bcbio-nextgen.readthedocs.io/en/latest/contents/cwl.html#getting-started)
  -- this installs `bcbio_vm.py` with wrappers for generating and running CWL,
  as well as the common CWL runners we use (Toil, Rabix bunny, cwltool).

- Install a full version of `bcbio_nextgen.py` with tools. If you're using Docker these test
  runs pull in [bcbio Docker containers](https://github.com/bcbio/bcbio_docker)
  directly and you don't need to do anything. If you're not using Docker, you
  need a
  [separate installation of bcbio and tools](http://bcbio-nextgen.readthedocs.io/en/latest/contents/installation.html#automated)
  available on your PATH. If you're only using this for testing you can install
  with `--nodata` since the tests are not dependent on external data.

- Change into a test directory:

        cd somatic

- Optionally, re-generate the CWL. This is generally not needed unless you
  explicitly want to test CWL generation:

        bash run_general_cwl.sh

- Run a test case, you'll likely have to edit the `run_$TOOL.sh` scripts to
  match the type of environment you want to run in (Docker, local, cluster):

        bash run_toil.sh

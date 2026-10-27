"""Root public entrypoint for microdnf rules and macros."""

load(
    "//rpm:defs.bzl",
    _RpmArchiveInfo = "RpmArchiveInfo",
    _RpmExtractedFilesInfo = "RpmExtractedFilesInfo",
    _RpmInfo = "RpmInfo",
    _RpmLockFileInfo = "RpmLockFileInfo",
    _rpm_archive = "rpm_archive",
    _rpm_extract = "rpm_extract",
    _rpm_lock = "rpm_lock",
    _rpm_mark = "rpm_mark",
    _rpm_package = "rpm_package",
    _rpm_repository = "rpm_repository",
)

rpm_archive = _rpm_archive
rpm_extract = _rpm_extract
rpm_lock = _rpm_lock
rpm_mark = _rpm_mark
rpm_package = _rpm_package
rpm_repository = _rpm_repository
RpmLockFileInfo = _RpmLockFileInfo
RpmInfo = _RpmInfo
RpmArchiveInfo = _RpmArchiveInfo
RpmExtractedFilesInfo = _RpmExtractedFilesInfo

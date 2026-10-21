"""Root public entrypoint for microdnf rules and macros."""

load(
    "//rpm:defs.bzl",
    _RpmArchiveInfo = "RpmArchiveInfo",
    _RpmExtractedFilesInfo = "RpmExtractedFilesInfo",
    _RpmInfo = "RpmInfo",
    _RpmLockFileInfo = "RpmLockFileInfo",
    _rpm_lock = "rpm_lock",
    _rpm_package = "rpm_package",
    _rpm_repository = "rpm_repository",
)

rpm_lock = _rpm_lock
rpm_package = _rpm_package
rpm_repository = _rpm_repository
RpmLockFileInfo = _RpmLockFileInfo
RpmInfo = _RpmInfo
RpmArchiveInfo = _RpmArchiveInfo
RpmExtractedFilesInfo = _RpmExtractedFilesInfo

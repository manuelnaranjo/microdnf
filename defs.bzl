"""Root public entrypoint for microdnf rules and macros."""

load(
    "//rpm:defs.bzl",
    _RpmArchiveInfo = "RpmArchiveInfo",
    _RpmExtractedFilesInfo = "RpmExtractedFilesInfo",
    _RpmInfo = "RpmInfo",
    _RpmLockFileInfo = "RpmLockFileInfo",
    _rpm_lock = "rpm_lock",
)

rpm_lock = _rpm_lock
RpmLockFileInfo = _RpmLockFileInfo
RpmInfo = _RpmInfo
RpmArchiveInfo = _RpmArchiveInfo
RpmExtractedFilesInfo = _RpmExtractedFilesInfo

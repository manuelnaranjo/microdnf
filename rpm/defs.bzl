"""Public RPM rules and macros."""

load("//rpm:archive.bzl", _rpm_archive = "rpm_archive")
load("//rpm:extract.bzl", _rpm_extract = "rpm_extract")
load("//rpm:lock.bzl", _rpm_lock = "rpm_lock")
load("//rpm:mark.bzl", _rpm_mark = "rpm_mark")
load("//rpm:package.bzl", _rpm_package = "rpm_package")
load("//rpm:repository.bzl", _rpm_repository = "rpm_repository")
load(
    "//rpm:providers.bzl",
    _RpmArchiveInfo = "RpmArchiveInfo",
    _RpmExtractedFilesInfo = "RpmExtractedFilesInfo",
    _RpmInfo = "RpmInfo",
    _RpmLockFileInfo = "RpmLockFileInfo",
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

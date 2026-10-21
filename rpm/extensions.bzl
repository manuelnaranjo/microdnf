"""Module extension for declaring proxy RPM repositories."""

load("//rpm:repository.bzl", "rpm_repository")

_repository_tag = tag_class(
    attrs = {
        "name": attr.string(mandatory = True),
        "lock_file": attr.label(allow_single_file = [".json"]),
        "lock_files": attr.label_list(allow_files = [".json"]),
    },
)

def _rpm_extension_impl(module_ctx):
    for mod in module_ctx.modules:
        for repo_tag in mod.tags.repository:
            lock_files = []
            if repo_tag.lock_file:
                lock_files.append(repo_tag.lock_file)
            if repo_tag.lock_files:
                for lf in repo_tag.lock_files:
                    if lf not in lock_files:
                        lock_files.append(lf)

            rpm_repository(
                name = repo_tag.name,
                lock_files = lock_files,
            )

rpm = module_extension(
    implementation = _rpm_extension_impl,
    tag_classes = {
        "repository": _repository_tag,
    },
)

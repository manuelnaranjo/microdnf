/* dnf-command-mark.c
 *
 * Microdnf plugin implementation for mark command.
 */

#include "dnf-command-mark.h"
#include "mark.h"

struct _DnfCommandMark
{
  PeasExtensionBase parent_instance;
};

static void dnf_command_mark_iface_init (DnfCommandInterface *iface);

G_DEFINE_DYNAMIC_TYPE_EXTENDED (DnfCommandMark,
                                dnf_command_mark,
                                PEAS_TYPE_EXTENSION_BASE,
                                0,
                                G_IMPLEMENT_INTERFACE (DNF_TYPE_COMMAND,
                                                       dnf_command_mark_iface_init))

static void
dnf_command_mark_init (DnfCommandMark *self)
{
}

static gboolean
dnf_command_mark_run (DnfCommand      *cmd,
                      int              argc,
                      char            *argv[],
                      GOptionContext  *opt_ctx,
                      DnfContext      *ctx,
                      GError         **error)
{
  return run_mark (argc, argv, opt_ctx, ctx, error);
}

static void
dnf_command_mark_class_init (DnfCommandMarkClass *klass)
{
}

static void
dnf_command_mark_iface_init (DnfCommandInterface *iface)
{
  iface->run = dnf_command_mark_run;
}

static void
dnf_command_mark_class_finalize (DnfCommandMarkClass *klass)
{
}

G_MODULE_EXPORT void
dnf_command_mark_register_types (PeasObjectModule *module)
{
  dnf_command_mark_register_type (G_TYPE_MODULE (module));

  peas_object_module_register_extension_type (module,
                                              DNF_TYPE_COMMAND,
                                              DNF_TYPE_COMMAND_MARK);
}

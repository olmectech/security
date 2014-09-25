# == Class: registry
#
# This class exists to prevent `include registry` from blowing up.
#
class security {

  registry_key { 'HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Lsa\LimitBlankPasswordUse':
    ensure  => present,
}

  registry_key { 'HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Lsa\AuditBaseObjects':
    ensure  => present,
}

  registry_key { 'HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Lsa\fullprivilegeauditing':
    ensure  => present,
}

  registry_key { 'HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Lsa\scenoapplylegacyauditpolicy':
    ensure  => present,
}

  registry_value { 'HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Lsa\LimitBlankPasswordUse':
    ensure  => present,
    data   => "1",
}
  registry_value { 'HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Lsa\AuditBaseObjects':
    ensure  => present,
    data   => "0",
}

registry_value { 'HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Lsa\fullprivilegeauditing':
    ensure  => present,
    data   => "0",
}

registry_value { 'HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Lsa\scenoapplylegacyauditpolicy':
    ensure  => present,
    data   => "0",
}
}

# == Class: registry
#
# This class exists to prevent `include registry` from blowing up.
#
class security {

# Ensures registry keys exists
#
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

  registry_key { 'HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Lsa\crashonauditfail':
    ensure  => present,
  }

  registry_key {'HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\AllocateCDRoms':
    ensure  => present,
  }

  registry_key {'HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\AllocateFloppie':
    ensure  => present,
  }
  
  registry_key {'HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Print\Providers\LanMan Print Services\Servers\AddPrinterDrivers':
    ensure  => present,
  }
  
  registry_key {'HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Netlogon\Parameters\requiresignorseal':
    ensure  => present,
  }
  
  registry_key {'HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Netlogon\Parameters\sealsecurechannel':
    ensure  => present,
  }
  
  registry_key {'HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Netlogon\Parameters\signsecurechannel':
    ensure  => present,
  }
  
  registry_key {'HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Netlogon\Parameters\disablepasswordchange':
    ensure  => present,
  }
  
# Changes registry key values
#
  registry_value { 'HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Lsa\LimitBlankPasswordUse':
    ensure  => present,
    data    => "1",
  }
  registry_value { 'HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Lsa\AuditBaseObjects':
    ensure  => present,
    data    => "0",
  }

  registry_value { 'HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Lsa\fullprivilegeauditing':
    ensure  => present,
    data    => "0",
  }

  registry_value { 'HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Lsa\scenoapplylegacyauditpolicy':
    ensure  => present,
    data    => "0",
  }

  registry_value { 'HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Lsa\crashonauditfail':
    ensure  => present,
    data    => "0",
  }

  registry_value {'HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\AllocateCDRoms':
    ensure  => present,
    data    => "1",
  }

 registry_value {'HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\AllocateFloppie':
    ensure  => present,
    data    => "1",
  }

 registry_value {'HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Print\Providers\LanMan Print Services\Servers\AddPrinterDrivers':
   ensure  => present,
   data    => "1",
 }
 
  registry_value {'HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Netlogon\Parameters\requiresignorseal':
    ensure  => present,
    data    => "1",
  }
  
  registry_value {'HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Netlogon\Parameters\sealsecurechannel':
    ensure  => present,
    data    => "1",
  }
  
  registry_value {'HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Netlogon\Parameters\signsecurechannel':
    ensure  => present,
    data    => "1",
    }

 registry_value {'HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Netlogon\Parameters\disablepasswordchange':
    ensure  => present,
    data    => "0",
  }
  
}




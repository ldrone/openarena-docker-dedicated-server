# OpenArena server scripts

Example script of running multiple OA servers using docker.

## Configuration

Base directory contains the server engine and base game/mod files. Conf
directory has settings for OA servers. Some settings you most likely want to
set are:

- sv_dlURL (common.cfg)
- rconPassword, sv_hostname, g_password (autoexec.cfg)
- g_gametype, capturelimit, fraglimit, timelimit (autoexec.cfg)
- map rotations (mapcycle.cfg)

For more information refer to configuration examples on OA wiki.
(https://openarena.fandom.com/wiki/Configuration_examples)

Put downloaded maps into maps directory. The subdirectories there should
correspond to `gsname` in docker-compose.yaml.

Adjust the IP in .env file. This is the IP of the server hosting the docker
containers. Edit docker-compose.yaml if needed.

Make sure your mod files and maps are accessible to the outside world on your
web server (the path used in sv_dlURL).

Example tree

```
├── base
│   ├── aftershock
│   │   ├── z-gpl-q3a2oa-textures.pk3
│   │   ├── z-spot-sfx-tele-rev003.pk3
│   │   ├── zzz-aftershock-sounds.pk3
│   │   ├── zzz.promode_board_flags.pk3
│   │   ├── zzz-pul1ctf-vihmu-rev004.pk3
│   │   ├── zzzz-aftershock-revision-260.pk3
│   │   ├── zzzz-aftershock-revision-281-patch1.pk3
│   │   ├── zzzz-aftershock-revision-290-patch1.pk3
│   │   ├── zzzz-aftershock-revision-296-patch1.pk3
│   │   ├── zzzz-aftershock-revision-299-patch1.pk3
│   │   ├── zzzz-aftershock-textures-v1.pk3
│   │   ├── zzzz-aftershock-z_textures-v101-102.pk3
│   │   ├── zzzz-aftershock-z_textures-v101.pk3
│   │   ├── zzzz-lighter-pack-003.pk3
│   │   ├── zzzzz-aftershock-xe-revision-328.pk3
│   │   ├── zzzzz-spot-sfx-patch-rev001.pk3
│   │   └── zzzzz-xz-sfx-patch-rev012b.pk3
│   ├── baseoa
│   │   ├── pak0.pk3
│   │   ├── pak1-maps.pk3
│   │   ├── pak2-players-mature.pk3
│   │   ├── pak2-players.pk3
│   │   ├── pak4-textures.pk3
│   │   ├── pak5-TA.pk3
│   │   ├── pak6-misc.pk3
│   │   ├── pak6-patch085.pk3
│   │   └── pak6-patch088.pk3
│   └── oa_ded.x86_64
├── conf
│   ├── common_as.cfg
│   ├── common.cfg
│   ├── duel
│   │   ├── autoexec.cfg
│   │   └── mapcycle.cfg
│   └── ffa
│       ├── autoexec.cfg
│       └── mapcycle.cfg
├── docker-compose.yml
├── Dockerfile
└── maps
    ├── duel
    │   ├── asduel1beta12.pk3
    │   ├── ct3tourney3.pk3
    │   ├── dk_kb.pk3
    │   ├── goldleaf.pk3
    │   ├── hektik.pk3
    │   ├── hub3aeroq3.pk3
    │   ├── hydra.pk3
    │   ├── plduel2.pk3
    │   ├── plduel3.pk3
    │   ├── pukka3tourney2.pk3
    │   ├── pul1duel.pk3
    │   ├── q3gwdm2.pk3
    │   ├── solitude.pk3
    │   ├── spwn3dm3.pk3
    │   ├── trespass.pk3
    │   ├── yan_test.pk3
    │   └── ztn3tourney1.pk3
    └── ffa
        ├── alkdm11.pk3
        ├── alkdm12.pk3
        ├── el3t4.pk3
        ├── fr3dm1.pk3
        ├── gm3tourney2.pk3
        ├── gobl_tourney1.pk3
        ├── jof3dm2.pk3
        ├── jstrq3dm2.pk3
        ├── q3trnp1.pk3
        └── sq3t2.pk3
```

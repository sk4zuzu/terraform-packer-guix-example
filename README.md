
TERRAFORM-PACKER-GUIX-EXAMPLE
=============================

## 1. PURPOSE

Just a devops exercise.

## 2. INSTALL PACKER, TERRAFORM + PROVIDERS (NIXOS), DOWNLOAD GUIX ISO IMAGE

```
$ make requirements
make -f /stor/gublyn/_git/terraform-packer-guix-example/Makefile.BINARIES
make[1]: Entering directory '/stor/gublyn/_git/terraform-packer-guix-example'
rm -f /home/gublyn/go/bin/packer && ln -s /home/gublyn/go/bin/packer-1.5.1 /home/gublyn/go/bin/packer
rm -f /home/gublyn/go/bin/terraform && ln -s /home/gublyn/go/bin/terraform-0.12.19 /home/gublyn/go/bin/terraform
make[1]: Leaving directory '/stor/gublyn/_git/terraform-packer-guix-example'
make -f /stor/gublyn/_git/terraform-packer-guix-example/Makefile.EXTRAS
make[1]: Entering directory '/stor/gublyn/_git/terraform-packer-guix-example'
install -d /home/gublyn/go/src/github.com/dmacvicar/terraform-provider-libvirt/ && cd /home/gublyn/go/src/github.com/dmacvicar/terraform-provider-libvirt/ && git clone --branch=v0.6.1 https://github.com/dmacvicar/terraform-provider-libvirt.git . || ( git fetch origin v0.6.1 && git checkout v0.6.1 && git clean -df && git reset --hard v0.6.1 )
fatal: destination path '.' already exists and is not an empty directory.
From https://github.com/dmacvicar/terraform-provider-libvirt
 * tag                 v0.6.1     -> FETCH_HEAD
HEAD is now at db13b678 Fix test command output
HEAD is now at db13b678 Fix test command output
cd /home/gublyn/go/src/github.com/dmacvicar/terraform-provider-libvirt/ && GOPATH=/home/gublyn/go go build -o /home/gublyn/go/bin/terraform-provider-libvirt-0.6.1
rm -f /home/gublyn/go/bin/terraform-provider-libvirt && ln -s /home/gublyn/go/bin/terraform-provider-libvirt-0.6.1 /home/gublyn/go/bin/terraform-provider-libvirt
make[1]: Leaving directory '/stor/gublyn/_git/terraform-packer-guix-example'
make -f /stor/gublyn/_git/terraform-packer-guix-example/Makefile.ISO
make[1]: Entering directory '/stor/gublyn/_git/terraform-packer-guix-example'
set -o pipefail \
&& curl -fSL https://ftp.gnu.org/gnu/guix/guix-system-install-1.0.1.x86_64-linux.iso.xz \
| xzcat >/stor/gublyn/_git/terraform-packer-guix-example/downloads/guix-system-install-1.0.1.x86_64-linux.iso
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed

  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
  0     0    0     0    0     0      0      0 --:--:--  0:00:01 --:--:--     0
  0     0    0     0    0     0      0      0 --:--:--  0:00:02 --:--:--     0
  0     0    0     0    0     0      0      0 --:--:--  0:00:02 --:--:--     0
  0  244M    0 49152    0     0  14439      0  4:56:01  0:00:03  4:55:58 14435
  0  244M    0  160k    0     0  37569      0  1:53:46  0:00:04  1:53:42 37560
  0  244M    0  320k    0     0  60102      0  1:11:07  0:00:05  1:11:02 79980
  0  244M    0  512k    0     0  81868      0  0:52:12  0:00:06  0:52:06  120k
  0  244M    0  864k    0     0   117k      0  0:35:33  0:00:07  0:35:26  176k
  0  244M    0 1520k    0     0   181k      0  0:22:59  0:00:08  0:22:51  296k
  0  244M    0 2480k    0     0   264k      0  0:15:46  0:00:09  0:15:37  462k
  1  244M    1 3296k    0     0   316k      0  0:13:10  0:00:10  0:13:00  600k
  1  244M    1 3936k    0     0   341k      0  0:12:13  0:00:11  0:12:02  669k
  1  244M    1 4528k    0     0   366k      0  0:11:23  0:00:12  0:11:11  732k
  2  244M    2 5200k    0     0   388k      0  0:10:44  0:00:13  0:10:31  734k
  2  244M    2 5856k    0     0   407k      0  0:10:15  0:00:14  0:10:01  673k
  2  244M    2 6320k    0     0   411k      0  0:10:08  0:00:15  0:09:53  610k
  2  244M    2 6976k    0     0   425k      0  0:09:48  0:00:16  0:09:32  625k
  2  244M    2 7504k    0     0   423k      0  0:09:51  0:00:17  0:09:34  555k
  3  244M    3 7760k    0     0   422k      0  0:09:53  0:00:18  0:09:35  512k
  3  244M    3 7968k    0     0   409k      0  0:10:11  0:00:19  0:09:52  417k
  3  244M    3 8256k    0     0   404k      0  0:10:18  0:00:20  0:09:58  384k
  3  244M    3 8544k    0     0   399k      0  0:10:26  0:00:21  0:10:05  314k
  3  244M    3 8880k    0     0   397k      0  0:10:30  0:00:22  0:10:08  296k
  3  244M    3 9184k    0     0   393k      0  0:10:37  0:00:23  0:10:14  286k
  3  244M    3 9536k    0     0   391k      0  0:10:39  0:00:24  0:10:15  318k
  3  244M    3 9968k    0     0   392k      0  0:10:37  0:00:25  0:10:12  344k
  4  244M    4 10.3M    0     0   400k      0  0:10:25  0:00:26  0:09:59  402k
  4  244M    4 11.1M    0     0   416k      0  0:10:00  0:00:27  0:09:33  505k
  4  244M    4 12.0M    0     0   432k      0  0:09:38  0:00:28  0:09:10  617k
  5  244M    5 12.6M    0     0   441k      0  0:09:26  0:00:29  0:08:57  687k
  5  244M    5 13.4M    0     0   451k      0  0:09:14  0:00:30  0:08:44  750k
  5  244M    5 13.8M    0     0   453k      0  0:09:12  0:00:31  0:08:41  731k
  5  244M    5 14.3M    0     0   451k      0  0:09:14  0:00:32  0:08:42  638k
  6  244M    6 14.7M    0     0   452k      0  0:09:13  0:00:33  0:08:40  564k
  6  244M    6 15.1M    0     0   451k      0  0:09:14  0:00:34  0:08:40  509k
  6  244M    6 15.6M    0     0   452k      0  0:09:13  0:00:35  0:08:38  458k
  6  244M    6 16.1M    0     0   454k      0  0:09:10  0:00:36  0:08:34  464k
  6  244M    6 16.5M    0     0   452k      0  0:09:13  0:00:37  0:08:36  461k
  6  244M    6 17.0M    0     0   453k      0  0:09:11  0:00:38  0:08:33  461k
  7  244M    7 17.4M    0     0   454k      0  0:09:10  0:00:39  0:08:31  476k
  7  244M    7 17.8M    0     0   453k      0  0:09:12  0:00:40  0:08:32  455k
  7  244M    7 18.3M    0     0   453k      0  0:09:12  0:00:41  0:08:31  443k
  7  244M    7 18.8M    0     0   455k      0  0:09:09  0:00:42  0:08:27  478k
  7  244M    7 19.3M    0     0   456k      0  0:09:08  0:00:43  0:08:25  480k
  8  244M    8 19.8M    0     0   459k      0  0:09:05  0:00:44  0:08:21  492k
  8  244M    8 20.4M    0     0   460k      0  0:09:03  0:00:45  0:08:18  520k
  8  244M    8 20.9M    0     0   463k      0  0:09:00  0:00:46  0:08:14  546k
  8  244M    8 21.6M    0     0   468k      0  0:08:54  0:00:47  0:08:07  573k
  9  244M    9 22.4M    0     0   475k      0  0:08:46  0:00:48  0:07:58  636k
  9  244M    9 23.5M    0     0   488k      0  0:08:33  0:00:49  0:07:44  745k
 10  244M   10 25.0M    0     0   508k      0  0:08:12  0:00:50  0:07:22  948k
 11  244M   11 26.9M    0     0   536k      0  0:07:46  0:00:51  0:06:55 1219k
 11  244M   11 28.9M    0     0   566k      0  0:07:21  0:00:52  0:06:29 1500k
 12  244M   12 31.3M    0     0   601k      0  0:06:56  0:00:53  0:06:03 1814k
 13  244M   13 33.7M    0     0   635k      0  0:06:34  0:00:54  0:05:40 2086k
 14  244M   14 36.0M    0     0   667k      0  0:06:15  0:00:55  0:05:20 2268k
 15  244M   15 38.4M    0     0   698k      0  0:05:58  0:00:56  0:05:02 2366k
 16  244M   16 40.8M    0     0   729k      0  0:05:43  0:00:57  0:04:46 2428k
 17  244M   17 43.2M    0     0   758k      0  0:05:30  0:00:58  0:04:32 2436k
 18  244M   18 45.5M    0     0   786k      0  0:05:18  0:00:59  0:04:19 2432k
 19  244M   19 47.9M    0     0   813k      0  0:05:07  0:01:00  0:04:07 2431k
 20  244M   20 50.3M    0     0   839k      0  0:04:58  0:01:01  0:03:57 2429k
 21  244M   21 52.6M    0     0   865k      0  0:04:49  0:01:02  0:03:47 2423k
 22  244M   22 55.0M    0     0   890k      0  0:04:41  0:01:03  0:03:38 2432k
 23  244M   23 57.4M    0     0   913k      0  0:04:34  0:01:04  0:03:30 2425k
 24  244M   24 59.8M    0     0   937k      0  0:04:27  0:01:05  0:03:22 2430k
 25  244M   25 62.1M    0     0   959k      0  0:04:20  0:01:06  0:03:14 2428k
 26  244M   26 64.5M    0     0   981k      0  0:04:15  0:01:07  0:03:08 2433k
 27  244M   27 66.9M    0     0  1002k      0  0:04:09  0:01:08  0:03:01 2428k
 28  244M   28 69.3M    0     0  1023k      0  0:04:04  0:01:09  0:02:55 2432k
 29  244M   29 71.6M    0     0  1043k      0  0:04:00  0:01:10  0:02:50 2429k
 30  244M   30 74.0M    0     0  1062k      0  0:03:55  0:01:11  0:02:44 2428k
 31  244M   31 76.4M    0     0  1081k      0  0:03:51  0:01:12  0:02:39 2426k
 32  244M   32 78.7M    0     0  1099k      0  0:03:47  0:01:13  0:02:34 2425k
 33  244M   33 81.1M    0     0  1117k      0  0:03:44  0:01:14  0:02:30 2425k
 34  244M   34 83.5M    0     0  1135k      0  0:03:40  0:01:15  0:02:25 2426k
 35  244M   35 85.9M    0     0  1152k      0  0:03:37  0:01:16  0:02:21 2429k
 36  244M   36 88.2M    0     0  1168k      0  0:03:34  0:01:17  0:02:17 2428k
 37  244M   37 90.6M    0     0  1184k      0  0:03:31  0:01:18  0:02:13 2429k
 38  244M   38 93.0M    0     0  1200k      0  0:03:28  0:01:19  0:02:09 2428k
 39  244M   39 95.3M    0     0  1215k      0  0:03:26  0:01:20  0:02:06 2428k
 39  244M   39 97.7M    0     0  1230k      0  0:03:23  0:01:21  0:02:02 2426k
 40  244M   40  100M    0     0  1244k      0  0:03:21  0:01:22  0:01:59 2428k
 41  244M   41  102M    0     0  1255k      0  0:03:19  0:01:23  0:01:56 2367k
 42  244M   42  104M    0     0  1268k      0  0:03:17  0:01:24  0:01:53 2355k
 43  244M   43  106M    0     0  1282k      0  0:03:15  0:01:25  0:01:50 2355k
 44  244M   44  109M    0     0  1295k      0  0:03:13  0:01:26  0:01:47 2353k
 45  244M   45  111M    0     0  1308k      0  0:03:11  0:01:27  0:01:44 2354k
 46  244M   46  114M    0     0  1321k      0  0:03:09  0:01:28  0:01:41 2416k
 47  244M   47  116M    0     0  1318k      0  0:03:09  0:01:30  0:01:39 2019k
 47  244M   47  116M    0     0  1317k      0  0:03:10  0:01:30  0:01:40 1903k
 49  244M   49  120M    0     0  1341k      0  0:03:06  0:01:32  0:01:34 2028k
 49  244M   49  121M    0     0  1352k      0  0:03:05  0:01:32  0:01:33 2118k
 51  244M   51  125M    0     0  1376k      0  0:03:01  0:01:33  0:01:28 2352k
 52  244M   52  127M    0     0  1387k      0  0:03:00  0:01:34  0:01:26 2939k
 53  244M   53  130M    0     0  1398k      0  0:02:59  0:01:35  0:01:24 2888k
 54  244M   54  132M    0     0  1409k      0  0:02:57  0:01:36  0:01:21 2903k
 55  244M   55  134M    0     0  1419k      0  0:02:56  0:01:37  0:01:19 2661k
 56  244M   56  137M    0     0  1429k      0  0:02:55  0:01:38  0:01:17 2428k
 57  244M   57  139M    0     0  1438k      0  0:02:54  0:01:39  0:01:15 2398k
 57  244M   57  141M    0     0  1440k      0  0:02:53  0:01:40  0:01:13 2242k
 58  244M   58  142M    0     0  1439k      0  0:02:53  0:01:41  0:01:12 2032k
 59  244M   59  144M    0     0  1449k      0  0:02:52  0:01:42  0:01:10 2031k
 60  244M   60  147M    0     0  1458k      0  0:02:51  0:01:43  0:01:08 2031k
 60  244M   60  148M    0     0  1452k      0  0:02:52  0:01:44  0:01:08 1723k
 61  244M   61  150M    0     0  1465k      0  0:02:50  0:01:45  0:01:05 1977k
 63  244M   63  154M    0     0  1486k      0  0:02:48  0:01:46  0:01:02 2424k
 64  244M   64  156M    0     0  1494k      0  0:02:47  0:01:47  0:01:00 2427k
 65  244M   65  159M    0     0  1503k      0  0:02:46  0:01:48  0:00:58 2422k
 66  244M   66  161M    0     0  1511k      0  0:02:45  0:01:49  0:00:56 2795k
 66  244M   66  163M    0     0  1520k      0  0:02:44  0:01:50  0:00:54 2665k
 67  244M   67  166M    0     0  1528k      0  0:02:43  0:01:51  0:00:52 2429k
 68  244M   68  168M    0     0  1536k      0  0:02:43  0:01:52  0:00:51 2428k
 69  244M   69  170M    0     0  1541k      0  0:02:42  0:01:53  0:00:49 2358k
 70  244M   70  172M    0     0  1542k      0  0:02:42  0:01:54  0:00:48 2161k
 71  244M   71  175M    0     0  1556k      0  0:02:40  0:01:55  0:00:45 2358k
 72  244M   72  177M    0     0  1562k      0  0:02:40  0:01:56  0:00:44 2317k
 73  244M   73  180M    0     0  1571k      0  0:02:39  0:01:57  0:00:42 2356k
 74  244M   74  182M    0     0  1578k      0  0:02:38  0:01:58  0:00:40 2432k
 75  244M   75  184M    0     0  1585k      0  0:02:37  0:01:59  0:00:38 2666k
 76  244M   76  187M    0     0  1592k      0  0:02:37  0:02:00  0:00:37 2429k
 77  244M   77  188M    0     0  1591k      0  0:02:37  0:02:01  0:00:36 2257k
 78  244M   78  191M    0     0  1599k      0  0:02:36  0:02:02  0:00:34 2257k
 79  244M   79  193M    0     0  1605k      0  0:02:35  0:02:03  0:00:32 2243k
 79  244M   79  195M    0     0  1610k      0  0:02:35  0:02:04  0:00:31 2185k
 80  244M   80  197M    0     0  1615k      0  0:02:35  0:02:05  0:00:30 2162k
 81  244M   81  199M    0     0  1615k      0  0:02:35  0:02:06  0:00:29 2210k
 82  244M   82  200M    0     0  1614k      0  0:02:35  0:02:07  0:00:28 1983k
 82  244M   82  202M    0     0  1609k      0  0:02:35  0:02:08  0:00:27 1704k
 82  244M   82  202M    0     0  1605k      0  0:02:35  0:02:09  0:00:26 1494k
 83  244M   83  203M    0     0  1597k      0  0:02:36  0:02:10  0:00:26 1151k
 83  244M   83  204M    0     0  1590k      0  0:02:37  0:02:11  0:00:26  943k
 83  244M   83  204M    0     0  1583k      0  0:02:38  0:02:12  0:00:26  783k
 83  244M   83  205M    0     0  1576k      0  0:02:38  0:02:13  0:00:25  657k
 84  244M   84  205M    0     0  1568k      0  0:02:39  0:02:14  0:00:25  607k
 84  244M   84  206M    0     0  1560k      0  0:02:40  0:02:15  0:00:25  596k
 84  244M   84  206M    0     0  1552k      0  0:02:41  0:02:16  0:00:25  559k
 84  244M   84  206M    0     0  1540k      0  0:02:42  0:02:17  0:00:25  450k
 84  244M   84  207M    0     0  1533k      0  0:02:43  0:02:18  0:00:25  410k
 84  244M   84  207M    0     0  1524k      0  0:02:44  0:02:19  0:00:25  350k
 84  244M   84  207M    0     0  1515k      0  0:02:45  0:02:20  0:00:25  300k
 85  244M   85  208M    0     0  1507k      0  0:02:46  0:02:21  0:00:25  269k
 85  244M   85  208M    0     0  1498k      0  0:02:47  0:02:22  0:00:25  309k
 85  244M   85  208M    0     0  1490k      0  0:02:47  0:02:23  0:00:24  302k
 85  244M   85  209M    0     0  1484k      0  0:02:48  0:02:24  0:00:24  364k
 85  244M   85  210M    0     0  1479k      0  0:02:49  0:02:25  0:00:24  455k
 86  244M   86  211M    0     0  1476k      0  0:02:49  0:02:26  0:00:23  617k
 86  244M   86  212M    0     0  1477k      0  0:02:49  0:02:27  0:00:22  883k
 87  244M   87  214M    0     0  1482k      0  0:02:48  0:02:28  0:00:20 1242k
 88  244M   88  217M    0     0  1489k      0  0:02:48  0:02:29  0:00:19 1639k
 89  244M   89  219M    0     0  1495k      0  0:02:47  0:02:30  0:00:17 1968k
 90  244M   90  222M    0     0  1501k      0  0:02:46  0:02:31  0:00:15 2233k
 91  244M   91  224M    0     0  1508k      0  0:02:46  0:02:32  0:00:14 2393k
 92  244M   92  226M    0     0  1513k      0  0:02:45  0:02:33  0:00:12 2446k
 93  244M   93  229M    0     0  1519k      0  0:02:44  0:02:34  0:00:10 2431k
 94  244M   94  231M    0     0  1525k      0  0:02:44  0:02:35  0:00:09 2419k
 95  244M   95  233M    0     0  1531k      0  0:02:43  0:02:36  0:00:07 2419k
 96  244M   96  236M    0     0  1535k      0  0:02:43  0:02:37  0:00:06 2385k
 97  244M   97  238M    0     0  1540k      0  0:02:42  0:02:38  0:00:04 2371k
 98  244M   98  240M    0     0  1543k      0  0:02:42  0:02:39  0:00:03 2266k
 99  244M   99  242M    0     0  1547k      0  0:02:41  0:02:40  0:00:01 2217k
100  244M  100  244M    0     0  1552k      0  0:02:41  0:02:41 --:--:-- 2218k
rm -f /stor/gublyn/_git/terraform-packer-guix-example/downloads/guix.iso && ln -s /stor/gublyn/_git/terraform-packer-guix-example/downloads/guix-system-install-1.0.1.x86_64-linux.iso /stor/gublyn/_git/terraform-packer-guix-example/downloads/guix.iso 
make[1]: Leaving directory '/stor/gublyn/_git/terraform-packer-guix-example'
```

## 3. BUILD GUIX BASE VOLUME

```
$ make volume
cd /stor/gublyn/_git/terraform-packer-guix-example/packer/guix/ && make build
make[1]: Entering directory '/stor/gublyn/_git/terraform-packer-guix-example/packer/guix'
packer build -force - <<< "$Packerfile"
2020/01/13 21:45:03 [INFO] Packer version: 1.5.1 [go1.13.5 linux amd64]
2020/01/13 21:45:03 Attempting to open config file: /home/gublyn/.packerconfig
2020/01/13 21:45:03 [WARN] Config file doesn't exist: /home/gublyn/.packerconfig
2020/01/13 21:45:03 Setting cache directory: /stor/gublyn/_git/terraform-packer-guix-example/packer/guix/packer_cache
2020/01/13 21:45:03 Plugin could not be found at /home/gublyn/go/bin/packer-1.5.1-PACKERSPACE-plugin-PACKERSPACE-packer-builder-qemu (exec: "/home/gublyn/go/bin/packer-1.5.1-PACKERSPACE-plugin-PACKERSPACE-packer-builder-qemu": stat /home/gublyn/go/bin/packer-1.5.1-PACKERSPACE-plugin-PACKERSPACE-packer-builder-qemu: no such file or directory). Checking same directory as executable.
2020/01/13 21:45:03 Current exe path: /home/gublyn/go/bin/packer-1.5.1
2020/01/13 21:45:03 Creating plugin client for path: /home/gublyn/go/bin/packer-1.5.1
2020/01/13 21:45:03 Starting plugin: /home/gublyn/go/bin/packer-1.5.1 []string{"/home/gublyn/go/bin/packer-1.5.1", "plugin", "packer-builder-qemu"}
2020/01/13 21:45:03 Waiting for RPC address for: /home/gublyn/go/bin/packer-1.5.1
2020/01/13 21:45:03 packer-1.5.1 plugin: [INFO] Packer version: 1.5.1 [go1.13.5 linux amd64]
2020/01/13 21:45:03 packer-1.5.1 plugin: Attempting to open config file: /home/gublyn/.packerconfig
2020/01/13 21:45:03 packer-1.5.1 plugin: [WARN] Config file doesn't exist: /home/gublyn/.packerconfig
2020/01/13 21:45:03 packer-1.5.1 plugin: Setting cache directory: /stor/gublyn/_git/terraform-packer-guix-example/packer/guix/packer_cache
2020/01/13 21:45:03 packer-1.5.1 plugin: args: []string{"packer-builder-qemu"}
2020/01/13 21:45:03 packer-1.5.1 plugin: Plugin address: unix /tmp/packer-plugin385876845
2020/01/13 21:45:03 packer-1.5.1 plugin: Waiting for connection...
2020/01/13 21:45:03 Received unix RPC address for /home/gublyn/go/bin/packer-1.5.1: addr is /tmp/packer-plugin385876845
2020/01/13 21:45:03 packer-1.5.1 plugin: Serving a plugin connection...
2020/01/13 21:45:03 Plugin could not be found at /home/gublyn/go/bin/packer-1.5.1-PACKERSPACE-plugin-PACKERSPACE-packer-provisioner-shell (exec: "/home/gublyn/go/bin/packer-1.5.1-PACKERSPACE-plugin-PACKERSPACE-packer-provisioner-shell": stat /home/gublyn/go/bin/packer-1.5.1-PACKERSPACE-plugin-PACKERSPACE-packer-provisioner-shell: no such file or directory). Checking same directory as executable.
2020/01/13 21:45:03 Current exe path: /home/gublyn/go/bin/packer-1.5.1
2020/01/13 21:45:03 Creating plugin client for path: /home/gublyn/go/bin/packer-1.5.1
2020/01/13 21:45:03 Starting plugin: /home/gublyn/go/bin/packer-1.5.1 []string{"/home/gublyn/go/bin/packer-1.5.1", "plugin", "packer-provisioner-shell"}
2020/01/13 21:45:03 Waiting for RPC address for: /home/gublyn/go/bin/packer-1.5.1
2020/01/13 21:45:03 packer-1.5.1 plugin: [INFO] Packer version: 1.5.1 [go1.13.5 linux amd64]
2020/01/13 21:45:03 packer-1.5.1 plugin: Attempting to open config file: /home/gublyn/.packerconfig
2020/01/13 21:45:03 packer-1.5.1 plugin: [WARN] Config file doesn't exist: /home/gublyn/.packerconfig
2020/01/13 21:45:03 packer-1.5.1 plugin: Setting cache directory: /stor/gublyn/_git/terraform-packer-guix-example/packer/guix/packer_cache
2020/01/13 21:45:03 packer-1.5.1 plugin: args: []string{"packer-provisioner-shell"}
2020/01/13 21:45:03 packer-1.5.1 plugin: Plugin address: unix /tmp/packer-plugin448209688
2020/01/13 21:45:03 Received unix RPC address for /home/gublyn/go/bin/packer-1.5.1: addr is /tmp/packer-plugin448209688
2020/01/13 21:45:03 packer-1.5.1 plugin: Waiting for connection...
2020/01/13 21:45:03 packer-1.5.1 plugin: Serving a plugin connection...
2020/01/13 21:45:03 Build debug mode: false
2020/01/13 21:45:03 Force build: true
2020/01/13 21:45:03 On error: 
2020/01/13 21:45:03 Preparing build: qemu
qemu: output will be in this color.

2020/01/13 21:45:03 packer-1.5.1 plugin: use specified accelerator: kvm
2020/01/13 21:45:03 Waiting on builds to complete...
2020/01/13 21:45:03 Starting build run: qemu
2020/01/13 21:45:03 Running builder: qemu
2020/01/13 21:45:03 [INFO] (telemetry) Starting builder qemu
2020/01/13 21:45:03 packer-1.5.1 plugin: Qemu path: /nix/store/zgf2b2yzijgldkv02kr2r6gq2mz8pf7f-qemu-host-cpu-only-4.0.1/bin/qemu-system-x86_64, Qemu Image page: /nix/store/zgf2b2yzijgldkv02kr2r6gq2mz8pf7f-qemu-host-cpu-only-4.0.1/bin/qemu-img
==> qemu: Retrieving ISO
==> qemu: Trying file:///stor/gublyn/_git/terraform-packer-guix-example/packer/guix/../../downloads/guix.iso
2020/01/13 21:45:03 packer-1.5.1 plugin: Acquiring lock for: file:///stor/gublyn/_git/terraform-packer-guix-example/packer/guix/../../downloads/guix.iso?checksum=sha256%3A4ef91c584c6749d6796ab17537bbead7fb41741e47fedab9457607a292a98de1 (/stor/gublyn/_git/terraform-packer-guix-example/packer/guix/packer_cache/44cfa63eae086c0b51ff1d0099ede619665ee994.iso.lock)
==> qemu: Trying file:///stor/gublyn/_git/terraform-packer-guix-example/packer/guix/../../downloads/guix.iso?checksum=sha256%3A4ef91c584c6749d6796ab17537bbead7fb41741e47fedab9457607a292a98de1
2020/01/13 21:45:09 packer-1.5.1 plugin: Leaving retrieve loop for ISO
2020/01/13 21:45:09 packer-1.5.1 plugin: No floppy files specified. Floppy disk will not be made.
==> qemu: file:///stor/gublyn/_git/terraform-packer-guix-example/packer/guix/../../downloads/guix.iso?checksum=sha256%3A4ef91c584c6749d6796ab17537bbead7fb41741e47fedab9457607a292a98de1 => /stor/gublyn/_git/terraform-packer-guix-example/packer/guix/packer_cache/44cfa63eae086c0b51ff1d0099ede619665ee994.iso
==> qemu: Creating required virtual machine disks
2020/01/13 21:45:09 packer-1.5.1 plugin: [INFO] Creating disk with Path: /stor/gublyn/_git/terraform-packer-guix-example/packer/guix/output/packer-guix.qcow2 and Size: 16384M
2020/01/13 21:45:09 packer-1.5.1 plugin: Executing qemu-img: []string{"create", "-f", "qcow2", "/stor/gublyn/_git/terraform-packer-guix-example/packer/guix/output/packer-guix.qcow2", "16384M"}
2020/01/13 21:45:09 packer-1.5.1 plugin: stdout: Formatting '/stor/gublyn/_git/terraform-packer-guix-example/packer/guix/output/packer-guix.qcow2', fmt=qcow2 size=17179869184 cluster_size=65536 lazy_refcounts=off refcount_bits=16
2020/01/13 21:45:09 packer-1.5.1 plugin: stderr:
2020/01/13 21:45:09 packer-1.5.1 plugin: Looking for available communicator (SSH, WinRM, etc) port between 2222 and 4444
2020/01/13 21:45:09 packer-1.5.1 plugin: Found available port: 2371 on IP: 127.0.0.1
==> qemu: Found port for communicator (SSH, WinRM, etc): 2371.
==> qemu: Looking for available port between 5900 and 6000 on 127.0.0.1
==> qemu: Starting VM, booting from CD-ROM
2020/01/13 21:45:09 packer-1.5.1 plugin: Looking for available port between 5900 and 6000 on 127.0.0.1
2020/01/13 21:45:09 packer-1.5.1 plugin: Found available port: 5972 on IP: 127.0.0.1
2020/01/13 21:45:09 packer-1.5.1 plugin: Found available VNC port: 5972 on IP: 127.0.0.1
2020/01/13 21:45:09 packer-1.5.1 plugin: Qemu --version output: QEMU emulator version 4.0.1
2020/01/13 21:45:09 packer-1.5.1 plugin: Copyright (c) 2003-2019 Fabrice Bellard and the QEMU Project developers
2020/01/13 21:45:09 packer-1.5.1 plugin: Qemu version: 4.0.1
    qemu: view the screen of the VM, connect via VNC without a password to
    qemu: vnc://127.0.0.1:5972
2020/01/13 21:45:09 packer-1.5.1 plugin: Qemu Builder has no floppy files, not attaching a floppy.
    qemu: The VM will be run headless, without a GUI. If you want to
    qemu: view the screen of the VM, connect via VNC without a password to
    qemu: vnc://127.0.0.1:5972
==> qemu: Overriding defaults Qemu arguments with QemuArgs...
2020/01/13 21:45:09 packer-1.5.1 plugin: Executing /nix/store/zgf2b2yzijgldkv02kr2r6gq2mz8pf7f-qemu-host-cpu-only-4.0.1/bin/qemu-system-x86_64: []string{"-cpu", "host", "-device", "virtio-net,netdev=user.0", "-drive", "file=/stor/gublyn/_git/terraform-packer-guix-example/packer/guix/output/packer-guix.qcow2,if=virtio,cache=writeback,discard=ignore,format=qcow2", "-vnc", "127.0.0.1:72", "-name", "packer-guix.qcow2", "-netdev", "user,id=user.0,hostfwd=tcp::2371-:22", "-boot", "once=d", "-m", "1024M", "-machine", "type=pc,accel=kvm", "-cdrom", "/stor/gublyn/_git/terraform-packer-guix-example/packer/guix/packer_cache/44cfa63eae086c0b51ff1d0099ede619665ee994.iso"}
2020/01/13 21:45:09 packer-1.5.1 plugin: Started Qemu. Pid: 12582
==> qemu: Waiting 10s for boot...
==> qemu: Connecting to VM via VNC (127.0.0.1:5972)
==> qemu: Typing the boot command over VNC...
2020/01/13 21:45:21 packer-1.5.1 plugin: Connected to VNC desktop: QEMU (packer-guix.qcow2)
2020/01/13 21:45:21 packer-1.5.1 plugin: [INFO] Waiting 20s
2020/01/13 21:45:41 packer-1.5.1 plugin: Special code '<enter>' found, replacing with: 0xFF0D
2020/01/13 21:45:42 packer-1.5.1 plugin: Special code '<down>' found, replacing with: 0xFF54
2020/01/13 21:45:42 packer-1.5.1 plugin: Special code '<down>' found, replacing with: 0xFF54
2020/01/13 21:45:42 packer-1.5.1 plugin: Special code '<down>' found, replacing with: 0xFF54
2020/01/13 21:45:42 packer-1.5.1 plugin: Special code '<down>' found, replacing with: 0xFF54
2020/01/13 21:45:42 packer-1.5.1 plugin: Special code '<down>' found, replacing with: 0xFF54
2020/01/13 21:45:43 packer-1.5.1 plugin: Special code '<down>' found, replacing with: 0xFF54
2020/01/13 21:45:43 packer-1.5.1 plugin: Special code '<down>' found, replacing with: 0xFF54
2020/01/13 21:45:43 packer-1.5.1 plugin: Special code '<down>' found, replacing with: 0xFF54
2020/01/13 21:45:43 packer-1.5.1 plugin: Special code '<down>' found, replacing with: 0xFF54
2020/01/13 21:45:43 packer-1.5.1 plugin: Special code '<down>' found, replacing with: 0xFF54
2020/01/13 21:45:44 packer-1.5.1 plugin: Special code '<down>' found, replacing with: 0xFF54
2020/01/13 21:45:44 packer-1.5.1 plugin: Special code '<down>' found, replacing with: 0xFF54
2020/01/13 21:45:44 packer-1.5.1 plugin: Special code '<down>' found, replacing with: 0xFF54
2020/01/13 21:45:44 packer-1.5.1 plugin: Special code '<down>' found, replacing with: 0xFF54
2020/01/13 21:45:44 packer-1.5.1 plugin: Special code '<down>' found, replacing with: 0xFF54
2020/01/13 21:45:45 packer-1.5.1 plugin: Special code '<down>' found, replacing with: 0xFF54
2020/01/13 21:45:45 packer-1.5.1 plugin: Special code '<enter>' found, replacing with: 0xFF0D
2020/01/13 21:45:45 packer-1.5.1 plugin: [INFO] Waiting 1s
2020/01/13 21:45:46 packer-1.5.1 plugin: Special code '<down>' found, replacing with: 0xFF54
2020/01/13 21:45:46 packer-1.5.1 plugin: Special code '<enter>' found, replacing with: 0xFF0D
2020/01/13 21:45:46 packer-1.5.1 plugin: [INFO] Waiting 1s
2020/01/13 21:45:47 packer-1.5.1 plugin: Special code '<enter>' found, replacing with: 0xFF0D
2020/01/13 21:45:48 packer-1.5.1 plugin: Sending char 'h', code 0x68, shift false
2020/01/13 21:45:48 packer-1.5.1 plugin: Sending char 'e', code 0x65, shift false
2020/01/13 21:45:48 packer-1.5.1 plugin: Sending char 'r', code 0x72, shift false
2020/01/13 21:45:48 packer-1.5.1 plugin: Sending char 'd', code 0x64, shift false
2020/01/13 21:45:48 packer-1.5.1 plugin: Sending char ' ', code 0x20, shift false
2020/01/13 21:45:49 packer-1.5.1 plugin: Sending char 's', code 0x73, shift false
2020/01/13 21:45:49 packer-1.5.1 plugin: Sending char 't', code 0x74, shift false
2020/01/13 21:45:49 packer-1.5.1 plugin: Sending char 'a', code 0x61, shift false
2020/01/13 21:45:49 packer-1.5.1 plugin: Sending char 'r', code 0x72, shift false
2020/01/13 21:45:49 packer-1.5.1 plugin: Sending char 't', code 0x74, shift false
2020/01/13 21:45:50 packer-1.5.1 plugin: Sending char ' ', code 0x20, shift false
2020/01/13 21:45:50 packer-1.5.1 plugin: Sending char 's', code 0x73, shift false
2020/01/13 21:45:50 packer-1.5.1 plugin: Sending char 's', code 0x73, shift false
2020/01/13 21:45:50 packer-1.5.1 plugin: Sending char 'h', code 0x68, shift false
2020/01/13 21:45:50 packer-1.5.1 plugin: Sending char '-', code 0x2D, shift false
2020/01/13 21:45:51 packer-1.5.1 plugin: Sending char 'd', code 0x64, shift false
2020/01/13 21:45:51 packer-1.5.1 plugin: Sending char 'a', code 0x61, shift false
2020/01/13 21:45:51 packer-1.5.1 plugin: Sending char 'e', code 0x65, shift false
2020/01/13 21:45:51 packer-1.5.1 plugin: Sending char 'm', code 0x6D, shift false
2020/01/13 21:45:51 packer-1.5.1 plugin: Sending char 'o', code 0x6F, shift false
2020/01/13 21:45:52 packer-1.5.1 plugin: Sending char 'n', code 0x6E, shift false
2020/01/13 21:45:52 packer-1.5.1 plugin: Special code '<enter>' found, replacing with: 0xFF0D
2020/01/13 21:45:52 packer-1.5.1 plugin: [INFO] Waiting 1s
2020/01/13 21:45:53 packer-1.5.1 plugin: Sending char 'p', code 0x70, shift false
2020/01/13 21:45:53 packer-1.5.1 plugin: Sending char 'a', code 0x61, shift false
2020/01/13 21:45:53 packer-1.5.1 plugin: Sending char 's', code 0x73, shift false
2020/01/13 21:45:54 packer-1.5.1 plugin: Sending char 's', code 0x73, shift false
2020/01/13 21:45:54 packer-1.5.1 plugin: Sending char 'w', code 0x77, shift false
2020/01/13 21:45:54 packer-1.5.1 plugin: Sending char 'd', code 0x64, shift false
2020/01/13 21:45:54 packer-1.5.1 plugin: Sending char ' ', code 0x20, shift false
2020/01/13 21:45:54 packer-1.5.1 plugin: Sending char 'r', code 0x72, shift false
2020/01/13 21:45:55 packer-1.5.1 plugin: Sending char 'o', code 0x6F, shift false
2020/01/13 21:45:55 packer-1.5.1 plugin: Sending char 'o', code 0x6F, shift false
2020/01/13 21:45:55 packer-1.5.1 plugin: Sending char 't', code 0x74, shift false
2020/01/13 21:45:55 packer-1.5.1 plugin: Special code '<enter>' found, replacing with: 0xFF0D
2020/01/13 21:45:55 packer-1.5.1 plugin: Sending char 'r', code 0x72, shift false
2020/01/13 21:45:56 packer-1.5.1 plugin: Sending char 'o', code 0x6F, shift false
2020/01/13 21:45:56 packer-1.5.1 plugin: Sending char 'o', code 0x6F, shift false
2020/01/13 21:45:56 packer-1.5.1 plugin: Sending char 't', code 0x74, shift false
2020/01/13 21:45:56 packer-1.5.1 plugin: Special code '<enter>' found, replacing with: 0xFF0D
2020/01/13 21:45:56 packer-1.5.1 plugin: Sending char 'r', code 0x72, shift false
2020/01/13 21:45:57 packer-1.5.1 plugin: Sending char 'o', code 0x6F, shift false
2020/01/13 21:45:57 packer-1.5.1 plugin: Sending char 'o', code 0x6F, shift false
2020/01/13 21:45:57 packer-1.5.1 plugin: Sending char 't', code 0x74, shift false
2020/01/13 21:45:57 packer-1.5.1 plugin: Special code '<enter>' found, replacing with: 0xFF0D
==> qemu: Using ssh communicator to connect: 127.0.0.1
2020/01/13 21:45:58 packer-1.5.1 plugin: [INFO] Waiting for SSH, up to timeout: 5m0s
==> qemu: Waiting for SSH to become available...
2020/01/13 21:45:58 packer-1.5.1 plugin: [INFO] Attempting SSH connection to 127.0.0.1:2371...
2020/01/13 21:45:58 packer-1.5.1 plugin: [DEBUG] reconnecting to TCP connection for SSH
2020/01/13 21:45:58 packer-1.5.1 plugin: [DEBUG] handshaking with SSH
2020/01/13 21:45:58 packer-1.5.1 plugin: [DEBUG] handshake complete!
2020/01/13 21:45:58 packer-1.5.1 plugin: [DEBUG] Opening new ssh session
2020/01/13 21:45:58 packer-1.5.1 plugin: [INFO] agent forwarding enabled
==> qemu: Connected to SSH!
2020/01/13 21:45:58 packer-1.5.1 plugin: Running the provision hook
2020/01/13 21:45:58 [INFO] (telemetry) Starting provisioner shell
==> qemu: Provisioning with shell script: remote-exec/01-partitions.sh
2020/01/13 21:45:58 packer-1.5.1 plugin: Opening remote-exec/01-partitions.sh for reading
2020/01/13 21:45:58 packer-1.5.1 plugin: [INFO] 189 bytes written for 'uploadData'
2020/01/13 21:45:58 packer-1.5.1 plugin: [DEBUG] Opening new ssh session
2020/01/13 21:45:58 [INFO] 189 bytes written for 'uploadData'
2020/01/13 21:45:58 packer-1.5.1 plugin: [DEBUG] Starting remote scp process:  scp -vt /tmp
2020/01/13 21:45:58 packer-1.5.1 plugin: [DEBUG] Started SCP session, beginning transfers...
2020/01/13 21:45:58 packer-1.5.1 plugin: [DEBUG] Copying input data into temporary file so we can read the length
2020/01/13 21:45:58 packer-1.5.1 plugin: [DEBUG] scp: Uploading script_6940.sh: perms=C0644 size=189
2020/01/13 21:45:58 packer-1.5.1 plugin: [DEBUG] SCP session complete, closing stdin pipe.
2020/01/13 21:45:58 packer-1.5.1 plugin: [DEBUG] Waiting for SSH session to complete.
2020/01/13 21:45:58 packer-1.5.1 plugin: [DEBUG] scp stderr (length 31): Sink: C0644 189 script_6940.sh
2020/01/13 21:45:58 packer-1.5.1 plugin: [DEBUG] Opening new ssh session
2020/01/13 21:45:58 packer-1.5.1 plugin: [DEBUG] starting remote command: chmod 0755 /tmp/script_6940.sh
2020/01/13 21:45:58 packer-1.5.1 plugin: [INFO] RPC endpoint: Communicator ended with: 0
2020/01/13 21:45:58 [INFO] RPC client: Communicator ended with: 0
2020/01/13 21:45:58 [INFO] RPC endpoint: Communicator ended with: 0
2020/01/13 21:45:58 packer-1.5.1 plugin: [INFO] RPC client: Communicator ended with: 0
2020/01/13 21:45:58 packer-1.5.1 plugin: [DEBUG] Opening new ssh session
2020/01/13 21:45:58 packer-1.5.1 plugin: [DEBUG] starting remote command: chmod +x /tmp/script_6940.sh; PACKER_BUILDER_TYPE='qemu' PACKER_BUILD_NAME='qemu' PACKER_HTTP_IP='10.0.2.2'  /tmp/script_6940.sh
==> qemu: + parted --script /dev/vda mklabel msdos
==> qemu: + parted --script /dev/vda mkpart primary ext4 1MiB 100%
==> qemu: + sync
2020/01/13 21:45:58 packer-1.5.1 plugin: [INFO] RPC endpoint: Communicator ended with: 0
2020/01/13 21:45:58 [INFO] 0 bytes written for 'stdout'
2020/01/13 21:45:58 [INFO] 105 bytes written for 'stderr'
2020/01/13 21:45:58 [INFO] RPC client: Communicator ended with: 0
2020/01/13 21:45:58 [INFO] RPC endpoint: Communicator ended with: 0
2020/01/13 21:45:58 packer-1.5.1 plugin: [INFO] 0 bytes written for 'stdout'
2020/01/13 21:45:58 packer-1.5.1 plugin: [INFO] 105 bytes written for 'stderr'
2020/01/13 21:45:58 packer-1.5.1 plugin: [INFO] RPC client: Communicator ended with: 0
2020/01/13 21:45:58 packer-1.5.1 plugin: [DEBUG] Opening new ssh session
2020/01/13 21:45:58 packer-1.5.1 plugin: [DEBUG] starting remote command: rm -f /tmp/script_6940.sh
2020/01/13 21:45:58 packer-1.5.1 plugin: [INFO] RPC endpoint: Communicator ended with: 0
2020/01/13 21:45:58 [INFO] RPC client: Communicator ended with: 0
2020/01/13 21:45:58 [INFO] RPC endpoint: Communicator ended with: 0
2020/01/13 21:45:58 packer-1.5.1 plugin: [INFO] RPC client: Communicator ended with: 0
2020/01/13 21:45:58 packer-1.5.1 plugin: [DEBUG] Opening new ssh session
2020/01/13 21:45:58 packer-1.5.1 plugin: [DEBUG] starting remote command: rm -f
2020/01/13 21:45:58 [INFO] RPC client: Communicator ended with: 0
2020/01/13 21:45:58 [INFO] RPC endpoint: Communicator ended with: 0
2020/01/13 21:45:58 packer-1.5.1 plugin: [INFO] RPC endpoint: Communicator ended with: 0
2020/01/13 21:45:58 packer-1.5.1 plugin: [INFO] RPC client: Communicator ended with: 0
==> qemu: Provisioning with shell script: remote-exec/02-filesystems.sh
2020/01/13 21:45:58 packer-1.5.1 plugin: Opening remote-exec/02-filesystems.sh for reading
2020/01/13 21:45:58 packer-1.5.1 plugin: [DEBUG] Opening new ssh session
2020/01/13 21:45:58 packer-1.5.1 plugin: [INFO] 146 bytes written for 'uploadData'
2020/01/13 21:45:58 [INFO] 146 bytes written for 'uploadData'
2020/01/13 21:45:58 packer-1.5.1 plugin: [DEBUG] Starting remote scp process:  scp -vt /tmp
2020/01/13 21:45:58 packer-1.5.1 plugin: [DEBUG] Started SCP session, beginning transfers...
2020/01/13 21:45:58 packer-1.5.1 plugin: [DEBUG] Copying input data into temporary file so we can read the length
2020/01/13 21:45:58 packer-1.5.1 plugin: [DEBUG] scp: Uploading script_6940.sh: perms=C0644 size=146
2020/01/13 21:45:58 packer-1.5.1 plugin: [DEBUG] SCP session complete, closing stdin pipe.
2020/01/13 21:45:58 packer-1.5.1 plugin: [DEBUG] Waiting for SSH session to complete.
2020/01/13 21:45:58 packer-1.5.1 plugin: [DEBUG] scp stderr (length 31): Sink: C0644 146 script_6940.sh
2020/01/13 21:45:58 packer-1.5.1 plugin: [DEBUG] Opening new ssh session
2020/01/13 21:45:58 packer-1.5.1 plugin: [DEBUG] starting remote command: chmod 0755 /tmp/script_6940.sh
2020/01/13 21:45:58 packer-1.5.1 plugin: [INFO] RPC endpoint: Communicator ended with: 0
2020/01/13 21:45:58 [INFO] RPC client: Communicator ended with: 0
2020/01/13 21:45:58 [INFO] RPC endpoint: Communicator ended with: 0
2020/01/13 21:45:58 packer-1.5.1 plugin: [INFO] RPC client: Communicator ended with: 0
2020/01/13 21:45:58 packer-1.5.1 plugin: [DEBUG] Opening new ssh session
2020/01/13 21:45:58 packer-1.5.1 plugin: [DEBUG] starting remote command: chmod +x /tmp/script_6940.sh; PACKER_BUILDER_TYPE='qemu' PACKER_BUILD_NAME='qemu' PACKER_HTTP_IP='10.0.2.2'  /tmp/script_6940.sh
==> qemu: + mkfs.ext4 -L root /dev/vda1
==> qemu: mke2fs 1.44.5 (15-Dec-2018)
    qemu: Discarding device blocks:    4096/4194048               done
    qemu: Creating filesystem with 4194048 4k blocks and 1048576 inodes
    qemu: Filesystem UUID: 27c57250-0fe6-42db-a36e-fe962f198408
    qemu: Superblock backups stored on blocks:
    qemu: 	32768, 98304, 163840, 229376, 294912, 819200, 884736, 1605632, 2654208,
    qemu: 	4096000
    qemu:
    qemu: Allocating group tables:   0/128       done
    qemu: Writing inode tables:   0/128       done
    qemu: Creating journal (16384 blocks): done
    qemu: Writing superblocks and filesystem accounting information:   0/128       done
    qemu:
==> qemu: + mount LABEL=root /mnt/
==> qemu: + sync
2020/01/13 21:45:59 packer-1.5.1 plugin: [INFO] RPC endpoint: Communicator ended with: 0
2020/01/13 21:45:59 [INFO] 657 bytes written for 'stdout'
2020/01/13 21:45:59 [INFO] 90 bytes written for 'stderr'
2020/01/13 21:45:59 [INFO] RPC client: Communicator ended with: 0
2020/01/13 21:45:59 [INFO] RPC endpoint: Communicator ended with: 0
2020/01/13 21:45:59 packer-1.5.1 plugin: [INFO] 657 bytes written for 'stdout'
2020/01/13 21:45:59 packer-1.5.1 plugin: [INFO] 90 bytes written for 'stderr'
2020/01/13 21:45:59 packer-1.5.1 plugin: [INFO] RPC client: Communicator ended with: 0
2020/01/13 21:45:59 packer-1.5.1 plugin: [DEBUG] Opening new ssh session
2020/01/13 21:45:59 packer-1.5.1 plugin: [DEBUG] starting remote command: rm -f /tmp/script_6940.sh
2020/01/13 21:45:59 packer-1.5.1 plugin: [INFO] RPC endpoint: Communicator ended with: 0
2020/01/13 21:45:59 [INFO] RPC client: Communicator ended with: 0
2020/01/13 21:45:59 [INFO] RPC endpoint: Communicator ended with: 0
2020/01/13 21:45:59 packer-1.5.1 plugin: [INFO] RPC client: Communicator ended with: 0
2020/01/13 21:45:59 packer-1.5.1 plugin: [DEBUG] Opening new ssh session
2020/01/13 21:45:59 packer-1.5.1 plugin: [DEBUG] starting remote command: rm -f
2020/01/13 21:45:59 packer-1.5.1 plugin: [INFO] RPC endpoint: Communicator ended with: 0
2020/01/13 21:45:59 [INFO] RPC client: Communicator ended with: 0
2020/01/13 21:45:59 [INFO] RPC endpoint: Communicator ended with: 0
2020/01/13 21:45:59 packer-1.5.1 plugin: [INFO] RPC client: Communicator ended with: 0
==> qemu: Provisioning with shell script: remote-exec/03-configuration.sh
2020/01/13 21:45:59 packer-1.5.1 plugin: Opening remote-exec/03-configuration.sh for reading
2020/01/13 21:45:59 packer-1.5.1 plugin: [INFO] 3721 bytes written for 'uploadData'
2020/01/13 21:45:59 packer-1.5.1 plugin: [DEBUG] Opening new ssh session
2020/01/13 21:45:59 [INFO] 3721 bytes written for 'uploadData'
2020/01/13 21:45:59 packer-1.5.1 plugin: [DEBUG] Starting remote scp process:  scp -vt /tmp
2020/01/13 21:45:59 packer-1.5.1 plugin: [DEBUG] Started SCP session, beginning transfers...
2020/01/13 21:45:59 packer-1.5.1 plugin: [DEBUG] Copying input data into temporary file so we can read the length
2020/01/13 21:45:59 packer-1.5.1 plugin: [DEBUG] scp: Uploading script_6940.sh: perms=C0644 size=3721
2020/01/13 21:45:59 packer-1.5.1 plugin: [DEBUG] SCP session complete, closing stdin pipe.
2020/01/13 21:45:59 packer-1.5.1 plugin: [DEBUG] Waiting for SSH session to complete.
2020/01/13 21:45:59 packer-1.5.1 plugin: [DEBUG] scp stderr (length 32): Sink: C0644 3721 script_6940.sh
2020/01/13 21:45:59 packer-1.5.1 plugin: [DEBUG] Opening new ssh session
2020/01/13 21:45:59 packer-1.5.1 plugin: [DEBUG] starting remote command: chmod 0755 /tmp/script_6940.sh
2020/01/13 21:45:59 packer-1.5.1 plugin: [INFO] RPC endpoint: Communicator ended with: 0
2020/01/13 21:45:59 [INFO] RPC client: Communicator ended with: 0
2020/01/13 21:45:59 [INFO] RPC endpoint: Communicator ended with: 0
2020/01/13 21:45:59 packer-1.5.1 plugin: [INFO] RPC client: Communicator ended with: 0
2020/01/13 21:45:59 packer-1.5.1 plugin: [DEBUG] Opening new ssh session
2020/01/13 21:45:59 packer-1.5.1 plugin: [DEBUG] starting remote command: chmod +x /tmp/script_6940.sh; PACKER_BUILDER_TYPE='qemu' PACKER_BUILD_NAME='qemu' PACKER_HTTP_IP='10.0.2.2'  /tmp/script_6940.sh
==> qemu: + mkdir -p /mnt/etc/
==> qemu: + cat
==> qemu: + sync
2020/01/13 21:45:59 packer-1.5.1 plugin: [INFO] RPC endpoint: Communicator ended with: 0
2020/01/13 21:45:59 [INFO] 0 bytes written for 'stdout'
2020/01/13 21:45:59 [INFO] 34 bytes written for 'stderr'
2020/01/13 21:45:59 [INFO] RPC client: Communicator ended with: 0
2020/01/13 21:45:59 [INFO] RPC endpoint: Communicator ended with: 0
2020/01/13 21:45:59 packer-1.5.1 plugin: [INFO] 0 bytes written for 'stdout'
2020/01/13 21:45:59 packer-1.5.1 plugin: [INFO] 34 bytes written for 'stderr'
2020/01/13 21:45:59 packer-1.5.1 plugin: [INFO] RPC client: Communicator ended with: 0
2020/01/13 21:45:59 packer-1.5.1 plugin: [DEBUG] Opening new ssh session
2020/01/13 21:45:59 packer-1.5.1 plugin: [DEBUG] starting remote command: rm -f /tmp/script_6940.sh
2020/01/13 21:45:59 packer-1.5.1 plugin: [INFO] RPC endpoint: Communicator ended with: 0
2020/01/13 21:45:59 [INFO] RPC client: Communicator ended with: 0
2020/01/13 21:45:59 [INFO] RPC endpoint: Communicator ended with: 0
2020/01/13 21:45:59 packer-1.5.1 plugin: [INFO] RPC client: Communicator ended with: 0
2020/01/13 21:45:59 packer-1.5.1 plugin: [DEBUG] Opening new ssh session
2020/01/13 21:45:59 packer-1.5.1 plugin: [DEBUG] starting remote command: rm -f
2020/01/13 21:45:59 packer-1.5.1 plugin: [INFO] RPC endpoint: Communicator ended with: 0
2020/01/13 21:45:59 [INFO] RPC client: Communicator ended with: 0
2020/01/13 21:45:59 [INFO] RPC endpoint: Communicator ended with: 0
2020/01/13 21:45:59 packer-1.5.1 plugin: [INFO] RPC client: Communicator ended with: 0
==> qemu: Provisioning with shell script: remote-exec/04-installation.sh
2020/01/13 21:45:59 packer-1.5.1 plugin: Opening remote-exec/04-installation.sh for reading
2020/01/13 21:45:59 packer-1.5.1 plugin: [INFO] 162 bytes written for 'uploadData'
2020/01/13 21:45:59 [INFO] 162 bytes written for 'uploadData'
2020/01/13 21:45:59 packer-1.5.1 plugin: [DEBUG] Opening new ssh session
2020/01/13 21:45:59 packer-1.5.1 plugin: [DEBUG] Starting remote scp process:  scp -vt /tmp
2020/01/13 21:45:59 packer-1.5.1 plugin: [DEBUG] Started SCP session, beginning transfers...
2020/01/13 21:45:59 packer-1.5.1 plugin: [DEBUG] Copying input data into temporary file so we can read the length
2020/01/13 21:45:59 packer-1.5.1 plugin: [DEBUG] scp: Uploading script_6940.sh: perms=C0644 size=162
2020/01/13 21:45:59 packer-1.5.1 plugin: [DEBUG] SCP session complete, closing stdin pipe.
2020/01/13 21:45:59 packer-1.5.1 plugin: [DEBUG] Waiting for SSH session to complete.
2020/01/13 21:45:59 packer-1.5.1 plugin: [DEBUG] scp stderr (length 31): Sink: C0644 162 script_6940.sh
2020/01/13 21:45:59 packer-1.5.1 plugin: [DEBUG] Opening new ssh session
2020/01/13 21:45:59 packer-1.5.1 plugin: [DEBUG] starting remote command: chmod 0755 /tmp/script_6940.sh
2020/01/13 21:45:59 [INFO] RPC client: Communicator ended with: 0
2020/01/13 21:45:59 [INFO] RPC endpoint: Communicator ended with: 0
2020/01/13 21:45:59 packer-1.5.1 plugin: [INFO] RPC endpoint: Communicator ended with: 0
2020/01/13 21:45:59 packer-1.5.1 plugin: [INFO] RPC client: Communicator ended with: 0
2020/01/13 21:45:59 packer-1.5.1 plugin: [DEBUG] Opening new ssh session
2020/01/13 21:45:59 packer-1.5.1 plugin: [DEBUG] starting remote command: chmod +x /tmp/script_6940.sh; PACKER_BUILDER_TYPE='qemu' PACKER_BUILD_NAME='qemu' PACKER_HTTP_IP='10.0.2.2'  /tmp/script_6940.sh
==> qemu: + herd start cow-store /mnt/
    qemu: Service cow-store has been started.
==> qemu: + guix system init /mnt/etc/config.scm /mnt/
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: downloading from https://ci.guix.gnu.org/nar/r0ckkwy1rd06acis07z3yxl69cy1lbar-docker-compose-1.5.2.tar.gz...
==> qemu:  docker-compose-1.5.2.tar.gz  104KiB  1.3MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/02iklp4swqs0ipxhg5x9b2shmj6b30h1-binutils-2.31.1...
==> qemu:  binutils-2.31.1  18.5MiB             2.4MiB/s 00:08 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/ypiyk8ngn79cz655jrl0hng37xv54yjr-file-5.33...
==> qemu:  file-5.33  354KiB                    2.1MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/a3p8zc23w5asxck5h4mswz4s8yl9s6pa-glibc-2.28-static...
==> qemu:  glibc-2.28-static  2.5MiB            2.4MiB/s 00:01 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/mn3ymm3f2r4xjqf8m9fgmadh6b8p6fvr-glibc-utf8-locales-2.28...
==> qemu:  glibc-utf8-locales-2.28  3.2MiB      2.3MiB/s 00:01 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/9ysmg2739n1ms84lx6hifncgc5l2hiy9-ld-wrapper-0...
==> qemu:  ld-wrapper-0  13KiB                  964KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/bv39scbljrai72yxbssxv284y65dqdb8-libyaml-0.1.7...
==> qemu:  libyaml-0.1.7  117KiB                1.2MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/7j3941iannrngdvgbclyxid12vds5w9i-make-4.2.1...
==> qemu:  make-4.2.1  600KiB                   2.5MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/4r04fsfcryy5h4v2h3g6lzlibafmmdjm-module-import...
==> qemu:  module-import  381B                   30KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/yl1vi61qmvvh83amwiwaik7s7jc03n5z-openssl-1.0.2p...
==> qemu:  openssl-1.0.2p  2.2MiB               2.4MiB/s 00:01 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/wc83b7yhng8kd937y9z3nq5xlyibshiv-module-import-compiled...
==> qemu:  module-import-compiled  258KiB       1.7MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/saxpxrr2xw6p426lbvis65bxdrxp1rb7-python-asn1crypto-0.24.0...
==> qemu:  python-asn1crypto-0.24.0  204KiB     1.5MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/ppxsyllapfmmyrmjkhs76hm39xmxk9jn-python-atomicwrites-1.1.5...
==> qemu:  python-atomicwrites-1.1.5  7KiB      788KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/awb7awycpf1crpd1kllvk6qzchd4g7lw-python-attrs-18.2.0...
==> qemu:  python-attrs-18.2.0  56KiB           1.2MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/ip7szxskwharcqbplmsh2iffd57bpdjm-python-attrs-bootstrap-17.4.0...
==> qemu:  python-attrs-bootstrap-17.4.0  46KiB 1.1MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/0vh1gng48sqn4xg5x86w71fk1ql12byn-python-certifi-2019.3.9...
==> qemu:  python-certifi-2019.3.9  153KiB      1.4MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/jxji6jap25y440qnjbmhk0fwmfchkilm-python-constantly-15.1.0...
==> qemu:  python-constantly-15.1.0  10KiB      1.3MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/3wlr8hj5ksnc7gz2bd00iy0hdbkfndyj-python-docker-py-1.10.6...
==> qemu:  python-docker-py-1.10.6  86KiB       1.6MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/ymgjp3b9gmawbjsv2aysq1mkjl4qbnqj-python-dockerpty-0.3.4...
==> qemu:  python-dockerpty-0.3.4  18KiB        2.2MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/p5163javj4kcl844d7kxralk6zwk4xab-python-docopt-0.6.2...
==> qemu:  python-docopt-0.6.2  21KiB           1.9MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/7j9806dw2wgnzs98kxz04gdl9frfsvk5-python-graphviz-0.8.4...
==> qemu:  python-graphviz-0.8.4  26KiB         2.2MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/lmkqib512vp0dyzdk573vnnlw06ij7v3-python-hyperlink-19.0.0...
==> qemu:  python-hyperlink-19.0.0  77KiB       1.3MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/wbmcygi22f7zgf1in3b2a8qli5zdihzd-python-hypothesis-3.70.3...
==> qemu:  python-hypothesis-3.70.3  377KiB     1.9MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/wml2r4wap5s203qabgid2mschjnbadqi-python-idna-2.8...
==> qemu:  python-idna-2.8  107KiB              1.2MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/d6bf9s23w3s0i998rwijw9gp9n8v6yy8-python-incremental-17.5.0...
==> qemu:  python-incremental-17.5.0  23KiB     2.3MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/2zkhp83gjs5fz6kcd6djxs2a78vac94r-python-ipaddress-1.0.22...
==> qemu:  python-ipaddress-1.0.22  36KiB       1.0MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/fsr4rrcsvpky7hrynm7wk86112y6vkp2-python-iso8601-0.1.12...
==> qemu:  python-iso8601-0.1.12  12KiB         1.0MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/qsdqpjif2cvbhhla7mgf3kxhxgayfk7z-python-mistune-0.8.4...
==> qemu:  python-mistune-0.8.4  26KiB          2.1MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/jqr6s3a6shyz9k62xf3wglbwpzqdh68d-python-mock-2.0.0...
==> qemu:  python-mock-2.0.0  128KiB            192KiB/s 00:01 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/69avl8x4f1l6b841gmkfr6wz1rjrws3c-python-more-itertools-4.3.0...
==> qemu:  python-more-itertools-4.3.0  108KiB  559KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/gdwjl2bjir5i678n9wp99rbpg6czanba-python-pluggy-0.7.1...
==> qemu:  python-pluggy-0.7.1  24KiB           1.5MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/6j9ndwg92pnsq1k6h9h9g6v7bj3k2dq8-python-py-1.5.4...
==> qemu:  python-py-1.5.4  165KiB              102KiB/s 00:02 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/1pqa818ds9idr8by2b66wws650a0ys29-python-pycparser-2.18...
==> qemu:  python-pycparser-2.18  202KiB        395KiB/s 00:01 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/2vxgn5ak25jw3c0yv867sf7x76pchpl6-python-pyhamcrest-1.9.0...
==> qemu:  python-pyhamcrest-1.9.0  43KiB       464KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/2wq42ngnbm02d7cmzmdy4n08bxkjhjql-python-pyopenssl-19.0.0...
==> qemu:  python-pyopenssl-19.0.0  106KiB      295KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/pcb12d6c1x5pvk3y95fs07jpg0y22r9b-python-pytest-runner-4.2...
==> qemu:  python-pytest-runner-4.2  8KiB       457KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/r06w5h2cvh6scvhkfxzpmkbx2bd1wsfj-python-setuptools-scm-3.1.0...
==> qemu:  python-setuptools-scm-3.1.0  33KiB   800KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/y6yj7nhcsv29hm0jqivaspv6hkhrl34h-python-six-1.11.0...
==> qemu:  python-six-1.11.0  18KiB             1.6MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/mj4lj0a71js3cwqszw1c5slhvdlm66jq-python-six-bootstrap-1.11.0...
==> qemu:  python-six-bootstrap-1.11.0  18KiB   896KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/im4h23r69lmdsr3c5k2qwy1gl5pgbl64-python-urllib3-1.24.1...
==> qemu:  python-urllib3-1.24.1  195KiB        402KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/pba3xzrkq2k4wgh3arif4xpkblr5qz2n-sqlite-3.24.0...
==> qemu:  sqlite-3.24.0  1.9MiB                604KiB/s 00:03 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/pmrn3q8lxbya7hq3rx9qpsclp8q7gv2v-zlib-1.2.11...
==> qemu:  zlib-1.2.11  91KiB                   787KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/b7fqhszxl02g6pfm3vw6b3cjz472qrly-python-3.7.0...
==> qemu:  python-3.7.0  20.6MiB                2.2MiB/s 00:09 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/n2p1zs14y89lwkg9da68y12pc10c6sw9-gcc-5.5.0...
==> qemu:  gcc-5.5.0  33.9MiB                   2.2MiB/s 00:15 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/0rci4xck4p24brsc7jszif24cyqsgz13-python-cffi-1.11.5...
==> qemu:  python-cffi-1.11.5  263KiB           1.7MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/8s9c5fz8m557pi1dvzyq14r98ybyha0v-python-cryptography-2.6.1...
==> qemu:  python-cryptography-2.6.1  477KiB    2.3MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/pnkd45qmg41mwyw2vlz9nba7fkvaif7z-python-pyrsistent-0.14.11...
==> qemu:  python-pyrsistent-0.14.11  109KiB    1.2MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/cs12wl7ni03lz55zicgh30rnqwhy74yv-python-pyyaml-3.13...
==> qemu:  python-pyyaml-3.13  192KiB           1.7MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/r68bi4640vm0s7zsgyk7shsag8ibl3nc-python-wrapper-3.7.0...
==> qemu:  python-wrapper-3.7.0  355B            26KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/6l0dl13s6raayw1bwaq41kiyip6lxf9j-python-zope-interface-4.6.0...
==> qemu:  python-zope-interface-4.6.0  253KiB  1.7MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/x5i0a2h8765d643sf6lyif99zg8vqhgp-python-coverage-4.4.1...
==> qemu:  python-coverage-4.4.1  257KiB        1.8MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/v807498hajws498aafsv9siwaymbyzdg-python-docutils-0.14...
==> qemu:  python-docutils-0.14  866KiB         2.4MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/1nzazs1bk3353k1bkazvy1svqqx0pid2-python-nose-1.3.7...
==> qemu:  python-nose-1.3.7  281KiB            1.8MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/z5jdssj8wsjf9jw3n66zhwfpb6rcmmh8-python-pbr-minimal-3.0.1...
==> qemu:  python-pbr-minimal-3.0.1  136KiB     1.4MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/la46z5pxiigargbapxp37wzi1if2wf8q-python-pygments-2.2.0...
==> qemu:  python-pygments-2.2.0  1.5MiB        2.3MiB/s 00:01 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/237yc11d54f6ai5n4pmncz3pzfn832gk-python-pysocks-1.6.8...
==> qemu:  python-pysocks-1.6.8  20KiB          750KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/11a4j1kx36nanldxr57w4bcgfi0wd9hd-python-m2r-0.2.1...
==> qemu:  python-m2r-0.2.1  19KiB              1.6MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/41bmzz5vpyjy2kpw2g5jjck4ga3av0c0-python-pytest-bootstrap-3.8.0...
==> qemu:  python-pytest-bootstrap-3.8.0  415KiB 2.3MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/pih5yfjp0g4rfllvdldz823qxc85bidj-python-automat-0.7.0...
==> qemu:  python-automat-0.7.0  57KiB          1.2MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/bysmdfs7sybwlbm50y8xd3423bma880c-python-pytest-3.8.0...
==> qemu:  python-pytest-3.8.0  415KiB          2.0MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/1vc093ha7psdr7jgzcm4fmiz5nw4i6gm-python-requests-2.7.0...
==> qemu:  python-requests-2.7.0  637KiB        2.1MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/rcbpyffrddh4drsl5ggv4vs88cbqs8g2-python-chardet-3.0.4...
==> qemu:  python-chardet-3.0.4  203KiB         1.3MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/h0jdxbg34kx2l6hln73viyp92faxg7wh-python-texttable-0.8.7...
==> qemu:  python-texttable-0.8.7  14KiB        930KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/103rdv50cxpld7v64w5jr53kw1pyvk5q-python-twisted-19.2.0...
==> qemu:  python-twisted-19.2.0  6.1MiB        2.4MiB/s 00:03 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/ir9hrv1zysq2wvavryr89ggyzw1nyhjr-python-websocket-client-0.54.0...
==> qemu:  python-websocket-client-0.54.0  60KiB 1.4MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/va4hgdfx8zbqzyah7vgqkm25g60p8lf3-python-jsonschema-3.0.1...
==> qemu:  python-jsonschema-3.0.1  103KiB      1.2MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: building /gnu/store/kzhm61svm3qgj92a0ab0vsvl18460fbs-docker-compose-1.5.2.drv...
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/gfprsx2m62cvqbh7ysc9ay9slhijvmal-module-import...
==> qemu:  module-import  333B                   16KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/ssjmpd8wsng0ap41dp83wp6qsih0047j-font-alias-1.0.3.tar.bz2...
==> qemu:  font-alias-1.0.3.tar.bz2  100KiB     1.2MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/42gh437vhsdj2vklpsyxjjg1xr5c296k-module-import-compiled...
==> qemu:  module-import-compiled  45KiB        1.5MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/iajdc66acpw2lc072ad7g3bcxrk1z2as-module-import-compiled...
==> qemu:  module-import-compiled  247KiB       1.8MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: building /gnu/store/ckbqc7dyprlw0nvkxf0yad1ygis3farz-font-alias-1.0.3.tar.xz.drv...
==> qemu: building /gnu/store/nvkld30jhhyklhwjwskyp5nq3kq33660-font-alias-1.0.3.drv...
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: downloading from https://ci.guix.gnu.org/nar/rvr2iacg6y5dl37rwnyk2sb4ihzqjmmw-sessreg-1.1.1.tar.bz2...
==> qemu:  sessreg-1.1.1.tar.bz2  133KiB        1.3MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/30ss9cl431rrw47pbmwnqs99m2w3i5vh-util-macros-1.19.2...
==> qemu:  util-macros-1.19.2  18KiB            1.2MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/hdwn6fbbii6907ibvyax92cxzam0hrhx-xorgproto-2018.4...
==> qemu:  xorgproto-2018.4  299KiB             1.9MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: building /gnu/store/q1dphpp73l82niry70wd8qlacwqisw3h-sessreg-1.1.1.drv...
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: The following derivations will be built:
==> qemu:    /gnu/store/m83szyv06jnf6dnywa01cqrvl0zqcg6w-raw-initrd.drv
==> qemu:    /gnu/store/qnw441hl80ba0bqpxhgm3kwyr62cx9yg-etc.drv
==> qemu:    /gnu/store/8sjafiyhg3j95s597c6icb41i17zmz8w-boot.drv
==> qemu:    /gnu/store/g6zfsr2v60n4yqfn81dfm30azswfiyxp-activate.drv
==> qemu:    /gnu/store/0vdwgsazjdlvjrxi5q26mw4vjx08ay54-activate-service.drv
==> qemu:    /gnu/store/42l0vclbvf2ps3rks1yg49s2yqy6lvdk-activate-service.drv
==> qemu:    /gnu/store/ya57f5gv9x6qps9b68gf59v7569nahyq-acl.drv
==> qemu:    /gnu/store/75x7c6wi1aw111whxi1bd3al35pwzzpc-activate-service.drv
==> qemu:    /gnu/store/a15lcvjp6ki24r91jxcl7xh98d81ngb5-activate-service.drv
==> qemu:    /gnu/store/hp79bv62kwcbrqrzraiknxb6qqzba3fm-activate-service.drv
==> qemu:    /gnu/store/jvnkxhpxkksi0mqd7pwrbna0g032vdr2-activate-service.drv
==> qemu:    /gnu/store/q4m73gfp6k4l8dw2jvy269lflwkfz8mn-shepherd.conf.drv
==> qemu:    /gnu/store/02s2snkpwb67z6x9fsf3qajfslq6igb6-shepherd-file-system--sys-fs-cgroup-perf_event.scm.drv
==> qemu:    /gnu/store/04a4y8d1x4if9agry7h3ha1v1mnza086-shepherd-guix-daemon.scm.drv
==> qemu:    /gnu/store/25p1l34b9cab9if4a0fzw1m6745y07hq-shepherd-host-name.scm.drv
==> qemu:    /gnu/store/43hnab3dv2mlmb7hph9dyfa110blvlr5-shepherd-udev.scm.drv
==> qemu:    /gnu/store/xxxcl2b7vswy2qypgsjd1jzlalyhgprw-udev.conf.drv
==> qemu:    /gnu/store/xijjg745hd741fswaa4a1gdnjhascpk7-udev-rules.drv
==> qemu:    /gnu/store/4a83apv59kx7vdnrqlzvy8zh3bq8qa7p-shepherd-elogind.scm.drv
==> qemu:    /gnu/store/4d9zgnmbhajnrrsppk5cnw4hw52fjw6y-shepherd-dockerd.scm.drv
==> qemu:    /gnu/store/6mq4cnl4sin9chhkgxjqy7k79g7478y9-shepherd-file-system--sys-fs-cgroup-elogind.scm.drv
==> qemu:    /gnu/store/7jm0xgp9yn8953c5ah3iam9js1yz3q8f-shepherd-user-file-systems.scm.drv
==> qemu:    /gnu/store/an5sy5m49yhfgddmjv76y6zwln2w4xw0-shepherd-user-homes.scm.drv
==> qemu:    /gnu/store/fddny2wjwmssnlwd7pw03xzcn9qcypxk-shepherd-ssh-daemon.scm.drv
==> qemu:    /gnu/store/fqi8yv90pil045a1clgm7lfqpx3cnjwr-shepherd-file-system--sys-fs-cgroup-memory.scm.drv
==> qemu:    /gnu/store/ghrim35709jmvffdwzjh6k8m2nqn4kj2-shepherd-file-system--sys-fs-cgroup-cpuset.scm.drv
==> qemu:    /gnu/store/jr6wvidvw3bn88s7vbz830rbhcpk4ngf-shepherd-file-systems.scm.drv
==> qemu:    /gnu/store/k5xi8lvvi6xymyamk1462ymdk2jb36ag-shepherd-file-system--run-user.scm.drv
==> qemu:    /gnu/store/m2vrxvyk2lllnnbwi77hnglmxs8xkhja-shepherd-file-system--run-systemd.scm.drv
==> qemu:    /gnu/store/pz6qhpj0ac28cvdhbaw18gyaq0bb0y2b-shepherd-file-system--sys-fs-cgroup-cpu.scm.drv
==> qemu:    /gnu/store/s6vl198r9nj3i40zmklnwdrs4kpxpigq-shepherd-file-system--sys-fs-cgroup.scm.drv
==> qemu:    /gnu/store/sjcbfpa07wv7r1rcypvf0cfqhdr8sz3c-shepherd-containerd.scm.drv
==> qemu:    /gnu/store/vfz9l2iaazyi852iz0wsgh8d0dwk2k4p-shepherd-xorg-server-xorg-server-vt7.scm.drv
==> qemu:    /gnu/store/689l58zzgfzxzp8psk09zkr47g82yfiy-slim.cfg.drv
==> qemu:    /gnu/store/9wbgxh178nxscbifxvbmvsihjika7bib-startx.drv
==> qemu:    /gnu/store/4c4xpyr10qkprlh8agasb8pqz2a74c0k-xinitrc.drv
==> qemu:    /gnu/store/b0l8f8m1a547pxr741ls6fsliqdh9yvr-X-wrapper.drv
==> qemu:    /gnu/store/pjclnlvry8zq3pndkc7iybdlr4lkcsyr-xorg.conf.d.drv
==> qemu:    /gnu/store/hk55x2a2z2p2bjn47hl6akbiicgbhrmf-xserver.conf.drv
==> qemu:    /gnu/store/xngrw65hp460k4s9pc1kgac8blwpmy7l-shepherd-file-system--sys-fs-cgroup-blkio.scm.drv
==> qemu:    /gnu/store/y7i5bz68c44h9w2yf9v6w6sj6pglxq1y-shepherd-file-system--sys-fs-cgroup-cpuacct.scm.drv
==> qemu:    /gnu/store/yr5bazk4bpdlkx5gdvzqrkf50y3lg1ww-shepherd-file-system--sys-fs-cgroup-freezer.scm.drv
==> qemu:    /gnu/store/z2zg092mnfkqpbmgp6a8izd6vhviyr5q-shepherd-file-system--sys-fs-cgroup-devices.scm.drv
==> qemu:    /gnu/store/pzqf4l8gf6fd1y6ycx9kf55givmydjf4-parameters.drv
==> qemu:    /gnu/store/z1kq891k0y67y2hbsf636ngm3yp59mly-pam.d.drv
==> qemu:    /gnu/store/sis81fv3b3b78ap0ar5k29wym7ms6vv7-shells.drv
==> qemu:    /gnu/store/hap79byp5aaqf3zn4jiwyawa8rmrz3i9-slock.drv
==> qemu:    /gnu/store/3lp0bbsg2nvzysv40zdn1cva41v9wd13-slim.drv
==> qemu:    /gnu/store/29qgpc3pqnfvjkdmbw1nqlyxg6anf5vs-sshd.drv
==> qemu:    /gnu/store/zbjy4drk136flipakqdny3k7sv4w8ss9-profile.drv
==> qemu:    /gnu/store/jgwzgmrakmi5sn9n99mbhs1zjx08rxzm-init.drv
==> qemu:    /gnu/store/72pl4szaqp7xcjp69zm01681n0l3rj60-bootloader-installer.drv
==> qemu:    /gnu/store/kjynahmw3xs58ydi3smda6468my733hy-grub.cfg.drv
==> qemu:    /gnu/store/a4x92as8z25mmf63zm66sfx78ck3qqp2-system.drv
==> qemu: 790.5 MB will be downloaded:
==> qemu:    /gnu/store/vibh9a643iwx8n2gwr6jv1h70z0rqda6-module-import-compiled
==> qemu:    /gnu/store/sny2f9yn9839hrmg7w6f0qinsalv1k49-e2fsck-static-1.44.5
==> qemu:    /gnu/store/p8adpg23ck7bq6im6f3467jc0grq10f1-linux-modules
==> qemu:    /gnu/store/3in3pbr0a66h4nkvhdjklcg8fp2z4rrb-module-import-compiled
==> qemu:    /gnu/store/4gss8imj1mld58fznl7ssl48w7x831dn-module-import-compiled
==> qemu:    /gnu/store/gza8djv7fmxh60pdh8jkkjj7shy3mnsz-module-import-compiled
==> qemu:    /gnu/store/mfpdliqvvfawsywqb5nqlrql5arwfhij-perl-net-ssleay-1.85
==> qemu:    /gnu/store/1fl9vk8fpafkws4qyy25vcdfpybxyh1k-guile-2.0.14
==> qemu:    /gnu/store/d84nbv6r94i8ixvz7f6g22pwdyvnnx6g-module-import
==> qemu:    /gnu/store/a6xzhg5nfq1ys1k20qxj94sky80djizh-apr-1.6.5
==> qemu:    /gnu/store/ws6van99y1jsv473fmz0zlh5yp2y3xms-serf-1.3.9
==> qemu:    /gnu/store/f2v1rgazmvd6s1lk4qshs17qwamjxi4y-apr-util-1.6.1
==> qemu:    /gnu/store/rjivach5z5hgv6yvcr3kranaz7za4jg1-subversion-1.10.4
==> qemu:    /gnu/store/2zl6wcliyd2ny8w73h77vk8bn4x91b7x-tk-8.6.8
==> qemu:    /gnu/store/2gf7xac2392x5qdzhmpn5jfl0kjxr0zd-curl-7.63.0
==> qemu:    /gnu/store/g87hamjyipk1j6dfq5pjfzfnfb64spbv-python2-2.7.15
==> qemu:    /gnu/store/mq5md7nsym5nfc5ysf3m6p3bch5k60hi-git-2.21.0-credential-netrc
==> qemu:    /gnu/store/s8xl1rbddhig7hc2bcyv5dk7zignasby-git-2.21.0-gui
==> qemu:    /gnu/store/74yiacy47iaf5fdfwj2r9rh4pj9dpvxm-git-2.21.0
==> qemu:    /gnu/store/k8bv360djwyl4vpdxfia2arqqk9yrf63-git-2.21.0-send-email
==> qemu:    /gnu/store/sn9c7vphwfwk0mv8dr92ak6q1nihfn67-git-2.21.0-subtree
==> qemu:    /gnu/store/v94cd5lnnnkramn3mfd5bfvjzlswhj1g-git-2.21.0-svn
==> qemu:    /gnu/store/0v8kkhpk4qvmyab0wmg9wa7w8xynig01-slock-1.4
==> qemu:    /gnu/store/fpyvxglsqp63m72176wm1wzadzjx81ah-docker-cli-18.09.5
==> qemu:    /gnu/store/fh4h7n1l7v3vn6rsx8sy76qnr3v4w2z2-stow-2.2.2
==> qemu:    /gnu/store/b5hkkgk2lmx5n0gipbx93jh6pxbzzdz6-htop-2.2.0
==> qemu:    /gnu/store/xs664cv7rilqw3kjk1nbzdqzcx17ka2q-mc-4.8.22
==> qemu:    /gnu/store/xpmgf3qa7ygz89829275qv3af5l0m790-vim-8.1.0644
==> qemu:    /gnu/store/5dnkbi6zchkisgwx2914k0iafllcvv93-freetype-2.9.1
==> qemu:    /gnu/store/sw8vw31fnmfrjhb32sxvvy0yxrx9s1hc-mkfontscale-1.2.1
==> qemu:    /gnu/store/3rgvdjy72vqsv45f85b0phpirnzxb4w2-mkfontdir-1.0.7
==> qemu:    /gnu/store/94r26r4vbrqd1f4qahzikzhdkzv2126l-module-import-compiled
==> qemu:    /gnu/store/vqv0ij81wyhwpnz09crdrb6glsfdp9l5-module-import-compiled
==> qemu:    /gnu/store/66jfnfgca7yi6xmpw6ax86cldvr016ia-fontconfig-2.13.1
==> qemu:    /gnu/store/ws35c3vmsfgacwhx88p6kcl9iv8dbr89-xterm-335
==> qemu:    /gnu/store/2rcxv756nbqhqfcwddfncyv723bkc913-libxft-2.3.2
==> qemu:    /gnu/store/fipxg4w7x8hw7g5m1wn04l1np7qil1k5-desktop-file-utils-0.23
==> qemu:    /gnu/store/ism9qw00d9gdhlhiankg72cik02bpnfm-module-import-compiled
==> qemu:    /gnu/store/hq0mz4p13znlb7zazzgvm9hf2j3vqsia-guile-gdbm-ffi-20120209.fa1d5b6
==> qemu:    /gnu/store/dlm7i6w4z5rfigf10l26r5648isalf2r-module-import-compiled
==> qemu:    /gnu/store/4qvhdr4d4wzcdid2hkg5wanw1269nnkx-module-import
==> qemu:    /gnu/store/vcs2apb493vc8a7hdx7vy2f7awniy3fq-ghc-quickcheck-2.11.3
==> qemu:    /gnu/store/p29vsm3734m3v6vsqnrba8i3mxhnkv0m-ghc-primitive-0.6.3.0
==> qemu:    /gnu/store/q2qyzl8g857vzgvvrg955135yfja98pr-ghc-random-1.1
==> qemu:    /gnu/store/gq7kc9d6gkgi418yndjp37mjjwmcxkr5-ghc-tf-random-0.5
==> qemu:    /gnu/store/89nj546vgyll98wx2afv9fhwghianvxh-ghc-old-locale-1.0.0.7
==> qemu:    /gnu/store/acrqx1ybs0kqi8d6m6ihl5dbiircdy73-ghc-dlist-0.8.0.4
==> qemu:    /gnu/store/4g2vbk116dymqmlgynfxw2k0l93zjjwl-ghc-data-default-instances-dlist-0.0.1
==> qemu:    /gnu/store/g0ygjxkfwplq5j38ab0ph92lhjqdfwxc-ghc-x11-1.9
==> qemu:    /gnu/store/w2mp7g391pqf4gqk8iyz3b6wx8jpc6dg-ghc-data-default-instances-old-locale-0.0.1
==> qemu:    /gnu/store/g1gbiqv5i1rd2l9qg8i06fzpi2a4hql9-ghc-data-default-instances-containers-0.0.1
==> qemu:    /gnu/store/m4iwzakfh4cixfiyln7p3kglj6a2rvj5-ghc-data-default-instances-base-0.1.0.1
==> qemu:    /gnu/store/kqrv5hnnbnz7zrf0gafy9zps22bddcr8-ghc-data-default-0.7.1.1
==> qemu:    /gnu/store/racqrny38sbxh3763sjwpdkjfp09qva7-ghc-data-default-class-0.1.2.0
==> qemu:    /gnu/store/49b20r5vfqbvf1vmwgqqpqrdq2yv4s1i-ghc-call-stack-0.1.0
==> qemu:    /gnu/store/15qjvgjccks5l4balcrkzzjjr04f9jrl-ghc-syb-0.7
==> qemu:    /gnu/store/imw59brgzdgh4kyj16m8r2b0k6s2zvcw-ghc-hunit-1.6.0.0
==> qemu:    /gnu/store/m264s752maw1vw99arz90v4hz3kqvrbd-ghc-chasingbottoms-1.3.1.4
==> qemu:    /gnu/store/fd6a49i0qz7mmc9d91w7fxawbg4rm0kx-ghc-unordered-containers-0.2.9.0
==> qemu:    /gnu/store/ifpcg5h7hwnfq625lk8lak0sd2269ipm-ghc-test-framework-hunit-0.3.0.2
==> qemu:    /gnu/store/phxf2ymqq92wgp56zzqxxsi0rjdpc3d9-ghc-extensible-exceptions-0.1.1.4
==> qemu:    /gnu/store/lnszn9119wbv5d5bb4vml8gwzad2vl9q-ghc-regex-posix-0.95.2
==> qemu:    /gnu/store/zyina77x1xv266jdcf4x51r22xyzy8bl-ghc-ansi-wl-pprint-0.6.8.2
==> qemu:    /gnu/store/6rajabyy057433mafcqgyaifl871s5sy-ghc-hashable-1.2.7.0
==> qemu:    /gnu/store/fxv9asadnkvj3y7qddpl0nbwz4qay5hd-ghc-semigroups-bootstrap-0.18.5
==> qemu:    /gnu/store/vijqdaqa6yn1fgqgby28vhx1g53sbgc6-ghc-xml-1.3.14
==> qemu:    /gnu/store/4yfnp7f4n394fcs781jpi3hls7gnnkng-ghc-hostname-1.0
==> qemu:    /gnu/store/c8wflj0d6sd7a0n09wqsc8628raqg3zf-ghc-colour-2.3.4
==> qemu:    /gnu/store/bv9yh8d4al6yl63f4xxm8x2if9xav18n-ghc-libxml-0.1.1
==> qemu:    /gnu/store/fzbngx2qk8axmfdql6g2g0yz7r69q8m4-ghc-test-framework-0.8.2.0
==> qemu:    /gnu/store/1fhv3cflybqza74awnngvfz65z2xd82z-ghc-ansi-terminal-0.8.0.4
==> qemu:    /gnu/store/dcig28c6xladzv710mv55b2y2gxsmds1-ghc-text-1.2.3.0
==> qemu:    /gnu/store/45fzv71awz3yyj6dr1jxm9vyxbhmni33-ghc-regex-base-0.93.2
==> qemu:    /gnu/store/d3agd211v2shwiv8i0f9sdmvdyaymksg-ghc-test-framework-quickcheck2-0.3.0.4
==> qemu:    /gnu/store/cvx8k30c62hhc25a2fbw1ma3ygqg7231-ghc-hashable-bootstrap-1.2.7.0
==> qemu:    /gnu/store/04pbh9c0bgq6nv33qkanqzlpfahnsr29-ghc-nats-bootstrap-1.1.2
==> qemu:    /gnu/store/hjyg8p670s5r3dxhg2h598yfm58idl61-ghc-unordered-containers-bootstrap-0.2.9.0
==> qemu:    /gnu/store/mz0q51pv3w07nyqz7mb4vbnd263jbz76-ghc-tagged-0.8.5
==> qemu:    /gnu/store/anwhb94j7r0zmqapcxa4y1z0xs302li9-ghc-transformers-compat-0.6.2
==> qemu:    /gnu/store/v8wdm56gvaqdrir1irwiknqs34snzlh0-ghc-nats-1.1.2
==> qemu:    /gnu/store/6svbc5varmfqmx1dxh92dbrgv6i5ci3g-ghc-semigroups-0.18.5
==> qemu:    /gnu/store/l68zni4hilzwg9qawr35r6j5jpn9dkz4-ghc-setlocale-1.0.0.8
==> qemu:    /gnu/store/2pfcbbfvf0a5kszyz2157zx94r3spnlz-ghc-utf8-string-1.0.1.1
==> qemu:    /gnu/store/qk954mmxn7d5h9wji3vwkz23padbqybk-xmonad-0.15
==> qemu:    /gnu/store/cl42c73h609bp2gy92qkh8q56spnnl2n-python-3.7.0
==> qemu:    /gnu/store/g30znz9vwkvi23k41dgallfg85sj65hp-python-wrapper-3.7.0
==> qemu:    /gnu/store/zqfbh4whwrzzhqa811i43dggyqh2lmwx-libevent-2.1.8
==> qemu:    /gnu/store/wcaf3lmq00l9jk9s2a2s2qgh4l9m643c-tmux-2.9
==> qemu:    /gnu/store/kwvqrcamlyd2yxlwqz0g16zbya7w7llh-groupadd
==> qemu:    /gnu/store/03q7sclg4bbppyn9mcdmv9r33x76q35i-userdel
==> qemu:    /gnu/store/dnbcdcnv6d1w1inbiv8cza331ajq0p5w-groupmod
==> qemu:    /gnu/store/xi31za9zfcwgyqj7ik8a16rbx7svr6mr-login
==> qemu:    /gnu/store/jq29v92dca0c80w2frxxmznn75ix6y7v-polkit-1
==> qemu:    /gnu/store/3zpj9qfx91qb5771h5aj8g8mlzninakn-other
==> qemu:    /gnu/store/135h76sg9zs42wxfij3wr558xsxjrv85-passwd
==> qemu:    /gnu/store/1ngai7g0zmhagvisb55gg2b8r6ls9xwb-groupdel
==> qemu:    /gnu/store/1xidl7df7zkg7m9vccf9di800c6h931f-su
==> qemu:    /gnu/store/1cjqwlajkbjiy9b6csp1wh3sxzynym7f-useradd
==> qemu:    /gnu/store/rc8lxf7k8dfj0d8bli9ss88ddwcig3gz-usermod
==> qemu:    /gnu/store/76fwrfny9ynndp4ahv0rqs0szh2jsm1n-sudo
==> qemu:    /gnu/store/4nllgam4pfr02bim0v7dx4kr2gvn9adh-etc-polkit-1
==> qemu:    /gnu/store/pv9sk8m7g3hlk26wscxz9r2p930mdzyd-dbus-configuration
==> qemu:    /gnu/store/55m57xamf980iymccl9k26k4an0ynf7d-libpng-1.6.34
==> qemu:    /gnu/store/gb0zcscw64icm9ccraz7k2x5sqz1yjnl-slim-1.3.6
==> qemu:    /gnu/store/yimnqfs9v6qf2k3i3psm1cv0dhm54qg3-xf86-video-mach64-6.9.6
==> qemu:    /gnu/store/qcbkfqn28msw3x344b90gsd5fjribnah-xf86-input-mouse-1.9.3
==> qemu:    /gnu/store/w2xryn7vr8vd6mddqln9jhmmdc5x6y0n-xf86-video-vesa-2.4.0
==> qemu:    /gnu/store/6njzy2lv87fr9a9ay5cp205bqfssva74-xf86-video-fbdev-0.5.0
==> qemu:    /gnu/store/5z84fs6jcg2am3khnsq37zyi2mf6mj1d-xf86-input-synaptics-1.9.1
==> qemu:    /gnu/store/v454ijfrmyb0cd1a74mmz2yk03il8xsm-xf86-video-cirrus-1.5.3
==> qemu:    /gnu/store/9cq0g9bhq2g1byjrgra93lxd6334dl6l-xf86-input-evdev-2.10.6
==> qemu:    /gnu/store/3h77x4bxb0lj876sy3i77l39ixc060yl-xf86-video-sis-0.10.9
==> qemu:    /gnu/store/bgmya5sgd8q9vvj0wzrngmgx74ig5dkf-xf86-video-nv-2.1.21
==> qemu:    /gnu/store/4ym8gxpi1qbc7zsp8l3829j69l05i73r-libxfont-2.0.3
==> qemu:    /gnu/store/dxir0rz1q9cmnjkbjdjq41gi0c7j1sbn-libepoxy-1.5.3
==> qemu:    /gnu/store/y3q9sndv8ps8n9qikqvlf614bk4brvhj-xorg-server-1.20.4
==> qemu:    /gnu/store/rxqxn0mxmg0v2xg5nvpaidvpj3d1kxb7-mesa-18.3.5
==> qemu:    /gnu/store/nrqs5fh2lizi306inqkwww4qzrl1b6m2-xf86-input-keyboard-1.9.0
==> qemu:    /gnu/store/zmjb8crg4cnnia1j3bm10ad6nihlxvhy-xf86-video-intel-2.99.917-13.6afed33
==> qemu:    /gnu/store/v4w28c8hyfccgnz1bdk6l4j0bzlv0p02-xf86-video-ati-19.0.1
==> qemu:    /gnu/store/b82nm5k163ci1bbym1gwl1rfkvs766l8-xf86-video-amdgpu-19.0.1
==> qemu:    /gnu/store/f123ql830l3jv00mqwr70s7lpg7zcm01-python-3.7.0-tk
==> qemu:    /gnu/store/qk3fjvah3z5zcazljckdxijmacxcq15m-ghostscript-with-cups-9.26
==> qemu:    /gnu/store/la9b2gnqmrq4ziidyc3q1p9ngl5wx8y7-libjpeg-turbo-2.0.2
==> qemu:    /gnu/store/2dp5d62h4k5hkpm54y8vcp19ypf5rk4d-libjpeg-turbo-2.0.1
==> qemu:    /gnu/store/hfk3fziw8jkkbji36c8xm3363kwsydx9-qpdf-8.4.0
==> qemu:    /gnu/store/z4gd3w1nz63gwjlqrz3nc9q885i34fp0-cairo-1.16.0
==> qemu:    /gnu/store/afj4p3lv36nlcy9svyr9xsqqp3cj7jmq-lcms-2.9
==> qemu:    /gnu/store/aknz2a8plic9dzcai169c4gyhbh80k3a-openjpeg-2.3.1
==> qemu:    /gnu/store/w5qqbhz0vzbhn7g69p4icb9wqgfp10ax-lcms-2.9
==> qemu:    /gnu/store/37lzzqbmk496g8ckkkgvxngc1bjibzck-openjpeg-2.3.0
==> qemu:    /gnu/store/yw5dc2w8ky7cxnd2s7f6p91yinvdrbnb-poppler-0.72.0
==> qemu:    /gnu/store/1a7iqxqik50sdwgpyqmr2qx0dmvlw9ir-cups-filters-1.22.3
==> qemu:    /gnu/store/ns7ndzw2rzl0zxbblq0dhz8bnbirxml1-cups-2.2.11
==> qemu:    /gnu/store/fnna82d4mjfw8qmnr5l0g3rlr07jw134-gdk-pixbuf-2.38.1
==> qemu:    /gnu/store/a27pvkbi2wc7772zjar1adncxd7lr759-pango-1.42.4
==> qemu:    /gnu/store/w946jk6bl2riqpfcklf4bbs7haqmg8fv-cairo-1.16.0
==> qemu:    /gnu/store/k641x9mjzjl6flyj9q8qpv7nalhmi1gl-harfbuzz-2.2.0
==> qemu:    /gnu/store/njs2wakckxadc3iqnnrhvkkf2qr3v1zk-librsvg-2.40.20
==> qemu:    /gnu/store/6m8mfngzi0hmjgi3hfnszyhis8i0vg4c-gdk-pixbuf+svg-2.38.1
==> qemu:    /gnu/store/i8x3yn47chgnmzwdbnj5s3knla405qvi-gtk+-3.24.7
==> qemu:    /gnu/store/0gb1vga5r8amk1m2an3dvwj51bzghpam-libwacom-0.33
==> qemu:    /gnu/store/3xnlx4k5gid5ak9ip7zh35wqwnbq1lw5-libinput-1.13.0
==> qemu:    /gnu/store/7jkkaaqxv4rwn8gd2ish24nis0xmacbx-xf86-input-libinput-0.28.2
==> qemu:    /gnu/store/ysdmjqlmzvzkdhndg3bayz4540jyhdik-xf86-video-nouveau-1.0.16
==> qemu:    /gnu/store/2wa88yyr6vlmyhqzb0js9wfvfnfw7c3f-font-adobe75dpi-1.0.3
==> qemu:    /gnu/store/sm8dqm4wgpac90zsv3y8li378qwc16pg-font-misc-misc-1.1.2
==> qemu:    /gnu/store/slhclazbx16ij6kyggz667sycmyy9iii-llvm-7.0.1
==> qemu:    /gnu/store/51gbgg46021b39q80bmpqbjxcj7bdbjl-xkbcomp-1.4.2
==> qemu:    /gnu/store/vgi74z3sa5dpr21h2bhvb0x80pyipnf1-guix-artwork-b975164-checkout
==> qemu:    /gnu/store/9dfyaar5gh836zdcbn4karyfdj8wlc1h-containerd-1.2.5
==> qemu:    /gnu/store/3ab089926gd3vlhalxnxxmxnm8w2dd41-sshd_config
==> qemu:    /gnu/store/57daq0hkwvmwx4asiy669cmln868brfm-python2-2.7.15
==> qemu:    /gnu/store/a6s12f4hksf1xac2b1bm1605h95704ps-python2-2.7.15-tk
==> qemu:    /gnu/store/4pkq5lviw4v1y4hl5d09j9anjkr9hxc9-cyrus-sasl-2.1.27
==> qemu:    /gnu/store/0j6sz3bk4chqc8pgfv0fsn6byarwq4df-openldap-2.4.46
==> qemu:    /gnu/store/9qsb09spvhxz9xr21ix1bz8vg3gmywrv-curl-7.64.0-doc
==> qemu:    /gnu/store/kwiriz8g92zwymsgv7i5rm17x9l9ghzy-curl-7.64.0
==> qemu:    /gnu/store/9gb61vpj0nrzfiv70di3a24fsiflqlzq-docker-18.09.5
==> qemu:    /gnu/store/cs0kh9afgbmyjds07icld4y7knd0bdbg-docker-libnetwork-cmd-proxy-18.09-1.4725f21
==> qemu:    /gnu/store/lhlb4n875cy4b3hnr6rad3z35b47lw80-guile-git-0.2.0
==> qemu:    /gnu/store/5p1bhbwii6sgms5miv2jhd3mfram1afm-guile-sqlite3-0.1.0
==> qemu:    /gnu/store/z3d8k55x3hg81i05094dffrcbhr35qh2-guix-1.0.1
==> qemu:    /gnu/store/5x5nhpmc0bxpm0x2r3h6qxlhxm5x0qpb-module-import
==> qemu:    /gnu/store/lzq3hjr4kbvy1dy6fymqgsi18sfzsiza-module-import-compiled
==> qemu:    /gnu/store/5dzq0p9kmf9qdz77i9i76ljv5gqrn5cf-utf8proc-2.1.1
==> qemu:    /gnu/store/r57pxyj2sfjmb41jfsdi41fs4q545s51-tcl-8.6.8
==> qemu:    /gnu/store/0wqgmqnlpr8pzvx4skqdgczym8384fbb-shishi-1.0.2
==> qemu:    /gnu/store/hw1mv9vjnxrvf3nwapwp9jzkg83f4709-libidn-1.35
==> qemu:    /gnu/store/ldnlqls7rnir0ls986xdjp75w2mp3azj-gss-1.0.3
==> qemu:    /gnu/store/p2g04v2h8zxdjhl6ywy2mickvca2h9gi-nghttp2-1.35.1-lib
==> qemu:    /gnu/store/ng3138glamspdvaqlyrv5w7fim9cjbpz-perl-cgi-4.38
==> qemu:    /gnu/store/rlydlffpf0935mp6lj32xrbmjz51vwm7-perl-html-parser-3.72
==> qemu:    /gnu/store/4g7gp4ls77wf0z0af4z3vvgric0xm8y8-perl-authen-sasl-2.16
==> qemu:    /gnu/store/9jcpadjqiyf8ifkdbf8hl2p7v2ksca32-perl-gssapi-0.28
==> qemu:    /gnu/store/dsckmjfiqy49ir74zn17s8ikfzy59vj6-perl-net-smtp-ssl-1.04
==> qemu:    /gnu/store/m8v7r24hjp480swla9bkavfgb9557lr5-perl-uri-1.73
==> qemu:    /gnu/store/nhliv3vbna3ij3irha7wzm1zgmshjvv4-perl-io-socket-ssl-2.038
==> qemu:    /gnu/store/xhzgdgkrp51k3ig8swi787l3bl9v7n5y-perl-digest-hmac-1.03
==> qemu:    /gnu/store/kiy0qabiryv899i6iljdq76s8l0lg5ax-perl-term-readkey-2.37
==> qemu:    /gnu/store/mbbj3j86amqls868hip0l85q9lx8gbcn-libxrandr-1.5.1
==> qemu:    /gnu/store/ypiv8dj4lkvsnm82s639h18l87frrh5g-gcc-6.5.0-lib
==> qemu:    /gnu/store/g6ksrpfkaxvij07dgcgm0h8p47qhkviz-check-0.12.0
==> qemu:    /gnu/store/rvr69vbggcy12qiayy20yf49vcgh11zj-unzip-6.0
==> qemu:    /gnu/store/2k67pvrdq9hygg2ysgflk94jhbnc9s9g-tcsh-6.20.00
==> qemu:    /gnu/store/lfc9rq12c8001kl584any2pma80gr9x3-libfontenc-1.1.4
==> qemu:    /gnu/store/1y0s9pb7ajsbpgag8yl3hnq4a88qlimr-luit-1.1.1
==> qemu:    /gnu/store/92dr0240g8a9rj2jj3j59dnf59knwzva-libxpm-3.5.12
==> qemu:    /gnu/store/vjaw6bilzkjrvkd17mjailwlan336nm8-libxaw-1.0.13
==> qemu:    /gnu/store/8v1sn5ns7r5n02aip0b0ypyyzb2y1i1a-ghc-8.4.3
==> qemu:    /gnu/store/mcd9pz6miv4wsrwlzam18akn3nix0ysa-libxinerama-1.1.4
==> qemu:    /gnu/store/sfn7fcmii7gbpjh2f7wzv8l04iy4z2d1-libpthread-stubs-0.4
==> qemu:    /gnu/store/wq2g1y1vc698bmkpxmzs64hpn4pijpb9-libxscrnsaver-1.2.3
==> qemu:    /gnu/store/fc4vryjzsawrmi31h2m421pk831gvfa4-dbus-system-services
==> qemu:    /gnu/store/nd6vh6j8gqipzikyrr2jimjqz0hwv6vh-elogind-wrapper
==> qemu:    /gnu/store/kzpq7nq5j1d5nqlwmsmayhrl0zjwyvy5-libjpeg-9c
==> qemu:    /gnu/store/1wgjfp47da8zm7ap9n0sl6wfn295qvcw-libxi-1.7.9
==> qemu:    /gnu/store/nfh4f418c0yh039dibh02saisgfh23ja-libevdev-1.5.9
==> qemu:    /gnu/store/ylls6kywcp0x9xayx701wfnk6qjp1hha-mtdev-1.1.5
==> qemu:    /gnu/store/0cnnj7kvggda2p12mlmxawz3ni9w5rwa-xcb-util-0.4.0
==> qemu:    /gnu/store/3nzwxm8jch3hhbgk8rvp2vmhc3396pjm-xcb-util-keysyms-0.4.0
==> qemu:    /gnu/store/4rj0ijwb70l0g8wyjdlyiml8gxvz6d1d-xcb-util-image-0.4.0
==> qemu:    /gnu/store/ghrqi1xiy1xs2icywg8bbsn8cadvk1v8-xcb-util-renderutil-0.3.9
==> qemu:    /gnu/store/hcxcbbsf0p1fzjajd2idc3j5qvlyyp5w-libxshmfence-1.3
==> qemu:    /gnu/store/rms1a38ps1cj8n8kpl4v6nirajzkg5in-xcb-util-wm-0.4.1
==> qemu:    /gnu/store/0k450nckm9yp9vlbykvrb7pqp2njm3c4-libxv-1.0.11
==> qemu:    /gnu/store/6hq2ha8hfghnkrnrpawx2vlsp88zq537-libxdamage-1.1.4
==> qemu:    /gnu/store/6zy28hygcagsrngvihk7dnq3qqj2ljhi-wayland-1.17.0
==> qemu:    /gnu/store/dis1laih296cvfjrcj3azcjfxkip4hdb-libxfixes-5.0.3
==> qemu:    /gnu/store/fwq1zrrsn7j6g6qi1hy6pwmxhb7g4zcx-elfutils-0.176
==> qemu:    /gnu/store/gbhp08pzwqv8z2gyh6jd6hiw4i2klsh6-libxvmc-1.0.11
==> qemu:    /gnu/store/v1vnqq6nzf1n842956l30yjxzjy0130h-libxxf86vm-1.1.4
==> qemu:    /gnu/store/37akqxgd7yy7zjc07x0a28zpa0cg5rl5-cups-minimal-2.2.11
==> qemu:    /gnu/store/3vbcm47krqzgm7w2i2i99vvyzdn7c2pv-jbig2dec-0.15
==> qemu:    /gnu/store/nicvckqr5fjaay1z6di0ypbj98pn1z0g-libtiff-4.0.10
==> qemu:    /gnu/store/r54hhg96cqiiydn0m69lv7k31nz80sg6-libpaper-1.1.24
==> qemu:    /gnu/store/cj7prkvy70rib30z53znswz8x7a0w6zn-avahi-0.7
==> qemu:    /gnu/store/4mv05a8b3s8ndm0wi4v0z9jphnxv50yg-libcroco-0.6.12
==> qemu:    /gnu/store/24afn7chbs6r1a6mn7w4yfv3czq76jya-at-spi2-atk-2.32.0
==> qemu:    /gnu/store/5yaa39a8rvq8xdv8h37n29sxfmnlcv12-atk-2.32.0
==> qemu:    /gnu/store/qgzhkhmm4cis6wmx8n469jlshgr28fsh-libxcursor-1.2.0
==> qemu:    /gnu/store/xh5jch3q83bkpz1alz6aajnhq88daqrz-libgudev-232
==> qemu:    /gnu/store/4k840rwccnj3x2gix22d3m7yvans0m8j-libxkbfile-1.1.0
==> qemu:    /gnu/store/0cgvwyr7xk2d5mqzj5ga7bgvvjgjm1qv-runc-1.0.0-rc6
==> qemu:    /gnu/store/dz7ww1p4b2241mxybl043rcnvm7m1pkq-libseccomp-2.4.1
==> qemu:    /gnu/store/vmmbzvpmnb0m5rqdhy207a3y8vrrzfvq-bdb-5.3.28
==> qemu:    /gnu/store/4ms9c6rl3jfdygnj96b2870i1fpmasn1-go-1.11.10
==> qemu:    /gnu/store/ipg42szzsiikjill5h15qsyj7c9mgq4g-pigz-2.4
==> qemu:    /gnu/store/nlk6wyfbcvbkc4bi68xh90d3bc821xxr-xfsprogs-4.20.0
==> qemu:    /gnu/store/4whg9dwkq3r7r03al1gbqcjh07gywjxg-libgit2-0.28.1
==> qemu: The following grafts will be made:
==> qemu:    /gnu/store/p63warr1cjgpdlzmm13qkhxwxsb0p9aj-guix-1.0.1.drv
==> qemu:    /gnu/store/i511k0rhzlk2zxr8nf7mz2g3hyczwqa5-docker-18.09.5.drv
==> qemu:    /gnu/store/acqnsdnccbkbql1q485lasi631sxbbmm-git-2.21.0.drv
==> qemu:    /gnu/store/5cx9y4jhxgwdcdmy461s30w80p4jp1z1-curl-7.64.0.drv
==> qemu:    /gnu/store/82d4phacswp6jj8sp4dhgjsixi9202mi-cyrus-sasl-2.1.27.drv
==> qemu:    /gnu/store/n31fs92pdznbhhm7xrxcn9rfxhc8i6gc-openldap-2.4.46.drv
==> qemu:    /gnu/store/i0bb6wvipr7nnmwp05p7ms6bkwxyr58x-python2-2.7.15.drv
==> qemu:    /gnu/store/57fhqj7j8zpzvss7m24r3p8ciy7vrcv4-tk-8.6.8.drv
==> qemu:    /gnu/store/8bhhac104i5ldfcmzj4bh5qf4vw7qysn-mesa-18.3.5.drv
==> qemu:    /gnu/store/783mzdca5q78nfl9jwhbzkykfmvbrwm3-llvm-7.0.1.drv
==> qemu:    /gnu/store/0gsmqvpyly69hlc6kmbi8kzxhzndy63j-xf86-video-nouveau-1.0.16.drv
==> qemu:    /gnu/store/3wzibhvdg6vdzf53309das0xddicw1mh-xf86-input-libinput-0.28.2.drv
==> qemu:    /gnu/store/2k4x9xs1mrf2lwhkx30wryz8r5ynismj-libinput-1.13.0.drv
==> qemu:    /gnu/store/48gdqik78w07bsjcck90w3sgajvv3ss2-libwacom-0.33.drv
==> qemu:    /gnu/store/qnhswbs5hh2x8r7i40ws10r7grri67sq-gtk+-3.24.7.drv
==> qemu:    /gnu/store/5brsdqcaj3mcyqbqpd8dh913igrcrjp8-gdk-pixbuf+svg-2.38.1.drv
==> qemu:    /gnu/store/z3k5fcznzf78kwmbm8smi2b5jissxcr7-librsvg-2.40.20.drv
==> qemu:    /gnu/store/v9chjkf5fgqdm7igikszxm9y5zc6chdx-gdk-pixbuf-2.38.1.drv
==> qemu:    /gnu/store/6gwk57j2flcxy6lbsjwbxckh5afd7jm4-libepoxy-1.5.3.drv
==> qemu:    /gnu/store/w7amxf9r9lhz7ik5wmzdlhv865lv5ras-cups-2.2.11.drv
==> qemu:    /gnu/store/cxmj4gvjd7pvgk88320ya7a7r6i33n3b-cups-filters-1.22.3.drv
==> qemu:    /gnu/store/41bh65arwics1pdis4ahmy9qa3whcy3s-poppler-0.72.0.drv
==> qemu:    /gnu/store/al3dx3gqgvmz5jaz562vrpww76nmcyfx-openjpeg-2.3.1.drv
==> qemu:    /gnu/store/ri88i3zf2s9x8kkj44mg4drd0yf0ig1f-cairo-1.16.0.drv
==> qemu:    /gnu/store/4gj24fhlpmylpd9vjq8669mv9scb8mz7-qpdf-8.4.0.drv
==> qemu:    /gnu/store/jwr2c1181mhl0138cp8axig95p7vvnhj-ghostscript-with-cups-9.26.drv
==> qemu:    /gnu/store/ynbb01ym0n82f3zidzk0dvpbndm8qrqc-python-3.7.0.drv
==> qemu:    /gnu/store/ba91kka4nag3cqv5s5pp54l5dc8bl65a-xf86-video-amdgpu-19.0.1.drv
==> qemu:    /gnu/store/bycbfkm9q4lhifv3lmfnq9asvr1nm48k-xf86-video-ati-19.0.1.drv
==> qemu:    /gnu/store/rjz6h5b58df0q1xlmg6alyyf7nsmczy3-xf86-video-intel-2.99.917-13.6afed33.drv
==> qemu:    /gnu/store/yi8hbkbnsmhmva5bb8lqpmg1psdc5v9s-xf86-input-keyboard-1.9.0.drv
==> qemu:    /gnu/store/jv1bwj9in5irc3a7kjar0nxfp4afngmp-xorg-server-1.20.4.drv
==> qemu:    /gnu/store/d6b9gjbxxm8j1yr107jmwz4hg1b1jmvb-libxfont-2.0.3.drv
==> qemu:    /gnu/store/iizflsz8kqpyq4ll5w9w31dydgf9w5s6-slim-1.3.6.drv
==> qemu:    /gnu/store/0j7swmy5dbkvr01ra4sd8k5w0wlz0dz8-tmux-2.9.drv
==> qemu:    /gnu/store/s9hpkzs2fnavbpr07pyyzlw240vy2ggl-libevent-2.1.8.drv
==> qemu:    /gnu/store/0k3hjzyxrs4r5awhr11m3pw27jha6jxa-docker-compose-1.5.2.drv
==> qemu:    /gnu/store/0xddk5sm19cgf90q1fslly809rlw4zzc-python-wrapper-3.7.0.drv
==> qemu:    /gnu/store/fi8lcj5j3bpvwzyhrp40pq13knq923z3-python-3.7.0.drv
==> qemu:    /gnu/store/1mn14kgs24x6qrbyqsph1p0pq88f0swn-python-cffi-1.11.5.drv
==> qemu:    /gnu/store/421mvfr54yl41hzrshrfij246gkmylfa-python-pysocks-1.6.8.drv
==> qemu:    /gnu/store/7fl0259fbww69myaj2hb5c7lcdmiz71h-python-texttable-0.8.7.drv
==> qemu:    /gnu/store/dvrn4cs44gb31hhzk3k45flp7k16a3nd-python-cryptography-2.6.1.drv
==> qemu:    /gnu/store/g698ybkv6g27mr06s8d4zd06pmafnhgq-python-jsonschema-3.0.1.drv
==> qemu:    /gnu/store/4swsaql4ncla5h4cq0jmiwvby4gynx9d-python-zope-interface-4.6.0.drv
==> qemu:    /gnu/store/55pg0zxq37irgs8fhxbpgx3vap1dxw9y-python-twisted-19.2.0.drv
==> qemu:    /gnu/store/r5gs2nmp1r1c1vhlczik8ncdfp0srlni-python-automat-0.7.0.drv
==> qemu:    /gnu/store/10pw3xhfb23m894vgy1vvwn4zhk8406g-python-m2r-0.2.1.drv
==> qemu:    /gnu/store/1hg29l32rpxsbqpr09i41smij347aj87-python-pygments-2.2.0.drv
==> qemu:    /gnu/store/yifjr3d07y3b9p99hd7fpd7mlf0cll5j-python-pbr-minimal-3.0.1.drv
==> qemu:    /gnu/store/f2nxp38xnarvs4l5z3mdp93cy66nw33i-python-docutils-0.14.drv
==> qemu:    /gnu/store/h3q2qixzh5nmylihyrfb14p7nmic6pj9-python-pyrsistent-0.14.11.drv
==> qemu:    /gnu/store/iiwcsrw94cg9lc9vnbqb9dqq5wy7wk9a-python-pyyaml-3.13.drv
==> qemu:    /gnu/store/n4rwzqrr2n8al32m936wpyr38bblvadk-python-chardet-3.0.4.drv
==> qemu:    /gnu/store/v39rrxvkjlmr3fk2fv276g2la3dg3rlb-python-coverage-4.4.1.drv
==> qemu:    /gnu/store/zc25j6r9kn0pyafa2yammlam4zhrcx45-python-pytest-3.8.0.drv
==> qemu:    /gnu/store/1h1pvcp4sphj749f42qrdxcjsd1879za-python-nose-1.3.7.drv
==> qemu:    /gnu/store/h40fvq2fd65cw8fb00sm17p6l361n8pm-python-pytest-bootstrap-3.8.0.drv
==> qemu:    /gnu/store/qbvg6y02h7jiashccnp8rzbvdfpm5lrv-python-websocket-client-0.54.0.drv
==> qemu:    /gnu/store/zlmz33gdfc52s116m8fkq8pgv65v7ib0-python-requests-2.7.0.drv
==> qemu:    /gnu/store/6lvnc1bqijl566gf9xgp1d1366jjjdfx-xmonad-0.15.drv
==> qemu:    /gnu/store/18g0xsn3rzsb08fqssljymsmqay8frbg-ghc-utf8-string-1.0.1.1.drv
==> qemu:    /gnu/store/1xjc39jphll65c118ybxxcp58fmhvqzg-ghc-setlocale-1.0.0.8.drv
==> qemu:    /gnu/store/a5dhdc2s97byh40n027p8qjrivj0bln7-ghc-data-default-instances-old-locale-0.0.1.drv
==> qemu:    /gnu/store/c4myydmlz7k6q9bi5cnrz9ysgv0hb6gk-ghc-data-default-instances-base-0.1.0.1.drv
==> qemu:    /gnu/store/dlqm87gwg3ha0b4w8khx062wfkq3m2vg-ghc-extensible-exceptions-0.1.1.4.drv
==> qemu:    /gnu/store/fa1l8jj62gygsv8x45mvqc7s5qw780jj-ghc-data-default-class-0.1.2.0.drv
==> qemu:    /gnu/store/hifd51jsspprm0xkbfpi1zl8wvgh0iar-ghc-semigroups-0.18.5.drv
==> qemu:    /gnu/store/852f82ajfirwj2v6c66sjjkd3rwcy1a0-ghc-nats-1.1.2.drv
==> qemu:    /gnu/store/khn7l97libbrwz0lcyqwxl0syq8izdxl-ghc-tagged-0.8.5.drv
==> qemu:    /gnu/store/0fqlkmy56b3v52f66866ab94289mwj3i-ghc-transformers-compat-0.6.2.drv
==> qemu:    /gnu/store/m2y7ipnfzl6ggaywssd3a6j36w2kqc7z-ghc-hashable-1.2.7.0.drv
==> qemu:    /gnu/store/0f20bc94x7w41js46xpxmv6hgaycm50x-ghc-ansi-wl-pprint-0.6.8.2.drv
==> qemu:    /gnu/store/2q6vfr8nh1nnghswsll0lvamfph17ads-ghc-regex-base-0.93.2.drv
==> qemu:    /gnu/store/2xgw328bqqww8c32r8vqhm746f0k7spb-ghc-hunit-1.6.0.0.drv
==> qemu:    /gnu/store/79bkgjk3rx6gg6nnvc64n8nvni9bdxgk-ghc-call-stack-0.1.0.drv
==> qemu:    /gnu/store/9c6and4g4wkhfjbn8bymb64xcyzkacpy-ghc-xml-1.3.14.drv
==> qemu:    /gnu/store/db686k6f70dh10f4brqs6n4chliyjbja-ghc-semigroups-bootstrap-0.18.5.drv
==> qemu:    /gnu/store/a35pvzxdzcwchhf818bll0nr3a80hpag-ghc-hashable-bootstrap-1.2.7.0.drv
==> qemu:    /gnu/store/b6a5ny7x1pr69j9il5iyfm6la7q3k1q4-ghc-unordered-containers-bootstrap-0.2.9.0.drv
==> qemu:    /gnu/store/ffs4d9wbkpskpa36b4h6jg1020i1wl9v-ghc-nats-bootstrap-1.1.2.drv
==> qemu:    /gnu/store/gij8f7x3xg702pdaq7jwmnfq97n9va3k-ghc-test-framework-hunit-0.3.0.2.drv
==> qemu:    /gnu/store/hj1k8ky63r7ldx1698z4hs79qhv4rmqr-ghc-ansi-terminal-0.8.0.4.drv
==> qemu:    /gnu/store/i4zl4wdyqwcah2m1j6ncpy24mmi1g26h-ghc-test-framework-0.8.2.0.drv
==> qemu:    /gnu/store/i9mwx0gnkvilvdlpn64j18fp5vzwzg5a-ghc-test-framework-quickcheck2-0.3.0.4.drv
==> qemu:    /gnu/store/k2087nibqiyh1zk46yq8llwa9h6d5b77-ghc-libxml-0.1.1.drv
==> qemu:    /gnu/store/nlqq2flwjblhq2mzqb61r011ia99rynk-ghc-regex-posix-0.95.2.drv
==> qemu:    /gnu/store/xv904ry6apw51q7xddjh6pm70a4pplgm-ghc-hostname-1.0.drv
==> qemu:    /gnu/store/y38l36ynrv4qyr0bfy39wly5drlcwfjb-ghc-colour-2.3.4.drv
==> qemu:    /gnu/store/rx9v80qmk3m9kgbrj6cgbzqwn4xbd68z-ghc-text-1.2.3.0.drv
==> qemu:    /gnu/store/wcrplzaal5i3v00kmca81q6ccikxp3gz-ghc-unordered-containers-0.2.9.0.drv
==> qemu:    /gnu/store/1y058ka1x4bcmvjkz3w77f0mwcnsgw47-ghc-chasingbottoms-1.3.1.4.drv
==> qemu:    /gnu/store/c14gf7vb98rv08rd52vw960h2g7ik5lf-ghc-syb-0.7.drv
==> qemu:    /gnu/store/jkmj6j9vzng6mdpd1q6kff6cv6f6s71x-ghc-old-locale-1.0.0.7.drv
==> qemu:    /gnu/store/jrq4c4yis3v2grz7gq9lp1pll9v0qi8z-ghc-tf-random-0.5.drv
==> qemu:    /gnu/store/l4xdjcb99n9yq148igp9i7hn8mf8xyq0-ghc-data-default-0.7.1.1.drv
==> qemu:    /gnu/store/lqr3gab4gl9pj1rayrhbswfl401kjjzp-ghc-data-default-instances-containers-0.0.1.drv
==> qemu:    /gnu/store/npm71vb6y3fklbg8hfqkxv8dlxi5djfw-ghc-dlist-0.8.0.4.drv
==> qemu:    /gnu/store/p8qm6wj86rac17hrf5xkni8pb4ql02cg-ghc-primitive-0.6.3.0.drv
==> qemu:    /gnu/store/r1r7rl8q8gcbv3agwpf7vjdzijr46j9d-ghc-data-default-instances-dlist-0.0.1.drv
==> qemu:    /gnu/store/r2c798kdfhljp8y7gxfl85c82ayqkfnp-ghc-x11-1.9.drv
==> qemu:    /gnu/store/yx2haxs6xzlw57yqqyvm9b6cbfr62qyk-ghc-random-1.1.drv
==> qemu:    /gnu/store/yxabzi7wff7jp4jcfdrml148hfvqnrly-ghc-quickcheck-2.11.3.drv
==> qemu:    /gnu/store/9pclz9ag1s82miydbgr4pwxgxxmk58xk-glib-2.56.3.drv
==> qemu:    /gnu/store/jh8ra855i18kbix3ha2scqnsqmxmsq45-xterm-335.drv
==> qemu:    /gnu/store/3x42c8gphp0lzgcvr23yfa3rbjlyqdbd-mkfontdir-1.0.7.drv
==> qemu:    /gnu/store/9z5sqc0kz80dh47hmfccm340zfm5556x-mkfontscale-1.2.1.drv
==> qemu:    /gnu/store/xrhjlibn2xm4yjk99hd992ss0gi2nnvi-git-2.21.0.drv
==> qemu:    /gnu/store/615vcn1z7qwxggf98mrakl0s0z4djcn5-subversion-1.10.4.drv
==> qemu:    /gnu/store/imxxlp33a9lg86kgs11whgwb32yxswgl-apr-1.6.5.drv
==> qemu:    /gnu/store/r61rzs5q4d0ass9y59j74ji4mmsjq487-apr-util-1.6.1.drv
==> qemu:    /gnu/store/x8pqz850431fiyjl1c15yb0jxc3wx1j4-serf-1.3.9.drv
==> qemu:    /gnu/store/car7hkz79n3cq3ri2kg5fk309vfdc8lr-perl-net-ssleay-1.85.drv
==> qemu: The following profile hooks will be built:
==> qemu:    /gnu/store/9wdijr1p61shgjyi78cpqr9byjhgmb4m-manual-database.drv
==> qemu:    /gnu/store/ab9xlrdrxw3zfjh2ak42acw6f49as4zy-ca-certificate-bundle.drv
==> qemu:    /gnu/store/d21h46k0dvw2s65qhj5q5xv9a0y44n33-glib-schemas.drv
==> qemu:    /gnu/store/g3zi8dp8z8i9sxj6ykryvz1x52kr6i7s-xdg-desktop-database.drv
==> qemu:    /gnu/store/r22mrkf6g7c6zwn8rcg7x47vqgzglmry-xdg-mime-database.drv
==> qemu:    /gnu/store/x4xs0bisiav8l71cgcsixs347yvmvani-fonts-dir.drv
==> qemu:    /gnu/store/xmhzv8dnwnphynd2rd2rsakazp47g9sw-info-dir.drv
==> qemu: substitute: updating substitutes from 'https://ci.guix.gnu.org'... 100.0%
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/vibh9a643iwx8n2gwr6jv1h70z0rqda6-module-import-compiled...
==> qemu:  module-import-compiled  50KiB       85.9MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/a6xzhg5nfq1ys1k20qxj94sky80djizh-apr-1.6.5...
==> qemu:  apr-1.6.5  433KiB                    222KiB/s 00:02 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/5yaa39a8rvq8xdv8h37n29sxfmnlcv12-atk-2.32.0...
==> qemu:  atk-2.32.0  402KiB                   461KiB/s 00:01 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/f2v1rgazmvd6s1lk4qshs17qwamjxi4y-apr-util-1.6.1...
==> qemu:  apr-util-1.6.1  243KiB               163KiB/s 00:01 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/vmmbzvpmnb0m5rqdhy207a3y8vrrzfvq-bdb-5.3.28...
==> qemu:  bdb-5.3.28  1.8MiB                   941KiB/s 00:02 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/zhjghnka85z6z0vk4mibhinknzsjhd2k-binutils-2.31.1...
==> qemu:  binutils-2.31.1  18.5MiB             1.9MiB/s 00:10 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/g6ksrpfkaxvij07dgcgm0h8p47qhkviz-check-0.12.0...
==> qemu:  check-0.12.0  140KiB                 1.4MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/q6h2h60bxfrriq58ivgxxd9zix5b3ryg-config.scm...
==> qemu:  config.scm  190B                      10KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/37akqxgd7yy7zjc07x0a28zpa0cg5rl5-cups-minimal-2.2.11...
==> qemu:  cups-minimal-2.2.11  7.9MiB          2.3MiB/s 00:03 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/ik9y2qjhc4ysqz1ckk3zyzcm9mjjhg1h-curl-7.63.0-doc...
==> qemu:  curl-7.63.0-doc  583KiB              966KiB/s 00:01 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/9qsb09spvhxz9xr21ix1bz8vg3gmywrv-curl-7.64.0-doc...
==> qemu:  curl-7.64.0-doc  587KiB              2.2MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/4pkq5lviw4v1y4hl5d09j9anjkr9hxc9-cyrus-sasl-2.1.27...
==> qemu:  cyrus-sasl-2.1.27  337KiB            1.7MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/fipxg4w7x8hw7g5m1wn04l1np7qil1k5-desktop-file-utils-0.23...
==> qemu:  desktop-file-utils-0.23  71KiB       1.5MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/sny2f9yn9839hrmg7w6f0qinsalv1k49-e2fsck-static-1.44.5...
==> qemu:  e2fsck-static-1.44.5  594KiB         748KiB/s 00:01 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/fwq1zrrsn7j6g6qi1hy6pwmxhb7g4zcx-elfutils-0.176...
==> qemu:  elfutils-0.176  939KiB               1.1MiB/s 00:01 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/9ii9x4r4wzf3asf6s4a6c2pv23cii3wq-elogind-program-wrapper...
==> qemu:  elogind-program-wrapper  392B         33KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/4nllgam4pfr02bim0v7dx4kr2gvn9adh-etc-polkit-1...
==> qemu:  etc-polkit-1  328B                    32KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/nd6vh6j8gqipzikyrr2jimjqz0hwv6vh-elogind-wrapper...
==> qemu:  elogind-wrapper  527B                 56KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/2wa88yyr6vlmyhqzb0js9wfvfnfw7c3f-font-adobe75dpi-1.0.3...
==> qemu:  font-adobe75dpi-1.0.3  5.3MiB        1.2MiB/s 00:04 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/fc4vryjzsawrmi31h2m421pk831gvfa4-dbus-system-services...
==> qemu:  dbus-system-services  284B            23KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/sm8dqm4wgpac90zsv3y8li378qwc16pg-font-misc-misc-1.1.2...
==> qemu:  font-misc-misc-1.1.2  3.5MiB         1.0MiB/s 00:03 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/pv9sk8m7g3hlk26wscxz9r2p930mdzyd-dbus-configuration...
==> qemu:  dbus-configuration  398B              25KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/cicj9bp1gvn318yakqv5g871m45xyr4d-gcc-5.5.0-lib...
==> qemu:  gcc-5.5.0-lib  8.1MiB                2.1MiB/s 00:04 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/ypiv8dj4lkvsnm82s639h18l87frrh5g-gcc-6.5.0-lib...
==> qemu:  gcc-6.5.0-lib  8.4MiB                2.2MiB/s 00:04 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/rvv5rw5gcrpmbgnvhb60f7czk0m0h2qp-gcc-7.4.0-lib...
==> qemu:  gcc-7.4.0-lib  8.8MiB                2.3MiB/s 00:04 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/fpyvxglsqp63m72176wm1wzadzjx81ah-docker-cli-18.09.5...
==> qemu:  docker-cli-18.09.5  17.8MiB          2.1MiB/s 00:08 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/cs0kh9afgbmyjds07icld4y7knd0bdbg-docker-libnetwork-cmd-proxy-18.09-1.4725f21...
==> qemu:  docker-libnetwork-cmd-proxy-18.09-1.4725f21  741KiB 2.4MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/ylw0pg1683xfgjpwxyh134r90z49i9y3-ghc-8.4.3-doc...
==> qemu:  ghc-8.4.3-doc  11.4MiB               2.4MiB/s 00:05 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/sn9c7vphwfwk0mv8dr92ak6q1nihfn67-git-2.21.0-subtree...
==> qemu:  git-2.21.0-subtree  11KiB            1.3MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/basn8a7sdid0q8nic9w5ry6fplkdca0z-ghc-hashable-1.2.7.0-doc...
==> qemu:  ghc-hashable-1.2.7.0-doc  47KiB      1.3MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/p3asrj5hlg9q7x6ggpak2vf0n650h0nz-ghc-hashable-bootstrap-1.2.7.0-doc...
==> qemu:  ghc-hashable-bootstrap-1.2.7.0-doc  47KiB 1.4MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/j04vm2g85w6rrcrvyvhdp73plzf48rdq-ghc-hunit-1.6.0.0-doc...
==> qemu:  ghc-hunit-1.6.0.0-doc  49KiB         1.3MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/zpk900q9ld521zv2dq5ap9bhmbkhkp5s-ghc-primitive-0.6.3.0-doc...
==> qemu:  ghc-primitive-0.6.3.0-doc  82KiB     1.4MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/23fhjh7ynj3hijls0yyw1yv10wha710k-ghc-random-1.1-doc...
==> qemu:  ghc-random-1.1-doc  43KiB            1.2MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/arhg70rz1lk6qswzvdaf741i3dpd71p1-ghc-syb-0.7-doc...
==> qemu:  ghc-syb-0.7-doc  52KiB               382KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/7z605viagnk534mi4zml9m4n7z61q0x6-ghc-text-1.2.3.0-doc...
==> qemu:  ghc-text-1.2.3.0-doc  183KiB         553KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/xigndsb1b6m6aj1rgzy6a5mx24nfm2km-ghc-tf-random-0.5-doc...
==> qemu:  ghc-tf-random-0.5-doc  40KiB         1.2MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/vvg1dk6iarjaxiazyymwg0qyrgfjwfr9-ghc-unordered-containers-0.2.9.0-doc...
==> qemu:  ghc-unordered-containers-0.2.9.0-doc  60KiB 678KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/zk4xyq3qm8f94a4d6724c04rsk54ay31-ghc-quickcheck-2.11.3-doc...
==> qemu:  ghc-quickcheck-2.11.3-doc  162KiB    555KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/i8i5b77pcfsmj0403pbc0517z7l8gddf-ghc-unordered-containers-bootstrap-0.2.9.0-doc...
==> qemu:  ghc-unordered-containers-bootstrap-0.2.9.0-doc  60KiB 655KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/6g1i23p87l91by5p0xagwnw7j7zjrjj5-glib-2.56.3-bin...
==> qemu:  glib-2.56.3-bin  148KiB              552KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/8zrd36c1q09w76hlkmr3x0f9m38r0vx5-glib-2.56.3-doc...
==> qemu:  glib-2.56.3-doc  2.0MiB              1.1MiB/s 00:02 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/4ms9c6rl3jfdygnj96b2870i1fpmasn1-go-1.11.10...
==> qemu:  go-1.11.10  110.0MiB                 2.3MiB/s 00:49 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/kwvqrcamlyd2yxlwqz0g16zbya7w7llh-groupadd...
==> qemu:  groupadd  217B                        19KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/1ngai7g0zmhagvisb55gg2b8r6ls9xwb-groupdel...
==> qemu:  groupdel  217B                         7KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/dnbcdcnv6d1w1inbiv8cza331ajq0p5w-groupmod...
==> qemu:  groupmod  217B                        19KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/1fl9vk8fpafkws4qyy25vcdfpybxyh1k-guile-2.0.14...
==> qemu:  guile-2.0.14  4.0MiB                 2.4MiB/s 00:02 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/hq0mz4p13znlb7zazzgvm9hf2j3vqsia-guile-gdbm-ffi-20120209.fa1d5b6...
==> qemu:  guile-gdbm-ffi-20120209.fa1d5b6  48KiB 1.4MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/5p1bhbwii6sgms5miv2jhd3mfram1afm-guile-sqlite3-0.1.0...
==> qemu:  guile-sqlite3-0.1.0  68KiB           1.6MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/vgi74z3sa5dpr21h2bhvb0x80pyipnf1-guix-artwork-b975164-checkout...
==> qemu:  guix-artwork-b975164-checkout  11.1MiB 2.3MiB/s 00:05 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/b5hkkgk2lmx5n0gipbx93jh6pxbzzdz6-htop-2.2.0...
==> qemu:  htop-2.2.0  96KiB                    1.3MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/m514kfpjbzvz56ws9plh2gd3gc13xzb2-isl-0.18...
==> qemu:  isl-0.18  1.9MiB                     2.4MiB/s 00:01 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/3vbcm47krqzgm7w2i2i99vvyzdn7c2pv-jbig2dec-0.15...
==> qemu:  jbig2dec-0.15  76KiB                 1.4MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/3nyzppy3lj6s9nyrrr6yhia59lzsw17q-ld-wrapper-0...
==> qemu:  ld-wrapper-0  13KiB                  1.0MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/4mv05a8b3s8ndm0wi4v0z9jphnxv50yg-libcroco-0.6.12...
==> qemu:  libcroco-0.6.12  316KiB              1.9MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/y16121qdnjl0ffpjlp6pdqz4i9481gw8-libdaemon-0.14...
==> qemu:  libdaemon-0.14  39KiB                3.6MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/nfh4f418c0yh039dibh02saisgfh23ja-libevdev-1.5.9...
==> qemu:  libevdev-1.5.9  108KiB               1.3MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/cj7prkvy70rib30z53znswz8x7a0w6zn-avahi-0.7...
==> qemu:  avahi-0.7  714KiB                    2.3MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/lfc9rq12c8001kl584any2pma80gr9x3-libfontenc-1.1.4...
==> qemu:  libfontenc-1.1.4  29KiB              2.3MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/4whg9dwkq3r7r03al1gbqcjh07gywjxg-libgit2-0.28.1...
==> qemu:  libgit2-0.28.1  644KiB               2.5MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/xh5jch3q83bkpz1alz6aajnhq88daqrz-libgudev-232...
==> qemu:  libgudev-232  37KiB                  2.8MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/lhlb4n875cy4b3hnr6rad3z35b47lw80-guile-git-0.2.0...
==> qemu:  guile-git-0.2.0  474KiB              1.4MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/hw1mv9vjnxrvf3nwapwp9jzkg83f4709-libidn-1.35...
==> qemu:  libidn-1.35  245KiB                  1.6MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/z3d8k55x3hg81i05094dffrcbhr35qh2-guix-1.0.1...
==> qemu:  guix-1.0.1  50.4MiB                  2.3MiB/s 00:22 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/kzpq7nq5j1d5nqlwmsmayhrl0zjwyvy5-libjpeg-9c...
==> qemu:  libjpeg-9c  334KiB                   2.0MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/2dp5d62h4k5hkpm54y8vcp19ypf5rk4d-libjpeg-turbo-2.0.1...
==> qemu:  libjpeg-turbo-2.0.1  686KiB          2.4MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/la9b2gnqmrq4ziidyc3q1p9ngl5wx8y7-libjpeg-turbo-2.0.2...
==> qemu:  libjpeg-turbo-2.0.2  686KiB          2.5MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/r54hhg96cqiiydn0m69lv7k31nz80sg6-libpaper-1.1.24...
==> qemu:  libpaper-1.1.24  27KiB               2.7MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/55m57xamf980iymccl9k26k4an0ynf7d-libpng-1.6.34...
==> qemu:  libpng-1.6.34  385KiB                360KiB/s 00:01 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/sfn7fcmii7gbpjh2f7wzv8l04iy4z2d1-libpthread-stubs-0.4...
==> qemu:  libpthread-stubs-0.4  1KiB            55KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/5dnkbi6zchkisgwx2914k0iafllcvv93-freetype-2.9.1...
==> qemu:  freetype-2.9.1  922KiB               480KiB/s 00:02 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/dz7ww1p4b2241mxybl043rcnvm7m1pkq-libseccomp-2.4.1...
==> qemu:  libseccomp-2.4.1  204KiB             534KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/66jfnfgca7yi6xmpw6ax86cldvr016ia-fontconfig-2.13.1...
==> qemu:  fontconfig-2.13.1  921KiB            734KiB/s 00:01 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/k641x9mjzjl6flyj9q8qpv7nalhmi1gl-harfbuzz-2.2.0...
==> qemu:  harfbuzz-2.2.0  774KiB               822KiB/s 00:01 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/w946jk6bl2riqpfcklf4bbs7haqmg8fv-cairo-1.16.0...
==> qemu:  cairo-1.16.0  1.8MiB                 1.5MiB/s 00:01 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/z4gd3w1nz63gwjlqrz3nc9q885i34fp0-cairo-1.16.0...
==> qemu:  cairo-1.16.0  1.8MiB                 2.0MiB/s 00:01 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/nicvckqr5fjaay1z6di0ypbj98pn1z0g-libtiff-4.0.10...
==> qemu:  libtiff-4.0.10  687KiB               1.7MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/dis1laih296cvfjrcj3azcjfxkip4hdb-libxfixes-5.0.3...
==> qemu:  libxfixes-5.0.3  19KiB               321KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/fnna82d4mjfw8qmnr5l0g3rlr07jw134-gdk-pixbuf-2.38.1...
==> qemu:  gdk-pixbuf-2.38.1  798KiB            1.6MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/qk3fjvah3z5zcazljckdxijmacxcq15m-ghostscript-with-cups-9.26...
==> qemu:  ghostscript-with-cups-9.26  11.6MiB  2.3MiB/s 00:05 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/afj4p3lv36nlcy9svyr9xsqqp3cj7jmq-lcms-2.9...
==> qemu:  lcms-2.9  456KiB                     2.4MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/w5qqbhz0vzbhn7g69p4icb9wqgfp10ax-lcms-2.9...
==> qemu:  lcms-2.9  456KiB                     2.2MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/qgzhkhmm4cis6wmx8n469jlshgr28fsh-libxcursor-1.2.0...
==> qemu:  libxcursor-1.2.0  50KiB              1.7MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/6hq2ha8hfghnkrnrpawx2vlsp88zq537-libxdamage-1.1.4...
==> qemu:  libxdamage-1.1.4  8KiB               435KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/4ym8gxpi1qbc7zsp8l3829j69l05i73r-libxfont-2.0.3...
==> qemu:  libxfont-2.0.3  274KiB               1.7MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/2rcxv756nbqhqfcwddfncyv723bkc913-libxft-2.3.2...
==> qemu:  libxft-2.3.2  98KiB                  1.2MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/1wgjfp47da8zm7ap9n0sl6wfn295qvcw-libxi-1.7.9...
==> qemu:  libxi-1.7.9  190KiB                  1.6MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/mcd9pz6miv4wsrwlzam18akn3nix0ysa-libxinerama-1.1.4...
==> qemu:  libxinerama-1.1.4  11KiB            1021KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/4k840rwccnj3x2gix22d3m7yvans0m8j-libxkbfile-1.1.0...
==> qemu:  libxkbfile-1.1.0  159KiB             1.6MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/92dr0240g8a9rj2jj3j59dnf59knwzva-libxpm-3.5.12...
==> qemu:  libxpm-3.5.12  102KiB                1.2MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/mbbj3j86amqls868hip0l85q9lx8gbcn-libxrandr-1.5.1...
==> qemu:  libxrandr-1.5.1  45KiB               936KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/vjaw6bilzkjrvkd17mjailwlan336nm8-libxaw-1.0.13...
==> qemu:  libxaw-1.0.13  913KiB                2.4MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/wq2g1y1vc698bmkpxmzs64hpn4pijpb9-libxscrnsaver-1.2.3...
==> qemu:  libxscrnsaver-1.2.3  16KiB           1.0MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/hcxcbbsf0p1fzjajd2idc3j5qvlyyp5w-libxshmfence-1.3...
==> qemu:  libxshmfence-1.3  6KiB               599KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/nn0mlxc7kw01l5dmrjypam25qbr2rw8q-libxtst-1.2.3...
==> qemu:  libxtst-1.2.3  40KiB                 1.2MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/0k450nckm9yp9vlbykvrb7pqp2njm3c4-libxv-1.0.11...
==> qemu:  libxv-1.0.11  37KiB                  2.9MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/ri7mjihsihcl7wkarhklg0l4kfr26m43-at-spi2-core-2.32.0...
==> qemu:  at-spi2-core-2.32.0  243KiB          1.7MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/gbhp08pzwqv8z2gyh6jd6hiw4i2klsh6-libxvmc-1.0.11...
==> qemu:  libxvmc-1.0.11  35KiB                2.5MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/24afn7chbs6r1a6mn7w4yfv3czq76jya-at-spi2-atk-2.32.0...
==> qemu:  at-spi2-atk-2.32.0  82KiB            1.6MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/v1vnqq6nzf1n842956l30yjxzjy0130h-libxxf86vm-1.1.4...
==> qemu:  libxxf86vm-1.1.4  20KiB              1.6MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/p8adpg23ck7bq6im6f3467jc0grq10f1-linux-modules...
==> qemu:  linux-modules  426KiB                2.0MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/xi31za9zfcwgyqj7ik8a16rbx7svr6mr-login...
==> qemu:  login  279B                           16KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/1y0s9pb7ajsbpgag8yl3hnq4a88qlimr-luit-1.1.1...
==> qemu:  luit-1.1.1  24KiB                    1.6MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/sw8vw31fnmfrjhb32sxvvy0yxrx9s1hc-mkfontscale-1.2.1...
==> qemu:  mkfontscale-1.2.1  24KiB             1.4MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/4qvhdr4d4wzcdid2hkg5wanw1269nnkx-module-import...
==> qemu:  module-import  319B                   24KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/3rgvdjy72vqsv45f85b0phpirnzxb4w2-mkfontdir-1.0.7...
==> qemu:  mkfontdir-1.0.7  4KiB                336KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/5x5nhpmc0bxpm0x2r3h6qxlhxm5x0qpb-module-import...
==> qemu:  module-import  442B                   29KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/d84nbv6r94i8ixvz7f6g22pwdyvnnx6g-module-import...
==> qemu:  module-import  320B                   29KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/3in3pbr0a66h4nkvhdjklcg8fp2z4rrb-module-import-compiled...
==> qemu:  module-import-compiled  671KiB       2.4MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/4gss8imj1mld58fznl7ssl48w7x831dn-module-import-compiled...
==> qemu:  module-import-compiled  201KiB       1.6MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/94r26r4vbrqd1f4qahzikzhdkzv2126l-module-import-compiled...
==> qemu:  module-import-compiled  60KiB        1.3MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/dlm7i6w4z5rfigf10l26r5648isalf2r-module-import-compiled...
==> qemu:  module-import-compiled  92KiB        1.8MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/gza8djv7fmxh60pdh8jkkjj7shy3mnsz-module-import-compiled...
==> qemu:  module-import-compiled  90KiB        892KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/ism9qw00d9gdhlhiankg72cik02bpnfm-module-import-compiled...
==> qemu:  module-import-compiled  121KiB       1.3MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/lzq3hjr4kbvy1dy6fymqgsi18sfzsiza-module-import-compiled...
==> qemu:  module-import-compiled  408KiB       2.1MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/vqv0ij81wyhwpnz09crdrb6glsfdp9l5-module-import-compiled...
==> qemu:  module-import-compiled  54KiB        1.4MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/6272sf4haskkals0xykvll7big8v3qpn-mpfr-4.0.1...
==> qemu:  mpfr-4.0.1  664KiB                   1.5MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/ylls6kywcp0x9xayx701wfnk6qjp1hha-mtdev-1.1.5...
==> qemu:  mtdev-1.1.5  24KiB                   1.9MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/axx517wbpj9z5ivz1n60irgncfv80a2q-mpc-1.1.0...
==> qemu:  mpc-1.1.0  130KiB                    1.3MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/p2g04v2h8zxdjhl6ywy2mickvca2h9gi-nghttp2-1.35.1-lib...
==> qemu:  nghttp2-1.35.1-lib  116KiB           1.2MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/ginrh3x6qi4w2i005gics37wzz5b78s7-gcc-5.5.0...
==> qemu:  gcc-5.5.0  33.2MiB                   2.3MiB/s 00:14 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/37lzzqbmk496g8ckkkgvxngc1bjibzck-openjpeg-2.3.0...
==> qemu:  openjpeg-2.3.0  493KiB               2.4MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/8v1sn5ns7r5n02aip0b0ypyyzb2y1i1a-ghc-8.4.3...
==> qemu:  ghc-8.4.3  200.7MiB                  2.3MiB/s 01:29 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/aknz2a8plic9dzcai169c4gyhbh80k3a-openjpeg-2.3.1...
==> qemu:  openjpeg-2.3.1  495KiB               565KiB/s 00:01 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/49b20r5vfqbvf1vmwgqqpqrdq2yv4s1i-ghc-call-stack-0.1.0...
==> qemu:  ghc-call-stack-0.1.0  60KiB          1.3MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/c8wflj0d6sd7a0n09wqsc8628raqg3zf-ghc-colour-2.3.4...
==> qemu:  ghc-colour-2.3.4  426KiB             1.5MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/racqrny38sbxh3763sjwpdkjfp09qva7-ghc-data-default-class-0.1.2.0...
==> qemu:  ghc-data-default-class-0.1.2.0  60KiB 1.1MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/1fhv3cflybqza74awnngvfz65z2xd82z-ghc-ansi-terminal-0.8.0.4...
==> qemu:  ghc-ansi-terminal-0.8.0.4  315KiB    1.6MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/m4iwzakfh4cixfiyln7p3kglj6a2rvj5-ghc-data-default-instances-base-0.1.0.1...
==> qemu:  ghc-data-default-instances-base-0.1.0.1  42KiB 1.1MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/zyina77x1xv266jdcf4x51r22xyzy8bl-ghc-ansi-wl-pprint-0.6.8.2...
==> qemu:  ghc-ansi-wl-pprint-0.6.8.2  199KiB   1.3MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/g1gbiqv5i1rd2l9qg8i06fzpi2a4hql9-ghc-data-default-instances-containers-0.0.1...
==> qemu:  ghc-data-default-instances-containers-0.0.1  50KiB 1.2MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/phxf2ymqq92wgp56zzqxxsi0rjdpc3d9-ghc-extensible-exceptions-0.1.1.4...
==> qemu:  ghc-extensible-exceptions-0.1.1.4  46KiB 1.2MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/4yfnp7f4n394fcs781jpi3hls7gnnkng-ghc-hostname-1.0...
==> qemu:  ghc-hostname-1.0  45KiB              1.2MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/imw59brgzdgh4kyj16m8r2b0k6s2zvcw-ghc-hunit-1.6.0.0...
==> qemu:  ghc-hunit-1.6.0.0  168KiB            1.5MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/bv9yh8d4al6yl63f4xxm8x2if9xav18n-ghc-libxml-0.1.1...
==> qemu:  ghc-libxml-0.1.1  86KiB              1.4MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/89nj546vgyll98wx2afv9fhwghianvxh-ghc-old-locale-1.0.0.7...
==> qemu:  ghc-old-locale-1.0.0.7  96KiB        1.2MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/p29vsm3734m3v6vsqnrba8i3mxhnkv0m-ghc-primitive-0.6.3.0...
==> qemu:  ghc-primitive-0.6.3.0  398KiB        1.7MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/w2mp7g391pqf4gqk8iyz3b6wx8jpc6dg-ghc-data-default-instances-old-locale-0.0.1...
==> qemu:  ghc-data-default-instances-old-locale-0.0.1  44KiB 1.1MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/q2qyzl8g857vzgvvrg955135yfja98pr-ghc-random-1.1...
==> qemu:  ghc-random-1.1  214KiB               1.6MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/45fzv71awz3yyj6dr1jxm9vyxbhmni33-ghc-regex-base-0.93.2...
==> qemu:  ghc-regex-base-0.93.2  168KiB        1.5MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/l68zni4hilzwg9qawr35r6j5jpn9dkz4-ghc-setlocale-1.0.0.8...
==> qemu:  ghc-setlocale-1.0.0.8  82KiB         1.6MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/lnszn9119wbv5d5bb4vml8gwzad2vl9q-ghc-regex-posix-0.95.2...
==> qemu:  ghc-regex-posix-0.95.2  300KiB       1.6MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/15qjvgjccks5l4balcrkzzjjr04f9jrl-ghc-syb-0.7...
==> qemu:  ghc-syb-0.7  192KiB                  1.3MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/dcig28c6xladzv710mv55b2y2gxsmds1-ghc-text-1.2.3.0...
==> qemu:  ghc-text-1.2.3.0  1.5MiB             1.5MiB/s 00:01 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/gq7kc9d6gkgi418yndjp37mjjwmcxkr5-ghc-tf-random-0.5...
==> qemu:  ghc-tf-random-0.5  147KiB            1.3MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/cvx8k30c62hhc25a2fbw1ma3ygqg7231-ghc-hashable-bootstrap-1.2.7.0...
==> qemu:  ghc-hashable-bootstrap-1.2.7.0  171KiB 1.5MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/vcs2apb493vc8a7hdx7vy2f7awniy3fq-ghc-quickcheck-2.11.3...
==> qemu:  ghc-quickcheck-2.11.3  1.1MiB        1.9MiB/s 00:01 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/04pbh9c0bgq6nv33qkanqzlpfahnsr29-ghc-nats-bootstrap-1.1.2...
==> qemu:  ghc-nats-bootstrap-1.1.2  2KiB       264KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/m264s752maw1vw99arz90v4hz3kqvrbd-ghc-chasingbottoms-1.3.1.4...
==> qemu:  ghc-chasingbottoms-1.3.1.4  280KiB   338KiB/s 00:01 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/acrqx1ybs0kqi8d6m6ihl5dbiircdy73-ghc-dlist-0.8.0.4...
==> qemu:  ghc-dlist-0.8.0.4  100KiB            403KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/anwhb94j7r0zmqapcxa4y1z0xs302li9-ghc-transformers-compat-0.6.2...
==> qemu:  ghc-transformers-compat-0.6.2  183KiB 410KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/4g2vbk116dymqmlgynfxw2k0l93zjjwl-ghc-data-default-instances-dlist-0.0.1...
==> qemu:  ghc-data-default-instances-dlist-0.0.1  47KiB 554KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/mz0q51pv3w07nyqz7mb4vbnd263jbz76-ghc-tagged-0.8.5...
==> qemu:  ghc-tagged-0.8.5  172KiB             396KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/kqrv5hnnbnz7zrf0gafy9zps22bddcr8-ghc-data-default-0.7.1.1...
==> qemu:  ghc-data-default-0.7.1.1  55KiB      568KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/hjyg8p670s5r3dxhg2h598yfm58idl61-ghc-unordered-containers-bootstrap-0.2.9.0...
==> qemu:  ghc-unordered-containers-bootstrap-0.2.9.0  402KiB 465KiB/s 00:01 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/2pfcbbfvf0a5kszyz2157zx94r3spnlz-ghc-utf8-string-1.0.1.1...
==> qemu:  ghc-utf8-string-1.0.1.1  202KiB      454KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/fxv9asadnkvj3y7qddpl0nbwz4qay5hd-ghc-semigroups-bootstrap-0.18.5...
==> qemu:  ghc-semigroups-bootstrap-0.18.5  52KiB 581KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/g0ygjxkfwplq5j38ab0ph92lhjqdfwxc-ghc-x11-1.9...
==> qemu:  ghc-x11-1.9  2.0MiB                 1019KiB/s 00:02 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/vijqdaqa6yn1fgqgby28vhx1g53sbgc6-ghc-xml-1.3.14...
==> qemu:  ghc-xml-1.3.14  366KiB               1.3MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/0j6sz3bk4chqc8pgfv0fsn6byarwq4df-openldap-2.4.46...
==> qemu:  openldap-2.4.46  1.7MiB              1.6MiB/s 00:01 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/fzbngx2qk8axmfdql6g2g0yz7r69q8m4-ghc-test-framework-0.8.2.0...
==> qemu:  ghc-test-framework-0.8.2.0  393KiB   1.2MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/3zpj9qfx91qb5771h5aj8g8mlzninakn-other...
==> qemu:  other  198B                           14KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/ifpcg5h7hwnfq625lk8lak0sd2269ipm-ghc-test-framework-hunit-0.3.0.2...
==> qemu:  ghc-test-framework-hunit-0.3.0.2  94KiB 1.2MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/d3agd211v2shwiv8i0f9sdmvdyaymksg-ghc-test-framework-quickcheck2-0.3.0.4...
==> qemu:  ghc-test-framework-quickcheck2-0.3.0.4  106KiB 312KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/a27pvkbi2wc7772zjar1adncxd7lr759-pango-1.42.4...
==> qemu:  pango-1.42.4  669KiB                 433KiB/s 00:02 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/6rajabyy057433mafcqgyaifl871s5sy-ghc-hashable-1.2.7.0...
==> qemu:  ghc-hashable-1.2.7.0  173KiB         554KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/njs2wakckxadc3iqnnrhvkkf2qr3v1zk-librsvg-2.40.20...
==> qemu:  librsvg-2.40.20  170KiB              584KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/v8wdm56gvaqdrir1irwiknqs34snzlh0-ghc-nats-1.1.2...
==> qemu:  ghc-nats-1.1.2  2KiB                 140KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/6m8mfngzi0hmjgi3hfnszyhis8i0vg4c-gdk-pixbuf%2Bsvg-2.38.1...
==> qemu:  gdk-pixbuf%2Bsvg-2.38.1  5.4MiB      1.2MiB/s 00:05 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/fd6a49i0qz7mmc9d91w7fxawbg4rm0kx-ghc-unordered-containers-0.2.9.0...
==> qemu:  ghc-unordered-containers-0.2.9.0  403KiB 1.5MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/135h76sg9zs42wxfij3wr558xsxjrv85-passwd...
==> qemu:  passwd  217B                          15KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/6svbc5varmfqmx1dxh92dbrgv6i5ci3g-ghc-semigroups-0.18.5...
==> qemu:  ghc-semigroups-0.18.5  52KiB         1.2MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/4g7gp4ls77wf0z0af4z3vvgric0xm8y8-perl-authen-sasl-2.16...
==> qemu:  perl-authen-sasl-2.16  39KiB         3.3MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/ng3138glamspdvaqlyrv5w7fim9cjbpz-perl-cgi-4.38...
==> qemu:  perl-cgi-4.38  163KiB                1.4MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/xhzgdgkrp51k3ig8swi787l3bl9v7n5y-perl-digest-hmac-1.03...
==> qemu:  perl-digest-hmac-1.03  7KiB          932KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/9jcpadjqiyf8ifkdbf8hl2p7v2ksca32-perl-gssapi-0.28...
==> qemu:  perl-gssapi-0.28  48KiB              1.2MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/rlydlffpf0935mp6lj32xrbmjz51vwm7-perl-html-parser-3.72...
==> qemu:  perl-html-parser-3.72  84KiB         1.1MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/nhliv3vbna3ij3irha7wzm1zgmshjvv4-perl-io-socket-ssl-2.038...
==> qemu:  perl-io-socket-ssl-2.038  163KiB     1.1MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/dsckmjfiqy49ir74zn17s8ikfzy59vj6-perl-net-smtp-ssl-1.04...
==> qemu:  perl-net-smtp-ssl-1.04  3KiB         463KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/mfpdliqvvfawsywqb5nqlrql5arwfhij-perl-net-ssleay-1.85...
==> qemu:  perl-net-ssleay-1.85  330KiB         1.5MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/kiy0qabiryv899i6iljdq76s8l0lg5ax-perl-term-readkey-2.37...
==> qemu:  perl-term-readkey-2.37  21KiB        1.7MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/m8v7r24hjp480swla9bkavfgb9557lr5-perl-uri-1.73...
==> qemu:  perl-uri-1.73  83KiB                 1.4MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/ipg42szzsiikjill5h15qsyj7c9mgq4g-pigz-2.4...
==> qemu:  pigz-2.4  79KiB                      1.5MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/jq29v92dca0c80w2frxxmznn75ix6y7v-polkit-1...
==> qemu:  polkit-1  217B                        14KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/yw5dc2w8ky7cxnd2s7f6p91yinvdrbnb-poppler-0.72.0...
==> qemu:  poppler-0.72.0  1.9MiB               2.0MiB/s 00:01 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/cl42c73h609bp2gy92qkh8q56spnnl2n-python-3.7.0...
==> qemu:  python-3.7.0  20.6MiB                1.5MiB/s 00:14 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/57daq0hkwvmwx4asiy669cmln868brfm-python2-2.7.15...
==> qemu:  python2-2.7.15  15.4MiB              2.3MiB/s 00:07 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/g30znz9vwkvi23k41dgallfg85sj65hp-python-wrapper-3.7.0...
==> qemu:  python-wrapper-3.7.0  354B            38KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/g87hamjyipk1j6dfq5pjfzfnfb64spbv-python2-2.7.15...
==> qemu:  python2-2.7.15  15.4MiB              2.2MiB/s 00:07 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/hfk3fziw8jkkbji36c8xm3363kwsydx9-qpdf-8.4.0...
==> qemu:  qpdf-8.4.0  1.7MiB                   2.4MiB/s 00:01 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/zqfbh4whwrzzhqa811i43dggyqh2lmwx-libevent-2.1.8...
==> qemu:  libevent-2.1.8  787KiB               2.0MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/1a7iqxqik50sdwgpyqmr2qx0dmvlw9ir-cups-filters-1.22.3...
==> qemu:  cups-filters-1.22.3  1.1MiB          2.4MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/slhclazbx16ij6kyggz667sycmyy9iii-llvm-7.0.1...
==> qemu:  llvm-7.0.1  33.6MiB                  1.9MiB/s 00:17 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/ns7ndzw2rzl0zxbblq0dhz8bnbirxml1-cups-2.2.11...
==> qemu:  cups-2.2.11  7.9MiB                  1.8MiB/s 00:04 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/0cgvwyr7xk2d5mqzj5ga7bgvvjgjm1qv-runc-1.0.0-rc6...
==> qemu:  runc-1.0.0-rc6  2.8MiB               2.1MiB/s 00:01 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/ws6van99y1jsv473fmz0zlh5yp2y3xms-serf-1.3.9...
==> qemu:  serf-1.3.9  120KiB                   1.3MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/9dfyaar5gh836zdcbn4karyfdj8wlc1h-containerd-1.2.5...
==> qemu:  containerd-1.2.5  31.0MiB            2.3MiB/s 00:13 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/0wqgmqnlpr8pzvx4skqdgczym8384fbb-shishi-1.0.2...
==> qemu:  shishi-1.0.2  968KiB                 1.9MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/gb0zcscw64icm9ccraz7k2x5sqz1yjnl-slim-1.3.6...
==> qemu:  slim-1.3.6  286KiB                   2.0MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/ldnlqls7rnir0ls986xdjp75w2mp3azj-gss-1.0.3...
==> qemu:  gss-1.0.3  218KiB                    1.5MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/0v8kkhpk4qvmyab0wmg9wa7w8xynig01-slock-1.4...
==> qemu:  slock-1.4  7KiB                      682KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/2gf7xac2392x5qdzhmpn5jfl0kjxr0zd-curl-7.63.0...
==> qemu:  curl-7.63.0  480KiB                  2.2MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/kwiriz8g92zwymsgv7i5rm17x9l9ghzy-curl-7.64.0...
==> qemu:  curl-7.64.0  482KiB                  2.1MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/74yiacy47iaf5fdfwj2r9rh4pj9dpvxm-git-2.21.0...
==> qemu:  git-2.21.0  16.5MiB                  2.3MiB/s 00:07 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/3ab089926gd3vlhalxnxxmxnm8w2dd41-sshd_config...
==> qemu:  sshd_config  334B                     10KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/mq5md7nsym5nfc5ysf3m6p3bch5k60hi-git-2.21.0-credential-netrc...
==> qemu:  git-2.21.0-credential-netrc  5KiB    215KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/k8bv360djwyl4vpdxfia2arqqk9yrf63-git-2.21.0-send-email...
==> qemu:  git-2.21.0-send-email  19KiB         1.1MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/fh4h7n1l7v3vn6rsx8sy76qnr3v4w2z2-stow-2.2.2...
==> qemu:  stow-2.2.2  378KiB                   850KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/1xidl7df7zkg7m9vccf9di800c6h931f-su...
==> qemu:  su  232B                              23KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/76fwrfny9ynndp4ahv0rqs0szh2jsm1n-sudo...
==> qemu:  sudo  217B                            16KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/r57pxyj2sfjmb41jfsdi41fs4q545s51-tcl-8.6.8...
==> qemu:  tcl-8.6.8  5.7MiB                    2.0MiB/s 00:03 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/2k67pvrdq9hygg2ysgflk94jhbnc9s9g-tcsh-6.20.00...
==> qemu:  tcsh-6.20.00  456KiB                 1.9MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/2zl6wcliyd2ny8w73h77vk8bn4x91b7x-tk-8.6.8...
==> qemu:  tk-8.6.8  2.0MiB                     1.2MiB/s 00:02 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/wcaf3lmq00l9jk9s2a2s2qgh4l9m643c-tmux-2.9...
==> qemu:  tmux-2.9  310KiB                     1.8MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/s8xl1rbddhig7hc2bcyv5dk7zignasby-git-2.21.0-gui...
==> qemu:  git-2.21.0-gui  134KiB               1.4MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/f123ql830l3jv00mqwr70s7lpg7zcm01-python-3.7.0-tk...
==> qemu:  python-3.7.0-tk  30KiB               2.0MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/a6s12f4hksf1xac2b1bm1605h95704ps-python2-2.7.15-tk...
==> qemu:  python2-2.7.15-tk  30KiB             2.1MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/rvr69vbggcy12qiayy20yf49vcgh11zj-unzip-6.0...
==> qemu:  unzip-6.0  267KiB                    342KiB/s 00:01 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/1cjqwlajkbjiy9b6csp1wh3sxzynym7f-useradd...
==> qemu:  useradd  217B                         19KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/xs664cv7rilqw3kjk1nbzdqzcx17ka2q-mc-4.8.22...
==> qemu:  mc-4.8.22  2.5MiB                    582KiB/s 00:04 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/03q7sclg4bbppyn9mcdmv9r33x76q35i-userdel...
==> qemu:  userdel  217B                         14KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/rc8lxf7k8dfj0d8bli9ss88ddwcig3gz-usermod...
==> qemu:  usermod  217B                         21KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/5dzq0p9kmf9qdz77i9i76ljv5gqrn5cf-utf8proc-2.1.1...
==> qemu:  utf8proc-2.1.1  146KiB               776KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/xpmgf3qa7ygz89829275qv3af5l0m790-vim-8.1.0644...
==> qemu:  vim-8.1.0644  8.1MiB                 1.9MiB/s 00:04 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/rjivach5z5hgv6yvcr3kranaz7za4jg1-subversion-1.10.4...
==> qemu:  subversion-1.10.4  5.2MiB            924KiB/s 00:06 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/6zy28hygcagsrngvihk7dnq3qqj2ljhi-wayland-1.17.0...
==> qemu:  wayland-1.17.0  406KiB               1.0MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/v94cd5lnnnkramn3mfd5bfvjzlswhj1g-git-2.21.0-svn...
==> qemu:  git-2.21.0-svn  20KiB                1.9MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/rxqxn0mxmg0v2xg5nvpaidvpj3d1kxb7-mesa-18.3.5...
==> qemu:  mesa-18.3.5  27.1MiB                 2.3MiB/s 00:12 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/0cnnj7kvggda2p12mlmxawz3ni9w5rwa-xcb-util-0.4.0...
==> qemu:  xcb-util-0.4.0  17KiB                1.0MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/dxir0rz1q9cmnjkbjdjq41gi0c7j1sbn-libepoxy-1.5.3...
==> qemu:  libepoxy-1.5.3  597KiB               2.1MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/4rj0ijwb70l0g8wyjdlyiml8gxvz6d1d-xcb-util-image-0.4.0...
==> qemu:  xcb-util-image-0.4.0  22KiB          524KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/i8x3yn47chgnmzwdbnj5s3knla405qvi-gtk%2B-3.24.7...
==> qemu:  gtk%2B-3.24.7  12.8MiB               2.3MiB/s 00:06 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/3nzwxm8jch3hhbgk8rvp2vmhc3396pjm-xcb-util-keysyms-0.4.0...
==> qemu:  xcb-util-keysyms-0.4.0  7KiB         613KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/0gb1vga5r8amk1m2an3dvwj51bzghpam-libwacom-0.33...
==> qemu:  libwacom-0.33  84KiB                 1.4MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/ghrqi1xiy1xs2icywg8bbsn8cadvk1v8-xcb-util-renderutil-0.3.9...
==> qemu:  xcb-util-renderutil-0.3.9  12KiB     903KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/3xnlx4k5gid5ak9ip7zh35wqwnbq1lw5-libinput-1.13.0...
==> qemu:  libinput-1.13.0  415KiB              1.9MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/rms1a38ps1cj8n8kpl4v6nirajzkg5in-xcb-util-wm-0.4.1...
==> qemu:  xcb-util-wm-0.4.1  60KiB             1.2MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/9cq0g9bhq2g1byjrgra93lxd6334dl6l-xf86-input-evdev-2.10.6...
==> qemu:  xf86-input-evdev-2.10.6  38KiB       4.2MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/7jkkaaqxv4rwn8gd2ish24nis0xmacbx-xf86-input-libinput-0.28.2...
==> qemu:  xf86-input-libinput-0.28.2  44KiB    1.3MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/qcbkfqn28msw3x344b90gsd5fjribnah-xf86-input-mouse-1.9.3...
==> qemu:  xf86-input-mouse-1.9.3  32KiB        1.8MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/5z84fs6jcg2am3khnsq37zyi2mf6mj1d-xf86-input-synaptics-1.9.1...
==> qemu:  xf86-input-synaptics-1.9.1  63KiB    1.5MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/v454ijfrmyb0cd1a74mmz2yk03il8xsm-xf86-video-cirrus-1.5.3...
==> qemu:  xf86-video-cirrus-1.5.3  40KiB       1.9MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/6njzy2lv87fr9a9ay5cp205bqfssva74-xf86-video-fbdev-0.5.0...
==> qemu:  xf86-video-fbdev-0.5.0  13KiB        1.1MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/yimnqfs9v6qf2k3i3psm1cv0dhm54qg3-xf86-video-mach64-6.9.6...
==> qemu:  xf86-video-mach64-6.9.6  70KiB       1.7MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/bgmya5sgd8q9vvj0wzrngmgx74ig5dkf-xf86-video-nv-2.1.21...
==> qemu:  xf86-video-nv-2.1.21  86KiB          1.7MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/3h77x4bxb0lj876sy3i77l39ixc060yl-xf86-video-sis-0.10.9...
==> qemu:  xf86-video-sis-0.10.9  275KiB        1.8MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/w2xryn7vr8vd6mddqln9jhmmdc5x6y0n-xf86-video-vesa-2.4.0...
==> qemu:  xf86-video-vesa-2.4.0  16KiB         1.0MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/nlk6wyfbcvbkc4bi68xh90d3bc821xxr-xfsprogs-4.20.0...
==> qemu:  xfsprogs-4.20.0  2.3MiB              2.4MiB/s 00:01 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/51gbgg46021b39q80bmpqbjxcj7bdbjl-xkbcomp-1.4.2...
==> qemu:  xkbcomp-1.4.2  98KiB                 1.1MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/9gb61vpj0nrzfiv70di3a24fsiflqlzq-docker-18.09.5...
==> qemu:  docker-18.09.5  49.5MiB              2.0MiB/s 00:25 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/qk954mmxn7d5h9wji3vwkz23padbqybk-xmonad-0.15...
==> qemu:  xmonad-0.15  1.6MiB                  1.4MiB/s 00:01 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/y3q9sndv8ps8n9qikqvlf614bk4brvhj-xorg-server-1.20.4...
==> qemu:  xorg-server-1.20.4  4.7MiB           2.1MiB/s 00:02 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/ws35c3vmsfgacwhx88p6kcl9iv8dbr89-xterm-335...
==> qemu:  xterm-335  377KiB                    2.0MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/nrqs5fh2lizi306inqkwww4qzrl1b6m2-xf86-input-keyboard-1.9.0...
==> qemu:  xf86-input-keyboard-1.9.0  15KiB     631KiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/b82nm5k163ci1bbym1gwl1rfkvs766l8-xf86-video-amdgpu-19.0.1...
==> qemu:  xf86-video-amdgpu-19.0.1  83KiB      1.4MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/v4w28c8hyfccgnz1bdk6l4j0bzlv0p02-xf86-video-ati-19.0.1...
==> qemu:  xf86-video-ati-19.0.1  186KiB        1.6MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/zmjb8crg4cnnia1j3bm10ad6nihlxvhy-xf86-video-intel-2.99.917-13.6afed33...
==> qemu:  xf86-video-intel-2.99.917-13.6afed33  824KiB 968KiB/s 00:01 [##################] 100.0%
==> qemu:
==> qemu: downloading from https://ci.guix.gnu.org/nar/gzip/ysdmjqlmzvzkdhndg3bayz4540jyhdik-xf86-video-nouveau-1.0.16...
==> qemu:  xf86-video-nouveau-1.0.16  105KiB    1.3MiB/s 00:00 [##################] 100.0%
==> qemu:
==> qemu: building /gnu/store/75x7c6wi1aw111whxi1bd3al35pwzzpc-activate-service.drv...
==> qemu: building /gnu/store/a15lcvjp6ki24r91jxcl7xh98d81ngb5-activate-service.drv...
==> qemu: building /gnu/store/hp79bv62kwcbrqrzraiknxb6qqzba3fm-activate-service.drv...
==> qemu: building /gnu/store/jvnkxhpxkksi0mqd7pwrbna0g032vdr2-activate-service.drv...
==> qemu: applying 1 graft for /gnu/store/imxxlp33a9lg86kgs11whgwb32yxswgl-apr-1.6.5.drv...
==> qemu: building /gnu/store/72pl4szaqp7xcjp69zm01681n0l3rj60-bootloader-installer.drv...
==> qemu: applying 1 graft for /gnu/store/r61rzs5q4d0ass9y59j74ji4mmsjq487-apr-util-1.6.1.drv...
==> qemu: applying 3 grafts for /gnu/store/ri88i3zf2s9x8kkj44mg4drd0yf0ig1f-cairo-1.16.0.drv...
==> qemu: applying 1 graft for /gnu/store/82d4phacswp6jj8sp4dhgjsixi9202mi-cyrus-sasl-2.1.27.drv...
==> qemu: applying 1 graft for /gnu/store/v9chjkf5fgqdm7igikszxm9y5zc6chdx-gdk-pixbuf-2.38.1.drv...
==> qemu: applying 1 graft for /gnu/store/79bkgjk3rx6gg6nnvc64n8nvni9bdxgk-ghc-call-stack-0.1.0.drv...
==> qemu: applying 1 graft for /gnu/store/y38l36ynrv4qyr0bfy39wly5drlcwfjb-ghc-colour-2.3.4.drv...
==> qemu: applying 1 graft for /gnu/store/fa1l8jj62gygsv8x45mvqc7s5qw780jj-ghc-data-default-class-0.1.2.0.drv...
==> qemu: applying 2 grafts for /gnu/store/hj1k8ky63r7ldx1698z4hs79qhv4rmqr-ghc-ansi-terminal-0.8.0.4.drv...
==> qemu: applying 2 grafts for /gnu/store/c4myydmlz7k6q9bi5cnrz9ysgv0hb6gk-ghc-data-default-instances-base-0.1.0.1.drv...
==> qemu: applying 3 grafts for /gnu/store/0f20bc94x7w41js46xpxmv6hgaycm50x-ghc-ansi-wl-pprint-0.6.8.2.drv...
==> qemu: applying 2 grafts for /gnu/store/lqr3gab4gl9pj1rayrhbswfl401kjjzp-ghc-data-default-instances-containers-0.0.1.drv...
==> qemu: applying 1 graft for /gnu/store/dlqm87gwg3ha0b4w8khx062wfkq3m2vg-ghc-extensible-exceptions-0.1.1.4.drv...
==> qemu: applying 1 graft for /gnu/store/xv904ry6apw51q7xddjh6pm70a4pplgm-ghc-hostname-1.0.drv...
==> qemu: applying 2 grafts for /gnu/store/2xgw328bqqww8c32r8vqhm746f0k7spb-ghc-hunit-1.6.0.0.drv...
==> qemu: applying 1 graft for /gnu/store/k2087nibqiyh1zk46yq8llwa9h6d5b77-ghc-libxml-0.1.1.drv...
==> qemu: applying 1 graft for /gnu/store/jkmj6j9vzng6mdpd1q6kff6cv6f6s71x-ghc-old-locale-1.0.0.7.drv...
==> qemu: applying 1 graft for /gnu/store/p8qm6wj86rac17hrf5xkni8pb4ql02cg-ghc-primitive-0.6.3.0.drv...
==> qemu: applying 3 grafts for /gnu/store/a5dhdc2s97byh40n027p8qjrivj0bln7-ghc-data-default-instances-old-locale-0.0.1.drv...
==> qemu: applying 1 graft for /gnu/store/yx2haxs6xzlw57yqqyvm9b6cbfr62qyk-ghc-random-1.1.drv...
==> qemu: applying 1 graft for /gnu/store/2q6vfr8nh1nnghswsll0lvamfph17ads-ghc-regex-base-0.93.2.drv...
==> qemu: applying 1 graft for /gnu/store/1xjc39jphll65c118ybxxcp58fmhvqzg-ghc-setlocale-1.0.0.8.drv...
==> qemu: applying 2 grafts for /gnu/store/nlqq2flwjblhq2mzqb61r011ia99rynk-ghc-regex-posix-0.95.2.drv...
==> qemu: applying 3 grafts for /gnu/store/c14gf7vb98rv08rd52vw960h2g7ik5lf-ghc-syb-0.7.drv...
==> qemu: applying 2 grafts for /gnu/store/rx9v80qmk3m9kgbrj6cgbzqwn4xbd68z-ghc-text-1.2.3.0.drv...
==> qemu: applying 3 grafts for /gnu/store/jrq4c4yis3v2grz7gq9lp1pll9v0qi8z-ghc-tf-random-0.5.drv...
==> qemu: applying 3 grafts for /gnu/store/a35pvzxdzcwchhf818bll0nr3a80hpag-ghc-hashable-bootstrap-1.2.7.0.drv...
==> qemu: applying 4 grafts for /gnu/store/yxabzi7wff7jp4jcfdrml148hfvqnrly-ghc-quickcheck-2.11.3.drv...
==> qemu: applying 2 grafts for /gnu/store/ffs4d9wbkpskpa36b4h6jg1020i1wl9v-ghc-nats-bootstrap-1.1.2.drv...
==> qemu: applying 7 grafts for /gnu/store/1y058ka1x4bcmvjkz3w77f0mwcnsgw47-ghc-chasingbottoms-1.3.1.4.drv...
==> qemu: applying 5 grafts for /gnu/store/npm71vb6y3fklbg8hfqkxv8dlxi5djfw-ghc-dlist-0.8.0.4.drv...
==> qemu: applying 1 graft for /gnu/store/0fqlkmy56b3v52f66866ab94289mwj3i-ghc-transformers-compat-0.6.2.drv...
==> qemu: applying 4 grafts for /gnu/store/r1r7rl8q8gcbv3agwpf7vjdzijr46j9d-ghc-data-default-instances-dlist-0.0.1.drv...
==> qemu: applying 2 grafts for /gnu/store/khn7l97libbrwz0lcyqwxl0syq8izdxl-ghc-tagged-0.8.5.drv...
==> qemu: applying 9 grafts for /gnu/store/l4xdjcb99n9yq148igp9i7hn8mf8xyq0-ghc-data-default-0.7.1.1.drv...
==> qemu: applying 4 grafts for /gnu/store/b6a5ny7x1pr69j9il5iyfm6la7q3k1q4-ghc-unordered-containers-bootstrap-0.2.9.0.drv...
==> qemu: applying 1 graft for /gnu/store/18g0xsn3rzsb08fqssljymsmqay8frbg-ghc-utf8-string-1.0.1.1.drv...
==> qemu: applying 6 grafts for /gnu/store/db686k6f70dh10f4brqs6n4chliyjbja-ghc-semigroups-bootstrap-0.18.5.drv...
==> qemu: applying 10 grafts for /gnu/store/r2c798kdfhljp8y7gxfl85c82ayqkfnp-ghc-x11-1.9.drv...
==> qemu: applying 2 grafts for /gnu/store/9c6and4g4wkhfjbn8bymb64xcyzkacpy-ghc-xml-1.3.14.drv...
==> qemu: applying 1 graft for /gnu/store/jwr2c1181mhl0138cp8axig95p7vvnhj-ghostscript-with-cups-9.26.drv...
==> qemu: applying 15 grafts for /gnu/store/i4zl4wdyqwcah2m1j6ncpy24mmi1g26h-ghc-test-framework-0.8.2.0.drv...
==> qemu: applying 3 grafts for /gnu/store/p63warr1cjgpdlzmm13qkhxwxsb0p9aj-guix-1.0.1.drv...
==> qemu: applying 18 grafts for /gnu/store/gij8f7x3xg702pdaq7jwmnfq97n9va3k-ghc-test-framework-hunit-0.3.0.2.drv...
==> qemu: building /gnu/store/ya57f5gv9x6qps9b68gf59v7569nahyq-acl.drv...
==> qemu: applying 19 grafts for /gnu/store/i9mwx0gnkvilvdlpn64j18fp5vzwzg5a-ghc-test-framework-quickcheck2-0.3.0.4.drv...
==> qemu: building /gnu/store/42l0vclbvf2ps3rks1yg49s2yqy6lvdk-activate-service.drv...
==> qemu: applying 22 grafts for /gnu/store/m2y7ipnfzl6ggaywssd3a6j36w2kqc7z-ghc-hashable-1.2.7.0.drv...
==> qemu: building /gnu/store/jgwzgmrakmi5sn9n99mbhs1zjx08rxzm-init.drv...
==> qemu: applying 2 grafts for /gnu/store/852f82ajfirwj2v6c66sjjkd3rwcy1a0-ghc-nats-1.1.2.drv...
==> qemu: applying 25 grafts for /gnu/store/wcrplzaal5i3v00kmca81q6ccikxp3gz-ghc-unordered-containers-0.2.9.0.drv...
==> qemu: applying 7 grafts for /gnu/store/z3k5fcznzf78kwmbm8smi2b5jissxcr7-librsvg-2.40.20.drv...
==> qemu: applying 6 grafts for /gnu/store/hifd51jsspprm0xkbfpi1zl8wvgh0iar-ghc-semigroups-0.18.5.drv...
==> qemu: applying 2 grafts for /gnu/store/5brsdqcaj3mcyqbqpd8dh913igrcrjp8-gdk-pixbuf+svg-2.38.1.drv...
==> qemu: applying 2 grafts for /gnu/store/d6b9gjbxxm8j1yr107jmwz4hg1b1jmvb-libxfont-2.0.3.drv...
==> qemu: applying 1 graft for /gnu/store/9z5sqc0kz80dh47hmfccm340zfm5556x-mkfontscale-1.2.1.drv...
==> qemu: applying 2 grafts for /gnu/store/al3dx3gqgvmz5jaz562vrpww76nmcyfx-openjpeg-2.3.1.drv...
==> qemu: applying 1 graft for /gnu/store/3x42c8gphp0lzgcvr23yfa3rbjlyqdbd-mkfontdir-1.0.7.drv...
==> qemu: applying 1 graft for /gnu/store/n31fs92pdznbhhm7xrxcn9rfxhc8i6gc-openldap-2.4.46.drv...
==> qemu: applying 1 graft for /gnu/store/car7hkz79n3cq3ri2kg5fk309vfdc8lr-perl-net-ssleay-1.85.drv...
==> qemu: applying 2 grafts for /gnu/store/5cx9y4jhxgwdcdmy461s30w80p4jp1z1-curl-7.64.0.drv...
==> qemu: applying 7 grafts for /gnu/store/41bh65arwics1pdis4ahmy9qa3whcy3s-poppler-0.72.0.drv...
==> qemu: applying 2 grafts for /gnu/store/fi8lcj5j3bpvwzyhrp40pq13knq923z3-python-3.7.0.drv...
==> qemu: applying 1 graft for /gnu/store/4gj24fhlpmylpd9vjq8669mv9scb8mz7-qpdf-8.4.0.drv...
==> qemu: applying 1 graft for /gnu/store/0xddk5sm19cgf90q1fslly809rlw4zzc-python-wrapper-3.7.0.drv...
==> qemu: applying 7 grafts for /gnu/store/cxmj4gvjd7pvgk88320ya7a7r6i33n3b-cups-filters-1.22.3.drv...
==> qemu: applying 1 graft for /gnu/store/9pclz9ag1s82miydbgr4pwxgxxmk58xk-glib-2.56.3.drv...
==> qemu: applying 1 graft for /gnu/store/w7amxf9r9lhz7ik5wmzdlhv865lv5ras-cups-2.2.11.drv...
==> qemu: applying 1 graft for /gnu/store/421mvfr54yl41hzrshrfij246gkmylfa-python-pysocks-1.6.8.drv...
==> qemu: applying 1 graft for /gnu/store/zlmz33gdfc52s116m8fkq8pgv65v7ib0-python-requests-2.7.0.drv...
==> qemu: applying 1 graft for /gnu/store/7fl0259fbww69myaj2hb5c7lcdmiz71h-python-texttable-0.8.7.drv...
==> qemu: building /gnu/store/m83szyv06jnf6dnywa01cqrvl0zqcg6w-raw-initrd.drv...
==> qemu: applying 3 grafts for /gnu/store/x8pqz850431fiyjl1c15yb0jxc3wx1j4-serf-1.3.9.drv...
==> qemu: building /gnu/store/pzqf4l8gf6fd1y6ycx9kf55givmydjf4-parameters.drv...
==> qemu: building /gnu/store/sis81fv3b3b78ap0ar5k29wym7ms6vv7-shells.drv...
==> qemu: building /gnu/store/sjcbfpa07wv7r1rcypvf0cfqhdr8sz3c-shepherd-containerd.scm.drv...
==> qemu: building /gnu/store/4a83apv59kx7vdnrqlzvy8zh3bq8qa7p-shepherd-elogind.scm.drv...
==> qemu: building /gnu/store/m2vrxvyk2lllnnbwi77hnglmxs8xkhja-shepherd-file-system--run-systemd.scm.drv...
==> qemu: building /gnu/store/k5xi8lvvi6xymyamk1462ymdk2jb36ag-shepherd-file-system--run-user.scm.drv...
==> qemu: building /gnu/store/xngrw65hp460k4s9pc1kgac8blwpmy7l-shepherd-file-system--sys-fs-cgroup-blkio.scm.drv...
==> qemu: building /gnu/store/pz6qhpj0ac28cvdhbaw18gyaq0bb0y2b-shepherd-file-system--sys-fs-cgroup-cpu.scm.drv...
==> qemu: building /gnu/store/y7i5bz68c44h9w2yf9v6w6sj6pglxq1y-shepherd-file-system--sys-fs-cgroup-cpuacct.scm.drv...
==> qemu: building /gnu/store/ghrim35709jmvffdwzjh6k8m2nqn4kj2-shepherd-file-system--sys-fs-cgroup-cpuset.scm.drv...
==> qemu: building /gnu/store/z2zg092mnfkqpbmgp6a8izd6vhviyr5q-shepherd-file-system--sys-fs-cgroup-devices.scm.drv...
==> qemu: building /gnu/store/6mq4cnl4sin9chhkgxjqy7k79g7478y9-shepherd-file-system--sys-fs-cgroup-elogind.scm.drv...
==> qemu: building /gnu/store/yr5bazk4bpdlkx5gdvzqrkf50y3lg1ww-shepherd-file-system--sys-fs-cgroup-freezer.scm.drv...
==> qemu: building /gnu/store/fqi8yv90pil045a1clgm7lfqpx3cnjwr-shepherd-file-system--sys-fs-cgroup-memory.scm.drv...
==> qemu: building /gnu/store/02s2snkpwb67z6x9fsf3qajfslq6igb6-shepherd-file-system--sys-fs-cgroup-perf_event.scm.drv...
==> qemu: building /gnu/store/s6vl198r9nj3i40zmklnwdrs4kpxpigq-shepherd-file-system--sys-fs-cgroup.scm.drv...
==> qemu: building /gnu/store/jr6wvidvw3bn88s7vbz830rbhcpk4ngf-shepherd-file-systems.scm.drv...
==> qemu: building /gnu/store/04a4y8d1x4if9agry7h3ha1v1mnza086-shepherd-guix-daemon.scm.drv...
==> qemu: building /gnu/store/25p1l34b9cab9if4a0fzw1m6745y07hq-shepherd-host-name.scm.drv...
==> qemu: building /gnu/store/fddny2wjwmssnlwd7pw03xzcn9qcypxk-shepherd-ssh-daemon.scm.drv...
==> qemu: building /gnu/store/7jm0xgp9yn8953c5ah3iam9js1yz3q8f-shepherd-user-file-systems.scm.drv...
==> qemu: building /gnu/store/an5sy5m49yhfgddmjv76y6zwln2w4xw0-shepherd-user-homes.scm.drv...
==> qemu: applying 4 grafts for /gnu/store/iizflsz8kqpyq4ll5w9w31dydgf9w5s6-slim-1.3.6.drv...
==> qemu: building /gnu/store/3lp0bbsg2nvzysv40zdn1cva41v9wd13-slim.drv...
==> qemu: building /gnu/store/hap79byp5aaqf3zn4jiwyawa8rmrz3i9-slock.drv...
==> qemu: building /gnu/store/29qgpc3pqnfvjkdmbw1nqlyxg6anf5vs-sshd.drv...
==> qemu: applying 5 grafts for /gnu/store/615vcn1z7qwxggf98mrakl0s0z4djcn5-subversion-1.10.4.drv...
==> qemu: building /gnu/store/z1kq891k0y67y2hbsf636ngm3yp59mly-pam.d.drv...
==> qemu: applying 2 grafts for /gnu/store/57fhqj7j8zpzvss7m24r3p8ciy7vrcv4-tk-8.6.8.drv...
==> qemu: building /gnu/store/qnw441hl80ba0bqpxhgm3kwyr62cx9yg-etc.drv...
==> qemu: applying 3 grafts for /gnu/store/ynbb01ym0n82f3zidzk0dvpbndm8qrqc-python-3.7.0.drv...
==> qemu: building /gnu/store/0vdwgsazjdlvjrxi5q26mw4vjx08ay54-activate-service.drv...
==> qemu: applying 1 graft for /gnu/store/1mn14kgs24x6qrbyqsph1p0pq88f0swn-python-cffi-1.11.5.drv...
==> qemu: building /gnu/store/g6zfsr2v60n4yqfn81dfm30azswfiyxp-activate.drv...
==> qemu: applying 2 grafts for /gnu/store/v39rrxvkjlmr3fk2fv276g2la3dg3rlb-python-coverage-4.4.1.drv...
==> qemu: applying 2 grafts for /gnu/store/dvrn4cs44gb31hhzk3k45flp7k16a3nd-python-cryptography-2.6.1.drv...
==> qemu: applying 2 grafts for /gnu/store/f2nxp38xnarvs4l5z3mdp93cy66nw33i-python-docutils-0.14.drv...
==> qemu: applying 2 grafts for /gnu/store/1h1pvcp4sphj749f42qrdxcjsd1879za-python-nose-1.3.7.drv...
==> qemu: applying 2 grafts for /gnu/store/yifjr3d07y3b9p99hd7fpd7mlf0cll5j-python-pbr-minimal-3.0.1.drv...
==> qemu: applying 2 grafts for /gnu/store/1hg29l32rpxsbqpr09i41smij347aj87-python-pygments-2.2.0.drv...
==> qemu: applying 1 graft for /gnu/store/h3q2qixzh5nmylihyrfb14p7nmic6pj9-python-pyrsistent-0.14.11.drv...
==> qemu: applying 5 grafts for /gnu/store/10pw3xhfb23m894vgy1vvwn4zhk8406g-python-m2r-0.2.1.drv...
==> qemu: applying 2 grafts for /gnu/store/h40fvq2fd65cw8fb00sm17p6l361n8pm-python-pytest-bootstrap-3.8.0.drv...
==> qemu: applying 4 grafts for /gnu/store/r5gs2nmp1r1c1vhlczik8ncdfp0srlni-python-automat-0.7.0.drv...
==> qemu: applying 6 grafts for /gnu/store/zc25j6r9kn0pyafa2yammlam4zhrcx45-python-pytest-3.8.0.drv...
==> qemu: applying 1 graft for /gnu/store/iiwcsrw94cg9lc9vnbqb9dqq5wy7wk9a-python-pyyaml-3.13.drv...
==> qemu: applying 4 grafts for /gnu/store/n4rwzqrr2n8al32m936wpyr38bblvadk-python-chardet-3.0.4.drv...
==> qemu: applying 2 grafts for /gnu/store/qbvg6y02h7jiashccnp8rzbvdfpm5lrv-python-websocket-client-0.54.0.drv...
==> qemu: applying 1 graft for /gnu/store/4swsaql4ncla5h4cq0jmiwvby4gynx9d-python-zope-interface-4.6.0.drv...
==> qemu: applying 3 grafts for /gnu/store/i0bb6wvipr7nnmwp05p7ms6bkwxyr58x-python2-2.7.15.drv...
==> qemu: applying 4 grafts for /gnu/store/55pg0zxq37irgs8fhxbpgx3vap1dxw9y-python-twisted-19.2.0.drv...
==> qemu: applying 3 grafts for /gnu/store/acqnsdnccbkbql1q485lasi631sxbbmm-git-2.21.0.drv...
==> qemu: applying 6 grafts for /gnu/store/xrhjlibn2xm4yjk99hd992ss0gi2nnvi-git-2.21.0.drv...
==> qemu: applying 1 graft for /gnu/store/i511k0rhzlk2zxr8nf7mz2g3hyczwqa5-docker-18.09.5.drv...
==> qemu: applying 1 graft for /gnu/store/s9hpkzs2fnavbpr07pyyzlw240vy2ggl-libevent-2.1.8.drv...
==> qemu: applying 1 graft for /gnu/store/783mzdca5q78nfl9jwhbzkykfmvbrwm3-llvm-7.0.1.drv...
==> qemu: applying 6 grafts for /gnu/store/g698ybkv6g27mr06s8d4zd06pmafnhgq-python-jsonschema-3.0.1.drv...
==> qemu: applying 1 graft for /gnu/store/8bhhac104i5ldfcmzj4bh5qf4vw7qysn-mesa-18.3.5.drv...
==> qemu: applying 12 grafts for /gnu/store/0k3hjzyxrs4r5awhr11m3pw27jha6jxa-docker-compose-1.5.2.drv...
==> qemu: applying 1 graft for /gnu/store/6gwk57j2flcxy6lbsjwbxckh5afd7jm4-libepoxy-1.5.3.drv...
==> qemu: building /gnu/store/4d9zgnmbhajnrrsppk5cnw4hw52fjw6y-shepherd-dockerd.scm.drv...
==> qemu: applying 9 grafts for /gnu/store/qnhswbs5hh2x8r7i40ws10r7grri67sq-gtk+-3.24.7.drv...
==> qemu: applying 1 graft for /gnu/store/0j7swmy5dbkvr01ra4sd8k5w0wlz0dz8-tmux-2.9.drv...
==> qemu: applying 1 graft for /gnu/store/48gdqik78w07bsjcck90w3sgajvv3ss2-libwacom-0.33.drv...
==> qemu: building /gnu/store/xijjg745hd741fswaa4a1gdnjhascpk7-udev-rules.drv...
==> qemu: applying 4 grafts for /gnu/store/2k4x9xs1mrf2lwhkx30wryz8r5ynismj-libinput-1.13.0.drv...
==> qemu: building /gnu/store/xxxcl2b7vswy2qypgsjd1jzlalyhgprw-udev.conf.drv...
==> qemu: applying 1 graft for /gnu/store/3wzibhvdg6vdzf53309das0xddicw1mh-xf86-input-libinput-0.28.2.drv...
==> qemu: building /gnu/store/43hnab3dv2mlmb7hph9dyfa110blvlr5-shepherd-udev.scm.drv...
==> qemu: building /gnu/store/4c4xpyr10qkprlh8agasb8pqz2a74c0k-xinitrc.drv...
==> qemu: applying 18 grafts for /gnu/store/6lvnc1bqijl566gf9xgp1d1366jjjdfx-xmonad-0.15.drv...
==> qemu: applying 5 grafts for /gnu/store/jv1bwj9in5irc3a7kjar0nxfp4afngmp-xorg-server-1.20.4.drv...
==> qemu: applying 3 grafts for /gnu/store/jh8ra855i18kbix3ha2scqnsqmxmsq45-xterm-335.drv...
==> qemu: applying 1 graft for /gnu/store/yi8hbkbnsmhmva5bb8lqpmg1psdc5v9s-xf86-input-keyboard-1.9.0.drv...
==> qemu: building CA certificate bundle...
==> qemu: building fonts directory...
==> qemu: generating GLib schema cache...
==> qemu: building directory of Info manuals...
==> qemu: building database for manual pages...
==> qemu: 100% [#########################################################################]building XDG desktop file cache...
==> qemu: building XDG MIME database...
==> qemu: applying 2 grafts for /gnu/store/ba91kka4nag3cqv5s5pp54l5dc8bl65a-xf86-video-amdgpu-19.0.1.drv...
==> qemu: building /gnu/store/zbjy4drk136flipakqdny3k7sv4w8ss9-profile.drv...
==> qemu: applying 1 graft for /gnu/store/bycbfkm9q4lhifv3lmfnq9asvr1nm48k-xf86-video-ati-19.0.1.drv...
==> qemu: applying 2 grafts for /gnu/store/rjz6h5b58df0q1xlmg6alyyf7nsmczy3-xf86-video-intel-2.99.917-13.6afed33.drv...
==> qemu: applying 1 graft for /gnu/store/0gsmqvpyly69hlc6kmbi8kzxhzndy63j-xf86-video-nouveau-1.0.16.drv...
==> qemu: building /gnu/store/pjclnlvry8zq3pndkc7iybdlr4lkcsyr-xorg.conf.d.drv...
==> qemu: building /gnu/store/hk55x2a2z2p2bjn47hl6akbiicgbhrmf-xserver.conf.drv...
==> qemu: building /gnu/store/b0l8f8m1a547pxr741ls6fsliqdh9yvr-X-wrapper.drv...
==> qemu: building /gnu/store/9wbgxh178nxscbifxvbmvsihjika7bib-startx.drv...
==> qemu: building /gnu/store/689l58zzgfzxzp8psk09zkr47g82yfiy-slim.cfg.drv...
==> qemu: building /gnu/store/vfz9l2iaazyi852iz0wsgh8d0dwk2k4p-shepherd-xorg-server-xorg-server-vt7.scm.drv...
==> qemu: building /gnu/store/q4m73gfp6k4l8dw2jvy269lflwkfz8mn-shepherd.conf.drv...
==> qemu: building /gnu/store/8sjafiyhg3j95s597c6icb41i17zmz8w-boot.drv...
==> qemu: building /gnu/store/a4x92as8z25mmf63zm66sfx78ck3qqp2-system.drv...
==> qemu: building /gnu/store/kjynahmw3xs58ydi3smda6468my733hy-grub.cfg.drv...
    qemu: /gnu/store/zl7m74n5is3samyz9g6892rpqx0qxgjz-system
    qemu: /gnu/store/igdfh72wqzjrivkjmcpjc52psx4pm2lb-grub.cfg
    qemu: /gnu/store/8wvyv14lvvfgq57929b3x0ai6mlwr5lp-bootloader-installer
    qemu:
    qemu: initializing operating system under '/mnt/'...
==> qemu: copying to '/mnt'...
    qemu: populating '/mnt'...
    qemu: bootloader successfully installed on '/dev/vda'
==> qemu: + sync
2020/01/13 22:14:06 packer-1.5.1 plugin: [INFO] RPC endpoint: Communicator ended with: 0
2020/01/13 22:14:06 [INFO] 322 bytes written for 'stdout'
2020/01/13 22:14:06 [INFO] 473827 bytes written for 'stderr'
2020/01/13 22:14:06 [INFO] RPC client: Communicator ended with: 0
2020/01/13 22:14:06 [INFO] RPC endpoint: Communicator ended with: 0
2020/01/13 22:14:06 packer-1.5.1 plugin: [INFO] 473827 bytes written for 'stderr'
2020/01/13 22:14:06 packer-1.5.1 plugin: [INFO] 322 bytes written for 'stdout'
2020/01/13 22:14:06 packer-1.5.1 plugin: [INFO] RPC client: Communicator ended with: 0
2020/01/13 22:14:06 packer-1.5.1 plugin: [DEBUG] Opening new ssh session
2020/01/13 22:14:06 packer-1.5.1 plugin: [DEBUG] starting remote command: rm -f /tmp/script_6940.sh
2020/01/13 22:14:06 packer-1.5.1 plugin: [INFO] RPC endpoint: Communicator ended with: 0
2020/01/13 22:14:06 [INFO] RPC client: Communicator ended with: 0
2020/01/13 22:14:06 [INFO] RPC endpoint: Communicator ended with: 0
2020/01/13 22:14:06 packer-1.5.1 plugin: [INFO] RPC client: Communicator ended with: 0
2020/01/13 22:14:06 packer-1.5.1 plugin: [DEBUG] Opening new ssh session
2020/01/13 22:14:06 packer-1.5.1 plugin: [DEBUG] starting remote command: rm -f
2020/01/13 22:14:06 packer-1.5.1 plugin: [INFO] RPC endpoint: Communicator ended with: 0
2020/01/13 22:14:06 [INFO] RPC client: Communicator ended with: 0
2020/01/13 22:14:06 [INFO] RPC endpoint: Communicator ended with: 0
2020/01/13 22:14:06 packer-1.5.1 plugin: [INFO] RPC client: Communicator ended with: 0
==> qemu: Provisioning with shell script: remote-exec/05-cleanup.sh
2020/01/13 22:14:06 packer-1.5.1 plugin: Opening remote-exec/05-cleanup.sh for reading
2020/01/13 22:14:06 packer-1.5.1 plugin: [INFO] 172 bytes written for 'uploadData'
2020/01/13 22:14:06 [INFO] 172 bytes written for 'uploadData'
2020/01/13 22:14:06 packer-1.5.1 plugin: [DEBUG] Opening new ssh session
2020/01/13 22:14:06 packer-1.5.1 plugin: [DEBUG] Starting remote scp process:  scp -vt /tmp
2020/01/13 22:14:06 packer-1.5.1 plugin: [DEBUG] Started SCP session, beginning transfers...
2020/01/13 22:14:06 packer-1.5.1 plugin: [DEBUG] Copying input data into temporary file so we can read the length
2020/01/13 22:14:06 packer-1.5.1 plugin: [DEBUG] scp: Uploading script_6940.sh: perms=C0644 size=172
2020/01/13 22:14:06 packer-1.5.1 plugin: [DEBUG] SCP session complete, closing stdin pipe.
2020/01/13 22:14:06 packer-1.5.1 plugin: [DEBUG] Waiting for SSH session to complete.
2020/01/13 22:14:06 packer-1.5.1 plugin: [DEBUG] scp stderr (length 31): Sink: C0644 172 script_6940.sh
2020/01/13 22:14:06 packer-1.5.1 plugin: [DEBUG] Opening new ssh session
2020/01/13 22:14:06 packer-1.5.1 plugin: [DEBUG] starting remote command: chmod 0755 /tmp/script_6940.sh
2020/01/13 22:14:06 packer-1.5.1 plugin: [INFO] RPC endpoint: Communicator ended with: 0
2020/01/13 22:14:06 [INFO] RPC client: Communicator ended with: 0
2020/01/13 22:14:06 [INFO] RPC endpoint: Communicator ended with: 0
2020/01/13 22:14:06 packer-1.5.1 plugin: [INFO] RPC client: Communicator ended with: 0
2020/01/13 22:14:06 packer-1.5.1 plugin: [DEBUG] Opening new ssh session
2020/01/13 22:14:06 packer-1.5.1 plugin: [DEBUG] starting remote command: chmod +x /tmp/script_6940.sh; PACKER_BUILDER_TYPE='qemu' PACKER_BUILD_NAME='qemu' PACKER_HTTP_IP='10.0.2.2'  /tmp/script_6940.sh
==> qemu: + dd if=/dev/zero of=/mnt/EMPTY bs=1M
==> qemu: dd: error writing '/mnt/EMPTY': No space left on device
==> qemu: 7258+0 records in
==> qemu: 7257+0 records out
==> qemu: 7609999360 bytes (7.6 GB, 7.1 GiB) copied, 41.803 s, 182 MB/s
==> qemu: + true
==> qemu: + rm -f /mnt/EMPTY
==> qemu: + sync
2020/01/13 22:14:49 packer-1.5.1 plugin: [INFO] RPC endpoint: Communicator ended with: 0
2020/01/13 22:14:49 [INFO] 0 bytes written for 'stdout'
2020/01/13 22:14:49 [INFO] 226 bytes written for 'stderr'
2020/01/13 22:14:49 [INFO] RPC client: Communicator ended with: 0
2020/01/13 22:14:49 [INFO] RPC endpoint: Communicator ended with: 0
2020/01/13 22:14:49 packer-1.5.1 plugin: [INFO] 226 bytes written for 'stderr'
2020/01/13 22:14:49 packer-1.5.1 plugin: [INFO] 0 bytes written for 'stdout'
2020/01/13 22:14:49 packer-1.5.1 plugin: [INFO] RPC client: Communicator ended with: 0
2020/01/13 22:14:49 packer-1.5.1 plugin: [DEBUG] Opening new ssh session
2020/01/13 22:14:49 packer-1.5.1 plugin: [DEBUG] starting remote command: rm -f /tmp/script_6940.sh
2020/01/13 22:14:49 packer-1.5.1 plugin: [INFO] RPC endpoint: Communicator ended with: 0
2020/01/13 22:14:49 [INFO] RPC client: Communicator ended with: 0
2020/01/13 22:14:49 [INFO] RPC endpoint: Communicator ended with: 0
2020/01/13 22:14:49 packer-1.5.1 plugin: [INFO] RPC client: Communicator ended with: 0
2020/01/13 22:14:49 packer-1.5.1 plugin: [DEBUG] Opening new ssh session
2020/01/13 22:14:49 packer-1.5.1 plugin: [DEBUG] starting remote command: rm -f
2020/01/13 22:14:49 packer-1.5.1 plugin: [INFO] RPC endpoint: Communicator ended with: 0
2020/01/13 22:14:49 [INFO] RPC client: Communicator ended with: 0
2020/01/13 22:14:49 [INFO] RPC endpoint: Communicator ended with: 0
2020/01/13 22:14:49 packer-1.5.1 plugin: [INFO] RPC client: Communicator ended with: 0
2020/01/13 22:14:49 [INFO] (telemetry) ending shell
==> qemu: Gracefully halting virtual machine...
2020/01/13 22:14:49 packer-1.5.1 plugin: Executing shutdown command: shutdown
2020/01/13 22:14:49 packer-1.5.1 plugin: [DEBUG] Opening new ssh session
2020/01/13 22:14:49 packer-1.5.1 plugin: [DEBUG] starting remote command: shutdown
2020/01/13 22:15:10 packer-1.5.1 plugin: [ERROR] Remote command exited without exit status or exit signal.
2020/01/13 22:15:10 packer-1.5.1 plugin: Waiting max 5m0s for shutdown to complete
2020/01/13 22:15:10 packer-1.5.1 plugin: VM shut down.
==> qemu: Converting hard drive...
2020/01/13 22:15:10 packer-1.5.1 plugin: Executing qemu-img: []string{"convert", "-O", "qcow2", "/stor/gublyn/_git/terraform-packer-guix-example/packer/guix/output/packer-guix.qcow2", "/stor/gublyn/_git/terraform-packer-guix-example/packer/guix/output/packer-guix.qcow2.convert"}
2020/01/13 22:17:29 packer-1.5.1 plugin: stdout:
2020/01/13 22:17:29 packer-1.5.1 plugin: stderr:
2020/01/13 22:17:30 packer-1.5.1 plugin: failed to unlock port lockfile: close tcp 127.0.0.1:5972: use of closed network connection
2020/01/13 22:17:30 packer-1.5.1 plugin: failed to unlock port lockfile: close tcp 127.0.0.1:2371: use of closed network connection
2020/01/13 22:17:30 [INFO] (telemetry) ending qemu
Build 'qemu' finished.

==> Builds finished. The artifacts of successful builds are:
==> Builds finished. The artifacts of successful builds are:
2020/01/13 22:17:30 machine readable: qemu,artifact-count []string{"1"}
2020/01/13 22:17:30 machine readable: qemu,artifact []string{"0", "builder-id", "transcend.qemu"}
2020/01/13 22:17:30 machine readable: qemu,artifact []string{"0", "id", "VM"}
2020/01/13 22:17:30 machine readable: qemu,artifact []string{"0", "string", "VM files in directory: /stor/gublyn/_git/terraform-packer-guix-example/packer/guix/output"}
2020/01/13 22:17:30 machine readable: qemu,artifact []string{"0", "files-count", "1"}
2020/01/13 22:17:30 machine readable: qemu,artifact []string{"0", "file", "0", "/stor/gublyn/_git/terraform-packer-guix-example/packer/guix/output/packer-guix.qcow2"}
2020/01/13 22:17:30 machine readable: qemu,artifact []string{"0", "end"}
--> qemu: VM files in directory: /stor/gublyn/_git/terraform-packer-guix-example/packer/guix/output
2020/01/13 22:17:30 [INFO] (telemetry) Finalizing.
2020/01/13 22:17:31 waiting for all plugin processes to complete...
2020/01/13 22:17:31 /home/gublyn/go/bin/packer-1.5.1: plugin process exited
2020/01/13 22:17:31 /home/gublyn/go/bin/packer-1.5.1: plugin process exited
make[1]: Leaving directory '/stor/gublyn/_git/terraform-packer-guix-example/packer/guix'
```

## 4. DEPLOY SINGLE GUEST VM

```
$ make
cd /stor/gublyn/_git/terraform-packer-guix-example/packer/guix/ && make build
make[1]: Entering directory '/stor/gublyn/_git/terraform-packer-guix-example/packer/guix'
make[1]: Nothing to be done for 'build'.
make[1]: Leaving directory '/stor/gublyn/_git/terraform-packer-guix-example/packer/guix'
cd /stor/gublyn/_git/terraform-packer-guix-example/terraform/guix/ && (terraform init && terraform apply)

Initializing the backend...

Initializing provider plugins...

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # libvirt_domain.guix will be created
  + resource "libvirt_domain" "guix" {
      + arch        = (known after apply)
      + cpu         = {
          + "mode" = "host-passthrough"
        }
      + emulator    = (known after apply)
      + fw_cfg_name = "opt/com.coreos/config"
      + id          = (known after apply)
      + machine     = (known after apply)
      + memory      = 1024
      + name        = "guix"
      + qemu_agent  = false
      + running     = true
      + vcpu        = 1

      + console {
          + source_host    = "127.0.0.1"
          + source_service = "0"
          + target_port    = "0"
          + target_type    = "serial"
          + type           = "pty"
        }
      + console {
          + source_host    = "127.0.0.1"
          + source_service = "0"
          + target_port    = "1"
          + target_type    = "virtio"
          + type           = "pty"
        }

      + disk {
          + scsi      = false
          + volume_id = (known after apply)
        }

      + graphics {
          + autoport       = true
          + listen_address = "127.0.0.1"
          + listen_type    = "address"
          + type           = "spice"
        }

      + network_interface {
          + addresses      = (known after apply)
          + hostname       = (known after apply)
          + mac            = (known after apply)
          + network_id     = (known after apply)
          + network_name   = (known after apply)
          + wait_for_lease = false
        }

      + video {
          + type = "virtio"
        }
    }

  # libvirt_network.guix will be created
  + resource "libvirt_network" "guix" {
      + addresses = [
          + "10.11.12.0/24",
        ]
      + bridge    = (known after apply)
      + domain    = "guix.local"
      + id        = (known after apply)
      + mode      = "nat"
      + name      = "guix"
    }

  # libvirt_pool.guix will be created
  + resource "libvirt_pool" "guix" {
      + allocation = (known after apply)
      + available  = (known after apply)
      + capacity   = (known after apply)
      + id         = (known after apply)
      + name       = "guix"
      + path       = "/stor/guix"
      + type       = "dir"
    }

  # libvirt_volume.guix will be created
  + resource "libvirt_volume" "guix" {
      + format = "qcow2"
      + id     = (known after apply)
      + name   = "guix"
      + pool   = "guix"
      + size   = (known after apply)
      + source = "./../../packer/guix/output/packer-guix.qcow2"
    }

Plan: 4 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: 
libvirt_pool.guix: Creating...
libvirt_network.guix: Creating...
libvirt_pool.guix: Creation complete after 5s [id=9f3f958c-1a24-41d5-998b-eb348e9c96e1]
libvirt_volume.guix: Creating...
libvirt_network.guix: Creation complete after 5s [id=147ab92f-8a2c-41f3-be6d-76643e276225]
libvirt_volume.guix: Still creating... [10s elapsed]
libvirt_volume.guix: Still creating... [20s elapsed]
libvirt_volume.guix: Still creating... [30s elapsed]
libvirt_volume.guix: Still creating... [40s elapsed]
libvirt_volume.guix: Still creating... [50s elapsed]
libvirt_volume.guix: Still creating... [1m0s elapsed]
libvirt_volume.guix: Still creating... [1m10s elapsed]
libvirt_volume.guix: Still creating... [1m20s elapsed]
libvirt_volume.guix: Still creating... [1m30s elapsed]
libvirt_volume.guix: Still creating... [1m40s elapsed]
libvirt_volume.guix: Still creating... [1m50s elapsed]
libvirt_volume.guix: Still creating... [2m0s elapsed]
libvirt_volume.guix: Still creating... [2m10s elapsed]
libvirt_volume.guix: Still creating... [2m20s elapsed]
libvirt_volume.guix: Still creating... [2m30s elapsed]
libvirt_volume.guix: Still creating... [2m40s elapsed]
libvirt_volume.guix: Still creating... [2m50s elapsed]
libvirt_volume.guix: Still creating... [3m0s elapsed]
libvirt_volume.guix: Creation complete after 3m3s [id=/stor/guix/guix]
libvirt_domain.guix: Creating...
libvirt_domain.guix: Creation complete after 1s [id=5312e072-e509-467f-9bfe-a1237d24f395]

Apply complete! Resources: 4 added, 0 changed, 0 destroyed.
```

## 5. LOGIN INTO GUEST VM

```
$ sudo virsh net-dhcp-leases guix
 Expiry Time           MAC address         Protocol   IP address        Hostname   Client ID or DUID
------------------------------------------------------------------------------------------------------
 2020-01-13 23:29:53   52:54:00:aa:6d:9c   ipv4       10.11.12.160/24   -          -
```

```
$ ssh dolan@10.11.12.160
The authenticity of host '10.11.12.160 (10.11.12.160)' can't be established.
ECDSA key fingerprint is SHA256:keAxl4fFM6Lz4uVpq7IsbRFTIwrCf1UDdO3BUyv/EaA.
Are you sure you want to continue connecting (yes/no)? yes
Warning: Permanently added '10.11.12.160' (ECDSA) to the list of known hosts.
dolan@10.11.12.160's password:
dolan@dolan ~$ uname -a
Linux dolan 5.1.2-gnu #1 SMP 1 x86_64 GNU/Linux
dolan@dolan ~$ guix --version
guix (GNU Guix) 1.0.1
Copyright (C) 2019 the Guix authors
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.
```

![:thinking-face:](https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/160/twitter/233/thinking-face_1f914.png)

[//]: # ( vim:set ts=2 sw=2 et syn=markdown: )

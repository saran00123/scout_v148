.class public Lanet/channel/util/c;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final IPV4_ONLY:I = 0x1

.field public static final IPV6_ONLY:I = 0x2

.field public static final IP_DUAL_STACK:I = 0x3

.field public static final IP_STACK_UNKNOWN:I

.field static final a:[[B

.field static volatile b:Ljava/lang/String;

.field static c:Lanet/channel/util/f;

.field static d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lanet/channel/util/f;",
            ">;"
        }
    .end annotation
.end field

.field static e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x2

    .line 39
    new-array v0, v0, [[B

    const/4 v1, 0x4

    new-array v2, v1, [B

    fill-array-data v2, :array_48

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_4e

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lanet/channel/util/c;->a:[[B

    const/4 v0, 0x0

    .line 48
    sput-object v0, Lanet/channel/util/c;->b:Ljava/lang/String;

    .line 49
    sput-object v0, Lanet/channel/util/c;->c:Lanet/channel/util/f;

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lanet/channel/util/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lanet/channel/util/c;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    :try_start_29
    new-instance v0, Lanet/channel/util/f;

    const-string v1, "64:ff9b::"

    invoke-static {v1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    aget-object v1, v1, v3

    check-cast v1, Ljava/net/Inet6Address;

    const/16 v2, 0x60

    invoke-direct {v0, v1, v2}, Lanet/channel/util/f;-><init>(Ljava/net/Inet6Address;I)V

    sput-object v0, Lanet/channel/util/c;->c:Lanet/channel/util/f;

    .line 56
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getStatus()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v0

    invoke-static {v0}, Lanet/channel/util/c;->b(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lanet/channel/util/c;->b:Ljava/lang/String;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_46} :catch_46

    :catch_46
    return-void

    nop

    :array_48
    .array-data 1
        -0x40t
        0x0t
        0x0t
        -0x56t
    .end array-data

    :array_4e
    .array-data 1
        -0x40t
        0x0t
        0x0t
        -0x55t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)Ljava/lang/String;
    .registers 1

    .line 36
    invoke-static {p0}, Lanet/channel/util/c;->b(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 130
    invoke-static {p0}, Ljava/net/Inet4Address;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    check-cast p0, Ljava/net/Inet4Address;

    .line 131
    invoke-static {p0}, Lanet/channel/util/c;->a(Ljava/net/Inet4Address;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/net/Inet4Address;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_44

    .line 109
    invoke-static {}, Lanet/channel/util/c;->d()Lanet/channel/util/f;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 115
    invoke-virtual {p0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object p0

    .line 116
    iget-object v1, v0, Lanet/channel/util/f;->b:Ljava/net/Inet6Address;

    invoke-virtual {v1}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v1

    .line 119
    iget v0, v0, Lanet/channel/util/f;->a:I

    const/16 v2, 0x8

    div-int/2addr v0, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_19
    add-int v5, v3, v0

    const/16 v6, 0xf

    if-gt v5, v6, :cond_33

    const/4 v6, 0x4

    if-ge v4, v6, :cond_33

    if-ne v5, v2, :cond_25

    goto :goto_30

    .line 123
    :cond_25
    aget-byte v6, v1, v5

    add-int/lit8 v7, v4, 0x1

    aget-byte v4, p0, v4

    or-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v1, v5

    move v4, v7

    :goto_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 126
    :cond_33
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 111
    :cond_3c
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "cannot get nat64 prefix"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 106
    :cond_44
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string v0, "address in null"

    invoke-direct {p0, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method private static a(Ljava/net/InetAddress;)Z
    .registers 2

    .line 324
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method private static b(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)Ljava/lang/String;
    .registers 3

    .line 62
    invoke-virtual {p0}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isWifi()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 63
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getWifiBSSID()Ljava/lang/String;

    move-result-object p0

    .line 64
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p0, ""

    .line 67
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WIFI$"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 68
    :cond_21
    invoke-virtual {p0}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isMobile()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "$"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getApn()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_41
    const-string p0, "UnknownNetwork"

    return-object p0
.end method

.method public static b()Z
    .registers 2

    .line 81
    sget-object v0, Lanet/channel/util/c;->e:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lanet/channel/util/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    .line 82
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method public static c()I
    .registers 2

    .line 86
    sget-object v0, Lanet/channel/util/c;->e:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lanet/channel/util/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_e

    const/4 v0, 0x0

    return v0

    .line 91
    :cond_e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static d()Lanet/channel/util/f;
    .registers 2

    .line 95
    sget-object v0, Lanet/channel/util/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lanet/channel/util/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/util/f;

    if-nez v0, :cond_e

    .line 98
    sget-object v0, Lanet/channel/util/c;->c:Lanet/channel/util/f;

    :cond_e
    return-object v0
.end method

.method public static e()V
    .registers 4

    .line 238
    invoke-static {}, Lanet/channel/AwcnConfig;->isIpv6Enable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    const/4 v0, 0x0

    .line 239
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "awcn.Inet64Util"

    const-string v3, "[startIpStackDetect]ipv6Enable=false"

    invoke-static {v2, v3, v0, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 243
    :cond_12
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getStatus()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v0

    invoke-static {v0}, Lanet/channel/util/c;->b(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lanet/channel/util/c;->b:Ljava/lang/String;

    .line 245
    sget-object v0, Lanet/channel/util/c;->e:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lanet/channel/util/c;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2b

    return-void

    .line 249
    :cond_2b
    invoke-static {}, Lanet/channel/util/c;->j()I

    move-result v0

    .line 250
    sget-object v1, Lanet/channel/util/c;->e:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lanet/channel/util/c;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    new-instance v1, Lanet/channel/statist/NetTypeStat;

    invoke-direct {v1}, Lanet/channel/statist/NetTypeStat;-><init>()V

    .line 253
    iput v0, v1, Lanet/channel/statist/NetTypeStat;->ipStackType:I

    .line 255
    sget-object v2, Lanet/channel/util/c;->b:Ljava/lang/String;

    const/4 v3, 0x2

    if-eq v0, v3, :cond_58

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4a

    goto :goto_58

    .line 295
    :cond_4a
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isTargetProcess()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 296
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v0

    invoke-interface {v0, v1}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    goto :goto_64

    .line 259
    :cond_58
    :goto_58
    new-instance v0, Lanet/channel/util/d;

    invoke-direct {v0, v2, v1}, Lanet/channel/util/d;-><init>(Ljava/lang/String;Lanet/channel/statist/NetTypeStat;)V

    const-wide/16 v1, 0x5dc

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitScheduledTask(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    :cond_64
    :goto_64
    return-void
.end method

.method static synthetic f()I
    .registers 1

    .line 36
    invoke-static {}, Lanet/channel/util/c;->j()I

    move-result v0

    return v0
.end method

.method static synthetic g()Lanet/channel/util/f;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 36
    invoke-static {}, Lanet/channel/util/c;->k()Lanet/channel/util/f;

    move-result-object v0

    return-object v0
.end method

.method private static h()I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 151
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 152
    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_cc

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 154
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v5

    .line 155
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2a

    goto :goto_11

    .line 158
    :cond_2a
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 159
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "find NetworkInterface:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    const-string v8, "awcn.Inet64Util"

    invoke-static {v8, v6, v3, v7}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v6, v4

    :cond_4f
    :goto_4f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_bd

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InterfaceAddress;

    .line 163
    invoke-virtual {v7}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    .line 164
    instance-of v9, v7, Ljava/net/Inet6Address;

    if-eqz v9, :cond_88

    .line 167
    check-cast v7, Ljava/net/Inet6Address;

    .line 168
    invoke-static {v7}, Lanet/channel/util/c;->a(Ljava/net/InetAddress;)Z

    move-result v9

    if-nez v9, :cond_4f

    .line 169
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found IPv6 address:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/net/Inet6Address;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v8, v7, v3, v9}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    or-int/lit8 v6, v6, 0x2

    goto :goto_4f

    .line 172
    :cond_88
    instance-of v9, v7, Ljava/net/Inet4Address;

    if-eqz v9, :cond_4f

    .line 173
    check-cast v7, Ljava/net/Inet4Address;

    .line 174
    invoke-static {v7}, Lanet/channel/util/c;->a(Ljava/net/InetAddress;)Z

    move-result v9

    if-nez v9, :cond_4f

    .line 175
    invoke-virtual {v7}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    const-string v10, "192.168.43."

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4f

    .line 176
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found IPv4 address:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/net/Inet4Address;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v8, v7, v3, v9}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    or-int/lit8 v6, v6, 0x1

    goto :goto_4f

    :cond_bd
    if-eqz v6, :cond_11

    .line 182
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11

    .line 186
    :cond_cc
    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d3

    return v4

    .line 188
    :cond_d3
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e9

    .line 189
    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 193
    :cond_e9
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getStatus()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v1

    invoke-virtual {v1}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isWifi()Z

    move-result v1

    if-eqz v1, :cond_f7

    const-string/jumbo v3, "wlan"

    goto :goto_103

    .line 195
    :cond_f7
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getStatus()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v1

    invoke-virtual {v1}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isMobile()Z

    move-result v1

    if-eqz v1, :cond_103

    const-string v3, "rmnet"

    :cond_103
    :goto_103
    if-eqz v3, :cond_12f

    .line 201
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 202
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10d

    .line 203
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_12f
    const/4 v1, 0x2

    if-ne v4, v1, :cond_146

    const-string/jumbo v1, "v4-wlan0"

    .line 209
    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_146

    .line 210
    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/2addr v4, v0

    :cond_146
    return v4
.end method

.method private static i()I
    .registers 3

    .line 222
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lorg/android/spdy/SpdyVersion;->SPDY3:Lorg/android/spdy/SpdyVersion;

    sget-object v2, Lorg/android/spdy/SpdySessionKind;->NONE_SESSION:Lorg/android/spdy/SpdySessionKind;

    invoke-static {v0, v1, v2}, Lorg/android/spdy/SpdyAgent;->getInstance(Landroid/content/Context;Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;)Lorg/android/spdy/SpdyAgent;

    .line 224
    invoke-static {}, Lorg/android/netutil/UdpConnectType;->testUdpConnectIpv4()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 228
    :goto_14
    invoke-static {}, Lorg/android/netutil/UdpConnectType;->testUdpConnectIpv6()Z

    move-result v1

    if-eqz v1, :cond_1c

    or-int/lit8 v0, v0, 0x2

    :cond_1c
    return v0
.end method

.method private static j()I
    .registers 7

    const-string v0, "awcn.Inet64Util"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 309
    :try_start_4
    invoke-static {}, Lanet/channel/AwcnConfig;->isIpStackDetectByUdpConnect()Z

    move-result v3

    if-eqz v3, :cond_12

    const-string/jumbo v3, "udp_connect"
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_1b

    .line 311
    :try_start_d
    invoke-static {}, Lanet/channel/util/c;->i()I

    move-result v4
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_11} :catch_19

    goto :goto_25

    :cond_12
    :try_start_12
    const-string v3, "interfaces"
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_14} :catch_1b

    .line 314
    :try_start_14
    invoke-static {}, Lanet/channel/util/c;->h()I

    move-result v4
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_18} :catch_19

    goto :goto_25

    :catch_19
    move-exception v4

    goto :goto_1d

    :catch_1b
    move-exception v4

    move-object v3, v1

    .line 317
    :goto_1d
    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "[detectIpStack]error."

    invoke-static {v0, v6, v1, v4, v5}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move v4, v2

    :goto_25
    const/4 v5, 0x4

    .line 319
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "ip stack"

    aput-object v6, v5, v2

    const/4 v2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x2

    const-string v6, "detectType"

    aput-object v6, v5, v2

    const/4 v2, 0x3

    aput-object v3, v5, v2

    const-string/jumbo v2, "startIpStackDetect"

    invoke-static {v0, v2, v1, v5}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4
.end method

.method private static k()Lanet/channel/util/f;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const-string v0, "ipv4only.arpa"

    const/4 v1, 0x0

    .line 333
    :try_start_3
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7} :catch_8

    goto :goto_9

    :catch_8
    move-object v2, v1

    .line 347
    :goto_9
    instance-of v3, v2, Ljava/net/Inet6Address;

    const-string v4, "awcn.Inet64Util"

    const/4 v5, 0x0

    if-eqz v3, :cond_84

    .line 348
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resolved AAAA: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v4, v3, v1, v6}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 351
    array-length v3, v2

    const/16 v4, 0x10

    if-eq v3, v4, :cond_34

    return-object v1

    :cond_34
    const/16 v3, 0xc

    :goto_36
    const/4 v4, 0x1

    if-ltz v3, :cond_67

    .line 360
    aget-byte v6, v2, v3

    sget-object v7, Lanet/channel/util/c;->a:[[B

    aget-object v8, v7, v5

    aget-byte v8, v8, v5

    and-int/2addr v6, v8

    if-eqz v6, :cond_64

    add-int/lit8 v6, v3, 0x1

    .line 362
    aget-byte v6, v2, v6

    if-nez v6, :cond_64

    add-int/lit8 v6, v3, 0x2

    aget-byte v6, v2, v6

    if-nez v6, :cond_64

    add-int/lit8 v6, v3, 0x3

    .line 364
    aget-byte v8, v2, v6

    aget-object v9, v7, v5

    const/4 v10, 0x3

    aget-byte v9, v9, v10

    if-eq v8, v9, :cond_68

    aget-byte v6, v2, v6

    aget-object v7, v7, v4

    aget-byte v7, v7, v10

    if-ne v6, v7, :cond_64

    goto :goto_68

    :cond_64
    add-int/lit8 v3, v3, -0x1

    goto :goto_36

    :cond_67
    move v4, v5

    :cond_68
    :goto_68
    if-eqz v4, :cond_a2

    add-int/lit8 v1, v3, 0x1

    add-int/lit8 v4, v3, 0x2

    add-int/lit8 v6, v3, 0x3

    .line 375
    aput-byte v5, v2, v6

    aput-byte v5, v2, v4

    aput-byte v5, v2, v1

    aput-byte v5, v2, v3

    .line 376
    invoke-static {v0, v2, v5}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object v0

    .line 377
    new-instance v1, Lanet/channel/util/f;

    mul-int/lit8 v3, v3, 0x8

    invoke-direct {v1, v0, v3}, Lanet/channel/util/f;-><init>(Ljava/net/Inet6Address;I)V

    return-object v1

    .line 380
    :cond_84
    instance-of v0, v2, Ljava/net/Inet4Address;

    if-eqz v0, :cond_a2

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resolved A: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v4, v0, v1, v2}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a2
    return-object v1
.end method

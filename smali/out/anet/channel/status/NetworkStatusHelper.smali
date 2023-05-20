.class public Lanet/channel/status/NetworkStatusHelper;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/status/NetworkStatusHelper$INetworkStatusChangeListener;,
        Lanet/channel/status/NetworkStatusHelper$NetworkStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "awcn.NetworkStatusHelper"

.field static listeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lanet/channel/status/NetworkStatusHelper$INetworkStatusChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 58
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lanet/channel/status/NetworkStatusHelper;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addStatusChangeListener(Lanet/channel/status/NetworkStatusHelper$INetworkStatusChangeListener;)V
    .registers 2

    .line 75
    sget-object v0, Lanet/channel/status/NetworkStatusHelper;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getApn()Ljava/lang/String;
    .registers 1

    .line 114
    sget-object v0, Lanet/channel/status/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static getCarrier()Ljava/lang/String;
    .registers 1

    .line 118
    sget-object v0, Lanet/channel/status/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static getDnsServerAddress()Ljava/lang/String;
    .registers 2

    .line 138
    sget-object v0, Lanet/channel/status/b;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 139
    sget-object v0, Lanet/channel/status/b;->l:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 141
    :cond_16
    invoke-static {}, Lanet/channel/status/b;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkSubType()Ljava/lang/String;
    .registers 1

    .line 110
    sget-object v0, Lanet/channel/status/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static getProxyType()Ljava/lang/String;
    .registers 3

    .line 176
    sget-object v0, Lanet/channel/status/b;->c:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .line 177
    sget-object v1, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->WIFI:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-ne v0, v1, :cond_f

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getWifiProxy()Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_f

    const-string v0, "proxy"

    return-object v0

    .line 179
    :cond_f
    invoke-virtual {v0}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isMobile()Z

    move-result v1

    if-eqz v1, :cond_21

    sget-object v1, Lanet/channel/status/b;->e:Ljava/lang/String;

    const-string/jumbo v2, "wap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    return-object v2

    .line 181
    :cond_21
    invoke-virtual {v0}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isMobile()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {}, Lanet/channel/util/g;->a()Lanet/channel/util/g;

    move-result-object v0

    if-eqz v0, :cond_30

    const-string v0, "auth"

    return-object v0

    :cond_30
    const-string v0, ""

    return-object v0
.end method

.method public static getRestrictBackgroundStatus()I
    .registers 1

    .line 244
    invoke-static {}, Lanet/channel/status/b;->g()I

    move-result v0

    return v0
.end method

.method public static getSimOp()Ljava/lang/String;
    .registers 1

    .line 122
    sget-object v0, Lanet/channel/status/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static getStatus()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;
    .registers 1

    .line 101
    sget-object v0, Lanet/channel/status/b;->c:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    return-object v0
.end method

.method public static getUniqueId(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)Ljava/lang/String;
    .registers 3

    .line 231
    invoke-virtual {p0}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isWifi()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_26

    .line 232
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getWifiBSSID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lanet/channel/util/StringUtils;->md5ToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 233
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    move-object p0, v1

    .line 236
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WIFI$"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_45

    .line 237
    :cond_26
    invoke-virtual {p0}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isMobile()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 238
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

    move-result-object v1

    :cond_45
    :goto_45
    return-object v1
.end method

.method public static getWifiBSSID()Ljava/lang/String;
    .registers 1

    .line 130
    sget-object v0, Lanet/channel/status/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static getWifiProxy()Landroid/util/Pair;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 193
    sget-object v0, Lanet/channel/status/b;->c:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    sget-object v1, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->WIFI:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 196
    :cond_8
    sget-object v0, Lanet/channel/status/b;->j:Landroid/util/Pair;

    return-object v0
.end method

.method public static getWifiSSID()Ljava/lang/String;
    .registers 1

    .line 134
    sget-object v0, Lanet/channel/status/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static isConnected()Z
    .registers 3

    .line 145
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x18

    if-lt v0, v2, :cond_c

    .line 146
    sget-boolean v0, Lanet/channel/status/b;->b:Z

    if-eqz v0, :cond_13

    return v1

    .line 150
    :cond_c
    sget-object v0, Lanet/channel/status/b;->c:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    sget-object v2, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->NO:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-eq v0, v2, :cond_13

    return v1

    .line 156
    :cond_13
    :try_start_13
    invoke-static {}, Lanet/channel/status/b;->e()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 157
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1d} :catch_21

    if-eqz v0, :cond_20

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :catch_21
    :goto_21
    return v1
.end method

.method public static isProxy()Z
    .registers 3

    .line 164
    sget-object v0, Lanet/channel/status/b;->c:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .line 165
    sget-object v1, Lanet/channel/status/b;->e:Ljava/lang/String;

    .line 166
    sget-object v2, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->WIFI:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-ne v0, v2, :cond_e

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getWifiProxy()Landroid/util/Pair;

    move-result-object v2

    if-nez v2, :cond_23

    .line 167
    :cond_e
    invoke-virtual {v0}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isMobile()Z

    move-result v0

    if-eqz v0, :cond_25

    const-string/jumbo v0, "wap"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 168
    invoke-static {}, Lanet/channel/util/g;->a()Lanet/channel/util/g;

    move-result-object v0

    if-eqz v0, :cond_25

    :cond_23
    const/4 v0, 0x1

    return v0

    :cond_25
    const/4 v0, 0x0

    return v0
.end method

.method public static isRoaming()Z
    .registers 1

    .line 126
    sget-boolean v0, Lanet/channel/status/b;->k:Z

    return v0
.end method

.method static notifyStatusChanged(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V
    .registers 2

    .line 83
    new-instance v0, Lanet/channel/status/a;

    invoke-direct {v0, p0}, Lanet/channel/status/a;-><init>(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V

    invoke-static {v0}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitScheduledTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static printNetworkDetail()V
    .registers 4

    .line 201
    :try_start_0
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getStatus()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v0

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "\nNetwork detail*******************************\n"

    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Status: "

    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "Subtype: "

    .line 205
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getNetworkSubType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    sget-object v3, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->NO:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-eq v0, v3, :cond_77

    .line 207
    invoke-virtual {v0}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isMobile()Z

    move-result v0

    if-eqz v0, :cond_59

    const-string v0, "Apn: "

    .line 208
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getApn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "Carrier: "

    .line 209
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getCarrier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_77

    :cond_59
    const-string v0, "BSSID: "

    .line 211
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getWifiBSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "SSID: "

    .line 212
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getWifiSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 215
    :cond_77
    :goto_77
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->isProxy()Z

    move-result v0

    if-eqz v0, :cond_ae

    const-string v0, "Proxy: "

    .line 216
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getProxyType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getWifiProxy()Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_ae

    const-string v3, "ProxyHost: "

    .line 219
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "ProxyPort: "

    .line 220
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_ae
    const-string v0, "*********************************************"

    .line 223
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "awcn.NetworkStatusHelper"

    .line 224
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c0} :catch_c0

    :catch_c0
    return-void
.end method

.method public static removeStatusChangeListener(Lanet/channel/status/NetworkStatusHelper$INetworkStatusChangeListener;)V
    .registers 2

    .line 79
    sget-object v0, Lanet/channel/status/NetworkStatusHelper;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static declared-synchronized startListener(Landroid/content/Context;)V
    .registers 3

    const-class v0, Lanet/channel/status/NetworkStatusHelper;

    monitor-enter v0

    if-eqz p0, :cond_11

    .line 65
    :try_start_5
    sput-object p0, Lanet/channel/status/b;->a:Landroid/content/Context;

    .line 66
    invoke-static {}, Lanet/channel/status/b;->a()V

    .line 67
    invoke-static {}, Lanet/channel/status/b;->c()V
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_f

    .line 68
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    goto :goto_19

    .line 63
    :cond_11
    :try_start_11
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v1, "context is null"

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_f

    :goto_19
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public stopListener(Landroid/content/Context;)V
    .registers 2

    .line 71
    invoke-static {}, Lanet/channel/status/b;->b()V

    return-void
.end method

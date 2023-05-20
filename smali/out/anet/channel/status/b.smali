.class Lanet/channel/status/b;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field static volatile a:Landroid/content/Context;

.field static volatile b:Z

.field static volatile c:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

.field static volatile d:Ljava/lang/String;

.field static volatile e:Ljava/lang/String;

.field static volatile f:Ljava/lang/String;

.field static volatile g:Ljava/lang/String;

.field static volatile h:Ljava/lang/String;

.field static volatile i:Ljava/lang/String;

.field static volatile j:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static volatile k:Z

.field static volatile l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private static m:[Ljava/lang/String;

.field private static volatile n:Z

.field private static volatile o:Z

.field private static p:Landroid/net/ConnectivityManager;

.field private static q:Landroid/telephony/TelephonyManager;

.field private static r:Landroid/net/wifi/WifiManager;

.field private static s:Landroid/telephony/SubscriptionManager;

.field private static t:Ljava/lang/reflect/Method;

.field private static u:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "net.dns1"

    const-string v1, "net.dns2"

    const-string v2, "net.dns3"

    const-string v3, "net.dns4"

    .line 41
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lanet/channel/status/b;->m:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 43
    sput-object v0, Lanet/channel/status/b;->a:Landroid/content/Context;

    const/4 v1, 0x0

    .line 45
    sput-boolean v1, Lanet/channel/status/b;->b:Z

    .line 46
    sget-object v2, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->NONE:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    sput-object v2, Lanet/channel/status/b;->c:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    const-string/jumbo v2, "unknown"

    .line 47
    sput-object v2, Lanet/channel/status/b;->d:Ljava/lang/String;

    const-string v3, ""

    .line 48
    sput-object v3, Lanet/channel/status/b;->e:Ljava/lang/String;

    .line 49
    sput-object v3, Lanet/channel/status/b;->f:Ljava/lang/String;

    .line 50
    sput-object v3, Lanet/channel/status/b;->g:Ljava/lang/String;

    .line 51
    sput-object v2, Lanet/channel/status/b;->h:Ljava/lang/String;

    .line 52
    sput-object v3, Lanet/channel/status/b;->i:Ljava/lang/String;

    .line 53
    sput-object v0, Lanet/channel/status/b;->j:Landroid/util/Pair;

    .line 54
    sput-boolean v1, Lanet/channel/status/b;->k:Z

    .line 55
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v2, Lanet/channel/status/b;->l:Ljava/util/List;

    .line 57
    sput-boolean v1, Lanet/channel/status/b;->n:Z

    .line 58
    sput-boolean v1, Lanet/channel/status/b;->o:Z

    .line 59
    sput-object v0, Lanet/channel/status/b;->p:Landroid/net/ConnectivityManager;

    .line 60
    sput-object v0, Lanet/channel/status/b;->q:Landroid/telephony/TelephonyManager;

    .line 61
    sput-object v0, Lanet/channel/status/b;->r:Landroid/net/wifi/WifiManager;

    .line 62
    sput-object v0, Lanet/channel/status/b;->s:Landroid/telephony/SubscriptionManager;

    .line 116
    new-instance v0, Lanet/channel/status/NetworkStatusMonitor$2;

    invoke-direct {v0}, Lanet/channel/status/NetworkStatusMonitor$2;-><init>()V

    sput-object v0, Lanet/channel/status/b;->u:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(ILjava/lang/String;)Lanet/channel/status/NetworkStatusHelper$NetworkStatus;
    .registers 2

    packed-switch p0, :pswitch_data_2e

    const-string p0, "TD-SCDMA"

    .line 213
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2b

    const-string p0, "WCDMA"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2b

    const-string p0, "CDMA2000"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_28

    goto :goto_2b

    .line 211
    :pswitch_1c
    sget-object p0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G5:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    return-object p0

    .line 209
    :pswitch_1f
    sget-object p0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G4:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    return-object p0

    .line 207
    :pswitch_22
    sget-object p0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G3:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    return-object p0

    .line 205
    :pswitch_25
    sget-object p0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G2:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    return-object p0

    .line 216
    :cond_28
    sget-object p0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->NONE:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    return-object p0

    .line 214
    :cond_2b
    :goto_2b
    sget-object p0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G3:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    return-object p0

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_25
        :pswitch_25
        :pswitch_22
        :pswitch_25
        :pswitch_22
        :pswitch_22
        :pswitch_25
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_22
        :pswitch_22
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 221
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string/jumbo v1, "unknown"

    if-nez v0, :cond_59

    .line 222
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "cmwap"

    .line 223
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    return-object v0

    :cond_18
    const-string/jumbo v0, "uniwap"

    .line 225
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    return-object v0

    :cond_22
    const-string v0, "3gwap"

    .line 227
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2b

    return-object v0

    :cond_2b
    const-string v0, "ctwap"

    .line 229
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_34

    return-object v0

    :cond_34
    const-string v0, "cmnet"

    .line 231
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3d

    return-object v0

    :cond_3d
    const-string/jumbo v0, "uninet"

    .line 233
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_47

    return-object v0

    :cond_47
    const-string v0, "3gnet"

    .line 235
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_50

    return-object v0

    :cond_50
    const-string v0, "ctnet"

    .line 237
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_59

    return-object v0

    :cond_59
    return-object v1
.end method

.method static a()V
    .registers 4

    .line 67
    sget-boolean v0, Lanet/channel/status/b;->n:Z

    if-nez v0, :cond_2b

    sget-object v0, Lanet/channel/status/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_2b

    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    :try_start_12
    sget-object v1, Lanet/channel/status/b;->a:Landroid/content/Context;

    sget-object v2, Lanet/channel/status/b;->u:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_1a

    goto :goto_25

    :catch_1a
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 73
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "awcn.NetworkStatusMonitor"

    const-string v3, "registerReceiver failed"

    invoke-static {v2, v3, v0, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    :goto_25
    invoke-static {}, Lanet/channel/status/b;->d()V

    const/4 v0, 0x1

    .line 76
    sput-boolean v0, Lanet/channel/status/b;->n:Z

    :cond_2b
    return-void
.end method

.method private static a(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;Ljava/lang/String;)V
    .registers 2

    .line 192
    sput-object p0, Lanet/channel/status/b;->c:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .line 193
    sput-object p1, Lanet/channel/status/b;->d:Ljava/lang/String;

    const-string p0, ""

    .line 194
    sput-object p0, Lanet/channel/status/b;->e:Ljava/lang/String;

    .line 195
    sput-object p0, Lanet/channel/status/b;->f:Ljava/lang/String;

    .line 196
    sput-object p0, Lanet/channel/status/b;->g:Ljava/lang/String;

    const/4 p1, 0x0

    .line 197
    sput-object p1, Lanet/channel/status/b;->j:Landroid/util/Pair;

    .line 198
    sput-object p0, Lanet/channel/status/b;->h:Ljava/lang/String;

    .line 199
    sput-object p0, Lanet/channel/status/b;->i:Ljava/lang/String;

    return-void
.end method

.method static b()V
    .registers 2

    .line 81
    sget-object v0, Lanet/channel/status/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_b

    .line 82
    sget-object v0, Lanet/channel/status/b;->a:Landroid/content/Context;

    sget-object v1, Lanet/channel/status/b;->u:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_b
    return-void
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 4

    .line 337
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_10

    .line 338
    sget-object v0, Lanet/channel/status/b;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method static c()V
    .registers 3

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_28

    sget-boolean v0, Lanet/channel/status/b;->o:Z

    if-nez v0, :cond_28

    .line 88
    invoke-static {}, Lanet/channel/status/b;->e()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    .line 89
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_19

    move v0, v1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    sput-boolean v0, Lanet/channel/status/b;->b:Z

    .line 91
    sget-object v0, Lanet/channel/status/b;->p:Landroid/net/ConnectivityManager;

    new-instance v2, Lanet/channel/status/c;

    invoke-direct {v2}, Lanet/channel/status/c;-><init>()V

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 112
    sput-boolean v1, Lanet/channel/status/b;->o:Z

    :cond_28
    return-void
.end method

.method static d()V
    .registers 15

    const-string/jumbo v0, "wifi"

    const-string/jumbo v1, "unknown"

    const-string v2, "no network"

    const-string v3, "checkNetworkStatus"

    const/4 v4, 0x0

    .line 132
    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "awcn.NetworkStatusMonitor"

    const/4 v7, 0x0

    const-string v8, "[checkNetworkStatus]"

    invoke-static {v6, v8, v7, v5}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    sget-object v5, Lanet/channel/status/b;->c:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .line 134
    sget-object v8, Lanet/channel/status/b;->e:Ljava/lang/String;

    .line 135
    sget-object v9, Lanet/channel/status/b;->f:Ljava/lang/String;

    const/4 v10, 0x1

    .line 140
    :try_start_1c
    invoke-static {}, Lanet/channel/status/b;->e()Landroid/net/NetworkInfo;

    move-result-object v11
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_20} :catch_23

    move-object v12, v11

    move v11, v4

    goto :goto_32

    :catch_23
    move-exception v11

    :try_start_24
    const-string v12, "getNetworkInfo exception"

    .line 142
    new-array v13, v4, [Ljava/lang/Object;

    invoke-static {v6, v12, v7, v11, v13}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 143
    sget-object v11, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->NONE:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    invoke-static {v11, v1}, Lanet/channel/status/b;->a(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;Ljava/lang/String;)V

    move-object v12, v7

    move v11, v10

    :goto_32
    const/4 v13, 0x2

    if-nez v11, :cond_f4

    if-eqz v12, :cond_e8

    .line 148
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    if-nez v11, :cond_3f

    goto/16 :goto_e8

    :cond_3f
    const/4 v2, 0x6

    .line 152
    new-array v2, v2, [Ljava/lang/Object;

    const-string v11, "info.isConnected"

    aput-object v11, v2, v4

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v2, v10

    const-string v11, "info.isAvailable"

    aput-object v11, v2, v13

    const/4 v11, 0x3

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v2, v11

    const/4 v11, 0x4

    const-string v14, "info.getType"

    aput-object v14, v2, v11

    const/4 v11, 0x5

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v2, v11

    invoke-static {v6, v3, v7, v2}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_a3

    .line 154
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_80} :catch_117

    const-string v2, ""

    if-nez v1, :cond_8a

    :try_start_84
    const-string v1, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 156
    :cond_8a
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-static {v0, v2}, Lanet/channel/status/b;->a(ILjava/lang/String;)Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v0

    invoke-static {v0, v2}, Lanet/channel/status/b;->a(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanet/channel/status/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lanet/channel/status/b;->e:Ljava/lang/String;

    .line 158
    invoke-static {}, Lanet/channel/status/b;->h()V

    goto :goto_de

    .line 159
    :cond_a3
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v10, :cond_d9

    .line 160
    sget-object v1, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->WIFI:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    invoke-static {v1, v0}, Lanet/channel/status/b;->a(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lanet/channel/AwcnConfig;->isWifiInfoEnable()Z

    move-result v1

    if-eqz v1, :cond_ce

    .line 162
    invoke-static {}, Lanet/channel/status/b;->i()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_ce

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 164
    invoke-static {v2}, Lanet/channel/status/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ce

    .line 165
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lanet/channel/status/b;->g:Ljava/lang/String;

    .line 166
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lanet/channel/status/b;->f:Ljava/lang/String;

    .line 169
    :cond_ce
    sput-object v0, Lanet/channel/status/b;->h:Ljava/lang/String;

    sput-object v0, Lanet/channel/status/b;->i:Ljava/lang/String;

    .line 170
    invoke-static {}, Lanet/channel/status/b;->j()Landroid/util/Pair;

    move-result-object v0

    sput-object v0, Lanet/channel/status/b;->j:Landroid/util/Pair;

    goto :goto_de

    .line 172
    :cond_d9
    sget-object v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->NONE:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    invoke-static {v0, v1}, Lanet/channel/status/b;->a(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;Ljava/lang/String;)V

    .line 174
    :goto_de
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    sput-boolean v0, Lanet/channel/status/b;->k:Z

    .line 175
    invoke-static {}, Lanet/channel/util/c;->e()V

    goto :goto_f4

    .line 149
    :cond_e8
    :goto_e8
    sget-object v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->NO:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    invoke-static {v0, v2}, Lanet/channel/status/b;->a(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;Ljava/lang/String;)V

    .line 150
    new-array v0, v10, [Ljava/lang/Object;

    aput-object v2, v0, v4

    invoke-static {v6, v3, v7, v0}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    :cond_f4
    :goto_f4
    sget-object v0, Lanet/channel/status/b;->c:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-ne v0, v5, :cond_108

    sget-object v0, Lanet/channel/status/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_108

    sget-object v0, Lanet/channel/status/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11d

    .line 180
    :cond_108
    invoke-static {v13}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_111

    .line 181
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->printNetworkDetail()V

    .line 184
    :cond_111
    sget-object v0, Lanet/channel/status/b;->c:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    invoke-static {v0}, Lanet/channel/status/NetworkStatusHelper;->notifyStatusChanged(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_116} :catch_117

    goto :goto_11d

    :catch_117
    move-exception v0

    .line 187
    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v6, v3, v7, v0, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_11d
    :goto_11d
    return-void
.end method

.method static e()Landroid/net/NetworkInfo;
    .registers 2

    .line 277
    sget-object v0, Lanet/channel/status/b;->p:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_10

    .line 278
    sget-object v0, Lanet/channel/status/b;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lanet/channel/status/b;->p:Landroid/net/ConnectivityManager;

    .line 280
    :cond_10
    sget-object v0, Lanet/channel/status/b;->p:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method static f()Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.os.SystemProperties"

    .line 310
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x1

    .line 311
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 312
    sget-object v2, Lanet/channel/status/b;->m:[Ljava/lang/String;

    array-length v4, v2

    move v5, v6

    :goto_19
    if-ge v5, v4, :cond_31

    aget-object v7, v2, v5

    .line 313
    new-array v8, v3, [Ljava/lang/Object;

    aput-object v7, v8, v6

    invoke-virtual {v1, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 314
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2b} :catch_31

    if-nez v8, :cond_2e

    return-object v7

    :cond_2e
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    :catch_31
    :cond_31
    return-object v0
.end method

.method static g()I
    .registers 2

    .line 330
    sget-object v0, Lanet/channel/status/b;->p:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_11

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_11

    .line 331
    sget-object v0, Lanet/channel/status/b;->p:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getRestrictBackgroundStatus()I

    move-result v0

    return v0

    :cond_11
    const/4 v0, -0x1

    return v0
.end method

.method private static h()V
    .registers 4

    .line 249
    :try_start_0
    invoke-static {}, Lanet/channel/AwcnConfig;->isCarrierInfoEnable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 253
    invoke-static {v0}, Lanet/channel/status/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    .line 257
    :cond_10
    sget-object v0, Lanet/channel/status/b;->q:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_20

    .line 258
    sget-object v0, Lanet/channel/status/b;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lanet/channel/status/b;->q:Landroid/telephony/TelephonyManager;

    .line 260
    :cond_20
    sget-object v0, Lanet/channel/status/b;->q:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lanet/channel/status/b;->i:Ljava/lang/String;

    .line 262
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_65

    .line 263
    sget-object v0, Lanet/channel/status/b;->s:Landroid/telephony/SubscriptionManager;

    const/4 v1, 0x0

    if-nez v0, :cond_4b

    .line 264
    sget-object v0, Lanet/channel/status/b;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    sput-object v0, Lanet/channel/status/b;->s:Landroid/telephony/SubscriptionManager;

    .line 265
    sget-object v0, Lanet/channel/status/b;->s:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getDefaultDataSubscriptionInfo"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lanet/channel/status/b;->t:Ljava/lang/reflect/Method;

    .line 267
    :cond_4b
    sget-object v0, Lanet/channel/status/b;->t:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_65

    .line 268
    sget-object v0, Lanet/channel/status/b;->t:Ljava/lang/reflect/Method;

    sget-object v2, Lanet/channel/status/b;->s:Landroid/telephony/SubscriptionManager;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 269
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lanet/channel/status/b;->h:Ljava/lang/String;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_65} :catch_65

    :catch_65
    :cond_65
    return-void
.end method

.method private static i()Landroid/net/wifi/WifiInfo;
    .registers 5

    const/4 v0, 0x0

    .line 286
    :try_start_1
    sget-object v1, Lanet/channel/status/b;->r:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_12

    .line 287
    sget-object v1, Lanet/channel/status/b;->a:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    sput-object v1, Lanet/channel/status/b;->r:Landroid/net/wifi/WifiManager;

    .line 289
    :cond_12
    sget-object v1, Lanet/channel/status/b;->r:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_18} :catch_19

    goto :goto_24

    :catch_19
    move-exception v1

    const/4 v2, 0x0

    .line 291
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "awcn.NetworkStatusMonitor"

    const-string v4, "getWifiInfo"

    invoke-static {v3, v4, v0, v1, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_24
    return-object v0
.end method

.method private static j()Landroid/util/Pair;
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

    :try_start_0
    const-string v0, "http.proxyHost"

    .line 298
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, "http.proxyPort"

    .line 300
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 301
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_1e} :catch_1f

    return-object v0

    :catch_1f
    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

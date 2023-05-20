.class public Lanet/channel/strategy/dispatch/DispatchConstants;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static AMDC_SERVER_DOMAIN:[Ljava/lang/String; = null

.field public static AMDC_SERVER_FIX_IP:[[Ljava/lang/String; = null

.field public static final ANDROID:Ljava/lang/String; = "android"

.field public static final APPKEY:Ljava/lang/String; = "appkey"

.field public static final APP_NAME:Ljava/lang/String; = "appName"

.field public static final APP_VERSION:Ljava/lang/String; = "appVersion"

.field public static final BSSID:Ljava/lang/String; = "bssid"

.field public static final CARRIER:Ljava/lang/String; = "carrier"

.field public static final CHANNEL:Ljava/lang/String; = "channel"

.field public static final CONFIG_VERSION:Ljava/lang/String; = "cv"

.field public static final DEVICEID:Ljava/lang/String; = "deviceId"

.field public static final DOMAIN:Ljava/lang/String; = "domain"

.field public static final HOSTS:Ljava/lang/String; = "hosts"

.field public static final LATITUDE:Ljava/lang/String; = "lat"

.field public static final LONGTITUDE:Ljava/lang/String; = "lng"

.field public static final MACHINE:Ljava/lang/String; = "machine"

.field public static final MNC:Ljava/lang/String; = "mnc"

.field public static final NET_TYPE:Ljava/lang/String; = "netType"

.field public static final OTHER:Ljava/lang/String; = "other"

.field public static final PLATFORM:Ljava/lang/String; = "platform"

.field public static final PLATFORM_VERSION:Ljava/lang/String; = "platformVersion"

.field public static final PRE_IP:Ljava/lang/String; = "preIp"

.field public static final SID:Ljava/lang/String; = "sid"

.field public static final SIGN:Ljava/lang/String; = "sign"

.field public static final SIGNTYPE:Ljava/lang/String; = "signType"

.field public static final SIGN_SPLIT_SYMBOL:Ljava/lang/String; = "&"

.field public static final STACK_TYPE:Ljava/lang/String; = "stackType"

.field public static final TIMESTAMP:Ljava/lang/String; = "t"

.field public static final VERSION:Ljava/lang/String; = "v"

.field public static final VER_CODE:Ljava/lang/String; = "5.0"

.field public static initHostArray:[Ljava/lang/String; = null

.field public static final serverPath:Ljava/lang/String; = "/amdc/mobileDispatch"


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v0, 0x0

    .line 46
    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lanet/channel/strategy/dispatch/DispatchConstants;->initHostArray:[Ljava/lang/String;

    const-string v1, "amdc.m.taobao.com"

    const-string v2, "amdc.wapa.taobao.com"

    const-string v3, "amdc.taobao.net"

    .line 48
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lanet/channel/strategy/dispatch/DispatchConstants;->AMDC_SERVER_DOMAIN:[Ljava/lang/String;

    const/4 v1, 0x3

    .line 54
    new-array v1, v1, [[Ljava/lang/String;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const-wide v4, 0x2f4ad91eb0L

    .line 55
    invoke-static {v4, v5}, Lanet/channel/strategy/utils/c;->a(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const-wide v4, 0x2f4ad932d3L

    invoke-static {v4, v5}, Lanet/channel/strategy/utils/c;->a(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    aput-object v3, v1, v0

    new-array v3, v5, [Ljava/lang/String;

    const-wide v6, 0x18aec047e6L

    .line 56
    invoke-static {v6, v7}, Lanet/channel/strategy/utils/c;->a(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    aput-object v3, v1, v5

    const/4 v0, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lanet/channel/strategy/dispatch/DispatchConstants;->AMDC_SERVER_FIX_IP:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAmdcServerDomain()Ljava/lang/String;
    .registers 2

    .line 94
    sget-object v0, Lanet/channel/strategy/dispatch/DispatchConstants;->AMDC_SERVER_DOMAIN:[Ljava/lang/String;

    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getEnv()Lanet/channel/entity/ENV;

    move-result-object v1

    invoke-virtual {v1}, Lanet/channel/entity/ENV;->getEnvMode()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getAmdcServerFixIp()[Ljava/lang/String;
    .registers 2

    .line 106
    sget-object v0, Lanet/channel/strategy/dispatch/DispatchConstants;->AMDC_SERVER_FIX_IP:[[Ljava/lang/String;

    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getEnv()Lanet/channel/entity/ENV;

    move-result-object v1

    invoke-virtual {v1}, Lanet/channel/entity/ENV;->getEnvMode()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static isAmdcServerDomain(Ljava/lang/String;)Z
    .registers 2

    .line 98
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 101
    :cond_8
    invoke-static {}, Lanet/channel/strategy/dispatch/DispatchConstants;->getAmdcServerDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static setAmdcServerDomain([Ljava/lang/String;)V
    .registers 4

    if-eqz p0, :cond_34

    .line 75
    array-length v0, p0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_34

    const/4 v0, 0x0

    .line 78
    :goto_7
    array-length v1, p0

    if-ge v0, v1, :cond_31

    .line 79
    aget-object v1, p0, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 80
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "domains["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] is null or empty"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 83
    :cond_31
    sput-object p0, Lanet/channel/strategy/dispatch/DispatchConstants;->AMDC_SERVER_DOMAIN:[Ljava/lang/String;

    return-void

    .line 76
    :cond_34
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "domains is null or length < 2"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setAmdcServerFixIp([[Ljava/lang/String;)V
    .registers 3

    if-eqz p0, :cond_9

    .line 87
    array-length v0, p0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_9

    .line 90
    sput-object p0, Lanet/channel/strategy/dispatch/DispatchConstants;->AMDC_SERVER_FIX_IP:[[Ljava/lang/String;

    return-void

    .line 88
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ips is null or length < 2"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

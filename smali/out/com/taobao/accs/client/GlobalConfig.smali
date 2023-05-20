.class public Lcom/taobao/accs/client/GlobalConfig;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static enableCookie:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setChannelProcessName(Ljava/lang/String;)V
    .registers 1

    .line 44
    sput-object p0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mChannelProcessName:Ljava/lang/String;

    return-void
.end method

.method public static setControlFrameMaxRetry(I)V
    .registers 1

    .line 26
    sput p0, Lcom/taobao/accs/data/Message;->a:I

    return-void
.end method

.method public static setCurrProcessNameImpl(Lcom/taobao/accs/IProcessName;)V
    .registers 1

    .line 48
    sput-object p0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mProcessNameImpl:Lcom/taobao/accs/IProcessName;

    return-void
.end method

.method public static setEnableForground(Landroid/content/Context;Z)V
    .registers 6

    const/4 v0, 0x2

    .line 59
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "enable"

    aput-object v2, v0, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string v2, "GlobalConfig"

    const-string v3, "setEnableForground"

    invoke-static {v2, v3, v0}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_19

    goto :goto_1b

    :cond_19
    const/16 v1, 0x18

    :goto_1b
    const-string p1, "support_foreground_v"

    .line 64
    invoke-static {p0, p1, v1}, Lcom/taobao/accs/utl/OrangeAdapter;->saveConfigToSP(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setMainProcessName(Ljava/lang/String;)V
    .registers 1

    .line 36
    sput-object p0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mMainProcessName:Ljava/lang/String;

    return-void
.end method

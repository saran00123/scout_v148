.class final Lanetwork/channel/aidl/adapter/f;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 134
    sget-boolean v0, Lanetwork/channel/aidl/adapter/d;->c:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    .line 135
    sput-boolean v0, Lanetwork/channel/aidl/adapter/d;->c:Z

    const/4 v1, 0x0

    .line 136
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "anet.RemoteGetter"

    const-string v3, "binding service timeout. reset status!"

    invoke-static {v2, v3, v1, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.class Lanet/channel/session/j;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lorg/android/spdy/AccsSSLCallback;


# instance fields
.field final synthetic a:Lanet/channel/session/TnetSpdySession;


# direct methods
.method constructor <init>(Lanet/channel/session/TnetSpdySession;)V
    .registers 2

    .line 514
    iput-object p1, p0, Lanet/channel/session/j;->a:Lanet/channel/session/TnetSpdySession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSSLPublicKey(I[B)[B
    .registers 9

    const-string p1, "getSSLPublicKey"

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 519
    :try_start_4
    iget-object v2, p0, Lanet/channel/session/j;->a:Lanet/channel/session/TnetSpdySession;

    iget-object v2, v2, Lanet/channel/session/TnetSpdySession;->G:Lanet/channel/security/ISecurity;

    iget-object v3, p0, Lanet/channel/session/j;->a:Lanet/channel/session/TnetSpdySession;

    invoke-static {v3}, Lanet/channel/session/TnetSpdySession;->d(Lanet/channel/session/TnetSpdySession;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "ASE128"

    const-string/jumbo v5, "tnet_pksg_key"

    invoke-interface {v2, v3, v4, v5, p2}, Lanet/channel/security/ISecurity;->decrypt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p2
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_17} :catch_32

    if-eqz p2, :cond_3b

    const/4 v2, 0x2

    .line 520
    :try_start_1a
    invoke-static {v2}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v2

    if-eqz v2, :cond_3b

    const-string v2, "decrypt"

    const/4 v3, 0x1

    .line 521
    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p2}, Ljava/lang/String;-><init>([B)V

    aput-object v4, v3, v0

    invoke-static {p1, v1, v2, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_2f} :catch_30

    goto :goto_3b

    :catch_30
    move-exception v2

    goto :goto_34

    :catch_32
    move-exception v2

    move-object p2, v1

    .line 524
    :goto_34
    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "awcn.TnetSpdySession"

    invoke-static {v3, p1, v1, v2, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_3b
    :goto_3b
    return-object p2
.end method

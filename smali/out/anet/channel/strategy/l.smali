.class public Lanet/channel/strategy/l;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/strategy/l$d;,
        Lanet/channel/strategy/l$b;,
        Lanet/channel/strategy/l$c;,
        Lanet/channel/strategy/l$a;,
        Lanet/channel/strategy/l$e;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lanet/channel/strategy/l$d;
    .registers 6

    const/4 v0, 0x0

    .line 17
    :try_start_1
    new-instance v1, Lanet/channel/strategy/l$d;

    invoke-direct {v1, p0}, Lanet/channel/strategy/l$d;-><init>(Lorg/json/JSONObject;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_8

    move-object v0, v1

    goto :goto_1f

    :catch_8
    move-exception v1

    const/4 v2, 0x2

    .line 19
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "JSON Content"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    const-string p0, "StrategyResultParser"

    const-string v3, "Parse HttpDns response failed."

    invoke-static {p0, v3, v0, v1, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_1f
    return-object v0
.end method

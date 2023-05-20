.class public Lanet/channel/strategy/l$c;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/strategy/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[Lanet/channel/strategy/l$e;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 7

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "host"

    .line 65
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/strategy/l$c;->a:Ljava/lang/String;

    const-string/jumbo v0, "strategies"

    .line 66
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_2f

    .line 68
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 69
    new-array v1, v0, [Lanet/channel/strategy/l$e;

    iput-object v1, p0, Lanet/channel/strategy/l$c;->b:[Lanet/channel/strategy/l$e;

    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v0, :cond_32

    .line 71
    iget-object v2, p0, Lanet/channel/strategy/l$c;->b:[Lanet/channel/strategy/l$e;

    new-instance v3, Lanet/channel/strategy/l$e;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lanet/channel/strategy/l$e;-><init>(Lorg/json/JSONObject;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_2f
    const/4 p1, 0x0

    .line 74
    iput-object p1, p0, Lanet/channel/strategy/l$c;->b:[Lanet/channel/strategy/l$e;

    :cond_32
    return-void
.end method

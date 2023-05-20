.class public Lanet/channel/strategy/l$d;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/strategy/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[Lanet/channel/strategy/l$b;

.field public final c:[Lanet/channel/strategy/l$c;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:I

.field public final h:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 10

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ip"

    .line 160
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/strategy/l$d;->a:Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "uid"

    .line 161
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lanet/channel/strategy/l$d;->d:Ljava/lang/String;

    const-string/jumbo v1, "utdid"

    .line 162
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lanet/channel/strategy/l$d;->e:Ljava/lang/String;

    const-string v1, "cv"

    .line 163
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lanet/channel/strategy/l$d;->f:I

    const-string v1, "fcl"

    .line 164
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lanet/channel/strategy/l$d;->g:I

    const-string v1, "fct"

    .line 165
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lanet/channel/strategy/l$d;->h:I

    const-string v1, "dns"

    .line 166
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5a

    .line 168
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 169
    new-array v4, v3, [Lanet/channel/strategy/l$b;

    iput-object v4, p0, Lanet/channel/strategy/l$d;->b:[Lanet/channel/strategy/l$b;

    move v4, v2

    :goto_48
    if-ge v4, v3, :cond_5c

    .line 171
    iget-object v5, p0, Lanet/channel/strategy/l$d;->b:[Lanet/channel/strategy/l$b;

    new-instance v6, Lanet/channel/strategy/l$b;

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lanet/channel/strategy/l$b;-><init>(Lorg/json/JSONObject;)V

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_48

    .line 174
    :cond_5a
    iput-object v0, p0, Lanet/channel/strategy/l$d;->b:[Lanet/channel/strategy/l$b;

    :cond_5c
    const-string v1, "hrTask"

    .line 177
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_7e

    .line 179
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 180
    new-array v1, v0, [Lanet/channel/strategy/l$c;

    iput-object v1, p0, Lanet/channel/strategy/l$d;->c:[Lanet/channel/strategy/l$c;

    :goto_6c
    if-ge v2, v0, :cond_80

    .line 182
    iget-object v1, p0, Lanet/channel/strategy/l$d;->c:[Lanet/channel/strategy/l$c;

    new-instance v3, Lanet/channel/strategy/l$c;

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lanet/channel/strategy/l$c;-><init>(Lorg/json/JSONObject;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6c

    .line 185
    :cond_7e
    iput-object v0, p0, Lanet/channel/strategy/l$d;->c:[Lanet/channel/strategy/l$c;

    :cond_80
    return-void
.end method

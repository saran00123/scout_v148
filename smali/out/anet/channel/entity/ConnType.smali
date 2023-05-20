.class public Lanet/channel/entity/ConnType;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/entity/ConnType$TypeLevel;
    }
.end annotation


# static fields
.field public static final H2S:Ljava/lang/String; = "h2s"

.field public static HTTP:Lanet/channel/entity/ConnType; = null

.field public static final HTTP2:Ljava/lang/String; = "http2"

.field public static final HTTP3:Ljava/lang/String; = "http3"

.field public static final HTTP3_1RTT:Ljava/lang/String; = "http3_1rtt"

.field public static final HTTP3_PLAIN:Ljava/lang/String; = "http3plain"

.field public static HTTPS:Lanet/channel/entity/ConnType; = null

.field public static final PK_ACS:Ljava/lang/String; = "acs"

.field public static final PK_AUTO:Ljava/lang/String; = "auto"

.field public static final PK_CDN:Ljava/lang/String; = "cdn"

.field public static final PK_OPEN:Ljava/lang/String; = "open"

.field public static final QUIC:Ljava/lang/String; = "quic"

.field public static final QUIC_PLAIN:Ljava/lang/String; = "quicplain"

.field public static final RTT_0:Ljava/lang/String; = "0rtt"

.field public static final RTT_1:Ljava/lang/String; = "1rtt"

.field public static final SPDY:Ljava/lang/String; = "spdy"

.field private static connTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lanet/channel/strategy/ConnProtocol;",
            "Lanet/channel/entity/ConnType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private name:Ljava/lang/String;

.field private publicKey:Ljava/lang/String;

.field private spdyProtocol:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Lanet/channel/entity/ConnType;

    const-string v1, "http"

    invoke-direct {v0, v1}, Lanet/channel/entity/ConnType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lanet/channel/entity/ConnType;->HTTP:Lanet/channel/entity/ConnType;

    .line 42
    new-instance v0, Lanet/channel/entity/ConnType;

    const-string v1, "https"

    invoke-direct {v0, v1}, Lanet/channel/entity/ConnType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lanet/channel/entity/ConnType;->HTTPS:Lanet/channel/entity/ConnType;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lanet/channel/entity/ConnType;->connTypeMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 47
    iput-object v0, p0, Lanet/channel/entity/ConnType;->name:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lanet/channel/entity/ConnType;->name:Ljava/lang/String;

    return-void
.end method

.method public static compare(Lanet/channel/entity/ConnType;Lanet/channel/entity/ConnType;)I
    .registers 2

    .line 206
    invoke-direct {p0}, Lanet/channel/entity/ConnType;->getPriority()I

    move-result p0

    invoke-direct {p1}, Lanet/channel/entity/ConnType;->getPriority()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private getPriority()I
    .registers 3

    .line 196
    iget v0, p0, Lanet/channel/entity/ConnType;->spdyProtocol:I

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    return v1
.end method

.method public static valueOf(Lanet/channel/strategy/ConnProtocol;)Lanet/channel/entity/ConnType;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 58
    :cond_4
    iget-object v1, p0, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    const-string v2, "http"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 59
    sget-object p0, Lanet/channel/entity/ConnType;->HTTP:Lanet/channel/entity/ConnType;

    return-object p0

    .line 60
    :cond_11
    iget-object v1, p0, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    const-string v2, "https"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 61
    sget-object p0, Lanet/channel/entity/ConnType;->HTTPS:Lanet/channel/entity/ConnType;

    return-object p0

    .line 64
    :cond_1e
    sget-object v1, Lanet/channel/entity/ConnType;->connTypeMap:Ljava/util/Map;

    monitor-enter v1

    .line 65
    :try_start_21
    sget-object v2, Lanet/channel/entity/ConnType;->connTypeMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 66
    sget-object v0, Lanet/channel/entity/ConnType;->connTypeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lanet/channel/entity/ConnType;

    monitor-exit v1

    return-object p0

    .line 69
    :cond_33
    new-instance v2, Lanet/channel/entity/ConnType;

    invoke-virtual {p0}, Lanet/channel/strategy/ConnProtocol;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lanet/channel/entity/ConnType;-><init>(Ljava/lang/String;)V

    .line 70
    iget-object v3, p0, Lanet/channel/strategy/ConnProtocol;->publicKey:Ljava/lang/String;

    iput-object v3, v2, Lanet/channel/entity/ConnType;->publicKey:Ljava/lang/String;

    const-string v3, "http2"

    .line 72
    iget-object v4, p0, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 73
    iget v3, v2, Lanet/channel/entity/ConnType;->spdyProtocol:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Lanet/channel/entity/ConnType;->spdyProtocol:I

    goto/16 :goto_bf

    :cond_52
    const-string/jumbo v3, "spdy"

    .line 74
    iget-object v4, p0, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 75
    iget v3, v2, Lanet/channel/entity/ConnType;->spdyProtocol:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Lanet/channel/entity/ConnType;->spdyProtocol:I

    goto :goto_bf

    :cond_64
    const-string v3, "h2s"

    .line 76
    iget-object v4, p0, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    const/16 v3, 0x28

    .line 77
    iput v3, v2, Lanet/channel/entity/ConnType;->spdyProtocol:I

    goto :goto_bf

    :cond_73
    const-string v3, "quic"

    .line 78
    iget-object v4, p0, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_82

    const/16 v3, 0xc

    .line 79
    iput v3, v2, Lanet/channel/entity/ConnType;->spdyProtocol:I

    goto :goto_bf

    :cond_82
    const-string v3, "quicplain"

    .line 80
    iget-object v4, p0, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_92

    const v3, 0x800c

    .line 81
    iput v3, v2, Lanet/channel/entity/ConnType;->spdyProtocol:I

    goto :goto_bf

    :cond_92
    const-string v3, "http3"

    .line 82
    iget-object v4, p0, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a1

    const/16 v3, 0x100

    .line 83
    iput v3, v2, Lanet/channel/entity/ConnType;->spdyProtocol:I

    goto :goto_bf

    :cond_a1
    const-string v3, "http3_1rtt"

    .line 84
    iget-object v4, p0, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b0

    const/16 v3, 0x2100

    .line 85
    iput v3, v2, Lanet/channel/entity/ConnType;->spdyProtocol:I

    goto :goto_bf

    :cond_b0
    const-string v3, "http3plain"

    .line 86
    iget-object v4, p0, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_bf

    const v3, 0x8100

    .line 87
    iput v3, v2, Lanet/channel/entity/ConnType;->spdyProtocol:I

    .line 91
    :cond_bf
    :goto_bf
    iget v3, v2, Lanet/channel/entity/ConnType;->spdyProtocol:I

    if-nez v3, :cond_c5

    .line 92
    monitor-exit v1

    return-object v0

    .line 95
    :cond_c5
    iget-object v3, p0, Lanet/channel/strategy/ConnProtocol;->publicKey:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f7

    .line 96
    iget v3, v2, Lanet/channel/entity/ConnType;->spdyProtocol:I

    or-int/lit16 v3, v3, 0x80

    iput v3, v2, Lanet/channel/entity/ConnType;->spdyProtocol:I

    const-string v3, "1rtt"

    .line 98
    iget-object v4, p0, Lanet/channel/strategy/ConnProtocol;->rtt:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e4

    .line 99
    iget v0, v2, Lanet/channel/entity/ConnType;->spdyProtocol:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, v2, Lanet/channel/entity/ConnType;->spdyProtocol:I

    goto :goto_f7

    :cond_e4
    const-string v3, "0rtt"

    .line 100
    iget-object v4, p0, Lanet/channel/strategy/ConnProtocol;->rtt:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f5

    .line 101
    iget v0, v2, Lanet/channel/entity/ConnType;->spdyProtocol:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, v2, Lanet/channel/entity/ConnType;->spdyProtocol:I

    goto :goto_f7

    .line 103
    :cond_f5
    monitor-exit v1

    return-object v0

    .line 107
    :cond_f7
    :goto_f7
    sget-object v0, Lanet/channel/entity/ConnType;->connTypeMap:Ljava/util/Map;

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    monitor-exit v1

    return-object v2

    :catchall_fe
    move-exception p0

    .line 109
    monitor-exit v1
    :try_end_100
    .catchall {:try_start_21 .. :try_end_100} :catchall_fe

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eqz p1, :cond_16

    .line 168
    instance-of v0, p1, Lanet/channel/entity/ConnType;

    if-nez v0, :cond_7

    goto :goto_16

    :cond_7
    if-ne p0, p1, :cond_b

    const/4 p1, 0x1

    return p1

    .line 175
    :cond_b
    iget-object v0, p0, Lanet/channel/entity/ConnType;->name:Ljava/lang/String;

    check-cast p1, Lanet/channel/entity/ConnType;

    iget-object p1, p1, Lanet/channel/entity/ConnType;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_16
    :goto_16
    const/4 p1, 0x0

    return p1
.end method

.method public getTnetConType()I
    .registers 2

    .line 113
    iget v0, p0, Lanet/channel/entity/ConnType;->spdyProtocol:I

    return v0
.end method

.method public getTnetPublicKey(Z)I
    .registers 4

    .line 119
    iget-object v0, p0, Lanet/channel/entity/ConnType;->publicKey:Ljava/lang/String;

    const-string v1, "cdn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p1, 0x1

    goto :goto_39

    .line 121
    :cond_c
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getEnv()Lanet/channel/entity/ENV;

    move-result-object v0

    sget-object v1, Lanet/channel/entity/ENV;->TEST:Lanet/channel/entity/ENV;

    if-ne v0, v1, :cond_16

    const/4 p1, 0x0

    goto :goto_39

    .line 123
    :cond_16
    iget-object v0, p0, Lanet/channel/entity/ConnType;->publicKey:Ljava/lang/String;

    const-string v1, "open"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    if-eqz p1, :cond_25

    const/16 p1, 0xb

    goto :goto_39

    :cond_25
    const/16 p1, 0xa

    goto :goto_39

    .line 125
    :cond_28
    iget-object v0, p0, Lanet/channel/entity/ConnType;->publicKey:Ljava/lang/String;

    const-string v1, "acs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    if-eqz p1, :cond_36

    const/4 p1, 0x4

    goto :goto_39

    :cond_36
    const/4 p1, 0x3

    goto :goto_39

    :cond_38
    const/4 p1, -0x1

    :goto_39
    return p1
.end method

.method public getType()I
    .registers 2

    .line 188
    sget-object v0, Lanet/channel/entity/ConnType;->HTTP:Lanet/channel/entity/ConnType;

    invoke-virtual {p0, v0}, Lanet/channel/entity/ConnType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lanet/channel/entity/ConnType;->HTTPS:Lanet/channel/entity/ConnType;

    invoke-virtual {p0, v0}, Lanet/channel/entity/ConnType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_14

    .line 191
    :cond_11
    sget v0, Lanet/channel/entity/c;->a:I

    return v0

    .line 189
    :cond_14
    :goto_14
    sget v0, Lanet/channel/entity/c;->b:I

    return v0
.end method

.method public getTypeLevel()Lanet/channel/entity/ConnType$TypeLevel;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    invoke-virtual {p0}, Lanet/channel/entity/ConnType;->isHttpType()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 181
    sget-object v0, Lanet/channel/entity/ConnType$TypeLevel;->HTTP:Lanet/channel/entity/ConnType$TypeLevel;

    return-object v0

    .line 183
    :cond_9
    sget-object v0, Lanet/channel/entity/ConnType$TypeLevel;->SPDY:Lanet/channel/entity/ConnType$TypeLevel;

    return-object v0
.end method

.method public isH2S()Z
    .registers 3

    .line 137
    iget v0, p0, Lanet/channel/entity/ConnType;->spdyProtocol:I

    const/16 v1, 0x28

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isHTTP3()Z
    .registers 3

    .line 145
    iget v0, p0, Lanet/channel/entity/ConnType;->spdyProtocol:I

    const/16 v1, 0x100

    if-eq v0, v1, :cond_12

    const/16 v1, 0x2100

    if-eq v0, v1, :cond_12

    const v1, 0x8100

    if-ne v0, v1, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    :goto_13
    return v0
.end method

.method public isHttpType()Z
    .registers 2

    .line 149
    sget-object v0, Lanet/channel/entity/ConnType;->HTTP:Lanet/channel/entity/ConnType;

    invoke-virtual {p0, v0}, Lanet/channel/entity/ConnType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lanet/channel/entity/ConnType;->HTTPS:Lanet/channel/entity/ConnType;

    invoke-virtual {p0, v0}, Lanet/channel/entity/ConnType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public isPublicKeyAuto()Z
    .registers 3

    .line 133
    iget-object v0, p0, Lanet/channel/entity/ConnType;->publicKey:Ljava/lang/String;

    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isQuic()Z
    .registers 2

    .line 141
    iget v0, p0, Lanet/channel/entity/ConnType;->spdyProtocol:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isSSL()Z
    .registers 3

    .line 153
    iget v0, p0, Lanet/channel/entity/ConnType;->spdyProtocol:I

    and-int/lit16 v1, v0, 0x80

    if-nez v1, :cond_21

    and-int/lit8 v1, v0, 0x20

    if-nez v1, :cond_21

    const/16 v1, 0xc

    if-eq v0, v1, :cond_21

    const/16 v1, 0x100

    if-eq v0, v1, :cond_21

    const/16 v1, 0x2100

    if-eq v0, v1, :cond_21

    sget-object v0, Lanet/channel/entity/ConnType;->HTTPS:Lanet/channel/entity/ConnType;

    .line 158
    invoke-virtual {p0, v0}, Lanet/channel/entity/ConnType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v0, 0x1

    :goto_22
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 163
    iget-object v0, p0, Lanet/channel/entity/ConnType;->name:Ljava/lang/String;

    return-object v0
.end method

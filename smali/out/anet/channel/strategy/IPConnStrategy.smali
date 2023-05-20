.class Lanet/channel/strategy/IPConnStrategy;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/strategy/IConnStrategy;
.implements Ljava/io/Serializable;


# static fields
.field public static final SOURCE_AMDC:I = 0x0

.field public static final SOURCE_CUSTOMIZED:I = 0x2

.field public static final SOURCE_LOCAL_DNS:I = 0x1

.field public static final TYPE_IP_TO_HOST:I = -0x1

.field public static final TYPE_NORMAL:I = 0x1

.field public static final TYPE_STATIC_BANDWITDH:I


# instance fields
.field volatile a:I

.field volatile b:I

.field transient c:Z

.field public volatile cto:I

.field public volatile heartbeat:I

.field public final ip:Ljava/lang/String;

.field public final port:I

.field public final protocol:Lanet/channel/strategy/ConnProtocol;

.field public volatile retry:I

.field public volatile rto:I


# direct methods
.method private constructor <init>(Ljava/lang/String;ILanet/channel/strategy/ConnProtocol;IIII)V
    .registers 9

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 30
    iput v0, p0, Lanet/channel/strategy/IPConnStrategy;->a:I

    .line 31
    iput v0, p0, Lanet/channel/strategy/IPConnStrategy;->b:I

    .line 56
    iput-object p1, p0, Lanet/channel/strategy/IPConnStrategy;->ip:Ljava/lang/String;

    .line 57
    iput p2, p0, Lanet/channel/strategy/IPConnStrategy;->port:I

    .line 58
    iput-object p3, p0, Lanet/channel/strategy/IPConnStrategy;->protocol:Lanet/channel/strategy/ConnProtocol;

    .line 59
    iput p4, p0, Lanet/channel/strategy/IPConnStrategy;->cto:I

    .line 60
    iput p5, p0, Lanet/channel/strategy/IPConnStrategy;->rto:I

    .line 61
    iput p6, p0, Lanet/channel/strategy/IPConnStrategy;->retry:I

    .line 62
    iput p7, p0, Lanet/channel/strategy/IPConnStrategy;->heartbeat:I

    return-void
.end method

.method static a(Ljava/lang/String;ILanet/channel/strategy/ConnProtocol;IIII)Lanet/channel/strategy/IPConnStrategy;
    .registers 16

    .line 47
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    if-eqz p2, :cond_19

    if-gtz p1, :cond_b

    goto :goto_19

    .line 51
    :cond_b
    new-instance v0, Lanet/channel/strategy/IPConnStrategy;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v1 .. v8}, Lanet/channel/strategy/IPConnStrategy;-><init>(Ljava/lang/String;ILanet/channel/strategy/ConnProtocol;IIII)V

    return-object v0

    :cond_19
    :goto_19
    const/4 p0, 0x0

    return-object p0
.end method

.method static a(Ljava/lang/String;Lanet/channel/strategy/l$a;)Lanet/channel/strategy/IPConnStrategy;
    .registers 9

    .line 36
    invoke-static {p1}, Lanet/channel/strategy/ConnProtocol;->valueOf(Lanet/channel/strategy/l$a;)Lanet/channel/strategy/ConnProtocol;

    move-result-object v2

    if-nez v2, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 41
    :cond_8
    iget v1, p1, Lanet/channel/strategy/l$a;->a:I

    iget v3, p1, Lanet/channel/strategy/l$a;->c:I

    iget v4, p1, Lanet/channel/strategy/l$a;->d:I

    iget v5, p1, Lanet/channel/strategy/l$a;->e:I

    iget v6, p1, Lanet/channel/strategy/l$a;->f:I

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lanet/channel/strategy/IPConnStrategy;->a(Ljava/lang/String;ILanet/channel/strategy/ConnProtocol;IIII)Lanet/channel/strategy/IPConnStrategy;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    .line 127
    instance-of v2, p1, Lanet/channel/strategy/IPConnStrategy;

    if-nez v2, :cond_c

    goto :goto_2b

    .line 131
    :cond_c
    check-cast p1, Lanet/channel/strategy/IPConnStrategy;

    .line 133
    iget v2, p0, Lanet/channel/strategy/IPConnStrategy;->port:I

    iget v3, p1, Lanet/channel/strategy/IPConnStrategy;->port:I

    if-ne v2, v3, :cond_29

    iget-object v2, p0, Lanet/channel/strategy/IPConnStrategy;->ip:Ljava/lang/String;

    iget-object v3, p1, Lanet/channel/strategy/IPConnStrategy;->ip:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lanet/channel/strategy/IPConnStrategy;->protocol:Lanet/channel/strategy/ConnProtocol;

    iget-object p1, p1, Lanet/channel/strategy/IPConnStrategy;->protocol:Lanet/channel/strategy/ConnProtocol;

    invoke-virtual {v2, p1}, Lanet/channel/strategy/ConnProtocol;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v1

    :goto_2a
    return v0

    :cond_2b
    :goto_2b
    return v1
.end method

.method public getConnectionTimeout()I
    .registers 2

    .line 103
    iget v0, p0, Lanet/channel/strategy/IPConnStrategy;->cto:I

    return v0
.end method

.method public getHeartbeat()I
    .registers 2

    .line 118
    iget v0, p0, Lanet/channel/strategy/IPConnStrategy;->heartbeat:I

    return v0
.end method

.method public getIp()Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Lanet/channel/strategy/IPConnStrategy;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getIpSource()I
    .registers 2

    .line 88
    iget v0, p0, Lanet/channel/strategy/IPConnStrategy;->b:I

    return v0
.end method

.method public getIpType()I
    .registers 2

    .line 83
    iget v0, p0, Lanet/channel/strategy/IPConnStrategy;->a:I

    return v0
.end method

.method public getPort()I
    .registers 2

    .line 93
    iget v0, p0, Lanet/channel/strategy/IPConnStrategy;->port:I

    return v0
.end method

.method public getProtocol()Lanet/channel/strategy/ConnProtocol;
    .registers 2

    .line 98
    iget-object v0, p0, Lanet/channel/strategy/IPConnStrategy;->protocol:Lanet/channel/strategy/ConnProtocol;

    return-object v0
.end method

.method public getReadTimeout()I
    .registers 2

    .line 108
    iget v0, p0, Lanet/channel/strategy/IPConnStrategy;->rto:I

    return v0
.end method

.method public getRetryTimes()I
    .registers 2

    .line 113
    iget v0, p0, Lanet/channel/strategy/IPConnStrategy;->retry:I

    return v0
.end method

.method public getUniqueId()I
    .registers 2

    .line 146
    invoke-virtual {p0}, Lanet/channel/strategy/IPConnStrategy;->hashCode()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 139
    iget-object v0, p0, Lanet/channel/strategy/IPConnStrategy;->ip:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 140
    iget v0, p0, Lanet/channel/strategy/IPConnStrategy;->port:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 141
    iget-object v0, p0, Lanet/channel/strategy/IPConnStrategy;->protocol:Lanet/channel/strategy/ConnProtocol;

    invoke-virtual {v0}, Lanet/channel/strategy/ConnProtocol;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x7b

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lanet/channel/strategy/IPConnStrategy;->ip:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget v2, p0, Lanet/channel/strategy/IPConnStrategy;->a:I

    if-nez v2, :cond_1a

    const-string v2, "(*)"

    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :cond_1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lanet/channel/strategy/IPConnStrategy;->port:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanet/channel/strategy/IPConnStrategy;->protocol:Lanet/channel/strategy/ConnProtocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

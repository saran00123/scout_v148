.class public Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;
.super Ljava/lang/Object;
.source "DefaultJWKSetCache.java"

# interfaces
.implements Lcom/nimbusds/jose/jwk/source/JWKSetCache;


# static fields
.field public static final DEFAULT_LIFESPAN_MINUTES:J = 0xfL

.field public static final DEFAULT_REFRESH_TIME_MINUTES:J = 0x5L


# instance fields
.field private jwkSet:Lcom/nimbusds/jose/jwk/JWKSet;

.field private final lifespan:J

.field private putTimestamp:J

.field private final refreshTime:J

.field private final timeUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>()V
    .registers 7

    .line 81
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    const-wide/16 v3, 0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;-><init>(JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(JJLjava/util/concurrent/TimeUnit;)V
    .registers 8

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 72
    iput-wide v0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->putTimestamp:J

    .line 98
    iput-wide p1, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->lifespan:J

    .line 99
    iput-wide p3, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->refreshTime:J

    cmp-long p1, p1, v0

    if-gtz p1, :cond_13

    cmp-long p1, p3, v0

    if-lez p1, :cond_15

    :cond_13
    if-eqz p5, :cond_18

    .line 105
    :cond_15
    iput-object p5, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->timeUnit:Ljava/util/concurrent/TimeUnit;

    return-void

    .line 102
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "A time unit must be specified for non-negative lifespans or refresh times"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public get()Lcom/nimbusds/jose/jwk/JWKSet;
    .registers 2

    .line 132
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->jwkSet:Lcom/nimbusds/jose/jwk/JWKSet;

    .line 136
    :cond_9
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->jwkSet:Lcom/nimbusds/jose/jwk/JWKSet;

    return-object v0
.end method

.method public getLifespan(Ljava/util/concurrent/TimeUnit;)J
    .registers 6

    .line 182
    iget-wide v0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->lifespan:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_9

    return-wide v0

    .line 186
    :cond_9
    iget-object v2, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPutTimestamp()J
    .registers 3

    .line 156
    iget-wide v0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->putTimestamp:J

    return-wide v0
.end method

.method public getRefreshTime(Ljava/util/concurrent/TimeUnit;)J
    .registers 6

    .line 199
    iget-wide v0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->refreshTime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_9

    return-wide v0

    .line 203
    :cond_9
    iget-object v2, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isExpired()Z
    .registers 9

    .line 167
    iget-wide v0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->putTimestamp:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_2a

    iget-wide v0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->lifespan:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2a

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 169
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->putTimestamp:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v5, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->lifespan:J

    iget-object v7, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    return v0
.end method

.method public put(Lcom/nimbusds/jose/jwk/JWKSet;)V
    .registers 4

    .line 118
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->jwkSet:Lcom/nimbusds/jose/jwk/JWKSet;

    if-eqz p1, :cond_10

    .line 121
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->putTimestamp:J

    goto :goto_14

    :cond_10
    const-wide/16 v0, -0x1

    .line 124
    iput-wide v0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->putTimestamp:J

    :goto_14
    return-void
.end method

.method public requiresRefresh()Z
    .registers 9

    .line 143
    iget-wide v0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->putTimestamp:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_2a

    iget-wide v0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->refreshTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2a

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 145
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->putTimestamp:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v5, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->refreshTime:J

    iget-object v7, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    return v0
.end method

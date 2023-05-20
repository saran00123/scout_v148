.class public Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;
.super Ljava/lang/Object;
.source "DefaultJWTClaimsVerifier.java"

# interfaces
.implements Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier;
.implements Lcom/nimbusds/jwt/proc/JWTClaimsVerifier;
.implements Lcom/nimbusds/jwt/proc/ClockSkewAware;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/nimbusds/jose/proc/SecurityContext;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier<",
        "TC;>;",
        "Lcom/nimbusds/jwt/proc/JWTClaimsVerifier;",
        "Lcom/nimbusds/jwt/proc/ClockSkewAware;"
    }
.end annotation

.annotation runtime Lnet/jcip/annotations/ThreadSafe;
.end annotation


# static fields
.field public static final DEFAULT_MAX_CLOCK_SKEW_SECONDS:I = 0x3c


# instance fields
.field private final acceptedAudienceValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final exactMatchClaims:Lcom/nimbusds/jwt/JWTClaimsSet;

.field private maxClockSkew:I

.field private final prohibitedClaims:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final requiredClaims:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;-><init>(Ljava/util/Set;Lcom/nimbusds/jwt/JWTClaimsSet;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jwt/JWTClaimsSet;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jwt/JWTClaimsSet;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, v0, p1, p2, v0}, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;-><init>(Ljava/util/Set;Lcom/nimbusds/jwt/JWTClaimsSet;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/nimbusds/jwt/JWTClaimsSet;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nimbusds/jwt/JWTClaimsSet;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 131
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    goto :goto_9

    :cond_8
    move-object p1, v0

    :goto_9
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;-><init>(Ljava/util/Set;Lcom/nimbusds/jwt/JWTClaimsSet;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Lcom/nimbusds/jwt/JWTClaimsSet;Ljava/util/Set;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/nimbusds/jwt/JWTClaimsSet;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3c

    .line 61
    iput v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->maxClockSkew:I

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    .line 157
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    goto :goto_10

    :cond_f
    move-object p1, v0

    :goto_10
    iput-object p1, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->acceptedAudienceValues:Ljava/util/Set;

    if-eqz p2, :cond_15

    goto :goto_1e

    .line 159
    :cond_15
    new-instance p1, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;

    invoke-direct {p1}, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;->build()Lcom/nimbusds/jwt/JWTClaimsSet;

    move-result-object p2

    :goto_1e
    iput-object p2, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->exactMatchClaims:Lcom/nimbusds/jwt/JWTClaimsSet;

    .line 161
    new-instance p1, Ljava/util/HashSet;

    iget-object p2, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->exactMatchClaims:Lcom/nimbusds/jwt/JWTClaimsSet;

    invoke-virtual {p2}, Lcom/nimbusds/jwt/JWTClaimsSet;->getClaims()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 162
    iget-object p2, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->acceptedAudienceValues:Ljava/util/Set;

    if-eqz p2, :cond_3e

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3e

    const-string p2, "aud"

    .line 164
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3e
    if-eqz p3, :cond_43

    .line 167
    invoke-interface {p1, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 169
    :cond_43
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->requiredClaims:Ljava/util/Set;

    if-eqz p4, :cond_50

    .line 171
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    goto :goto_54

    :cond_50
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    :goto_54
    iput-object p1, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->prohibitedClaims:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public getAcceptedAudienceValues()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->acceptedAudienceValues:Ljava/util/Set;

    return-object v0
.end method

.method public getExactMatchClaims()Lcom/nimbusds/jwt/JWTClaimsSet;
    .registers 2

    .line 193
    iget-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->exactMatchClaims:Lcom/nimbusds/jwt/JWTClaimsSet;

    return-object v0
.end method

.method public getMaxClockSkew()I
    .registers 2

    .line 222
    iget v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->maxClockSkew:I

    return v0
.end method

.method public getProhibitedClaims()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->prohibitedClaims:Ljava/util/Set;

    return-object v0
.end method

.method public getRequiredClaims()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->requiredClaims:Ljava/util/Set;

    return-object v0
.end method

.method public setMaxClockSkew(I)V
    .registers 2

    .line 228
    iput p1, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->maxClockSkew:I

    return-void
.end method

.method public verify(Lcom/nimbusds/jwt/JWTClaimsSet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jwt/proc/BadJWTException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 236
    invoke-virtual {p0, p1, v0}, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->verify(Lcom/nimbusds/jwt/JWTClaimsSet;Lcom/nimbusds/jose/proc/SecurityContext;)V

    return-void
.end method

.method public verify(Lcom/nimbusds/jwt/JWTClaimsSet;Lcom/nimbusds/jose/proc/SecurityContext;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jwt/JWTClaimsSet;",
            "TC;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jwt/proc/BadJWTException;
        }
    .end annotation

    .line 245
    iget-object p2, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->acceptedAudienceValues:Ljava/util/Set;

    if-eqz p2, :cond_56

    .line 246
    invoke-virtual {p1}, Lcom/nimbusds/jwt/JWTClaimsSet;->getAudience()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_44

    .line 247
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_44

    const/4 v0, 0x0

    .line 249
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 250
    iget-object v3, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->acceptedAudienceValues:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v0, 0x1

    :cond_2a
    if-eqz v0, :cond_2d

    goto :goto_56

    .line 256
    :cond_2d
    new-instance p1, Lcom/nimbusds/jwt/proc/BadJWTException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JWT audience rejected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/nimbusds/jwt/proc/BadJWTException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 258
    :cond_44
    iget-object p2, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->acceptedAudienceValues:Ljava/util/Set;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4e

    goto :goto_56

    .line 259
    :cond_4e
    new-instance p1, Lcom/nimbusds/jwt/proc/BadJWTException;

    const-string p2, "JWT missing required audience"

    invoke-direct {p1, p2}, Lcom/nimbusds/jwt/proc/BadJWTException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 264
    :cond_56
    :goto_56
    invoke-virtual {p1}, Lcom/nimbusds/jwt/JWTClaimsSet;->getClaims()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    iget-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->requiredClaims:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_130

    .line 271
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 272
    iget-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->prohibitedClaims:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_71
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 273
    invoke-virtual {p1}, Lcom/nimbusds/jwt/JWTClaimsSet;->getClaims()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 274
    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_8a
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_91

    goto :goto_71

    .line 277
    :cond_91
    new-instance p1, Lcom/nimbusds/jwt/proc/BadJWTException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JWT has prohibited claims: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/nimbusds/jwt/proc/BadJWTException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 282
    :cond_a8
    iget-object p2, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->exactMatchClaims:Lcom/nimbusds/jwt/JWTClaimsSet;

    invoke-virtual {p2}, Lcom/nimbusds/jwt/JWTClaimsSet;->getClaims()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_b6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_fa

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 283
    invoke-virtual {p1, v0}, Lcom/nimbusds/jwt/JWTClaimsSet;->getClaim(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 284
    iget-object v2, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->exactMatchClaims:Lcom/nimbusds/jwt/JWTClaimsSet;

    invoke-virtual {v2, v0}, Lcom/nimbusds/jwt/JWTClaimsSet;->getClaim(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 285
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d3

    goto :goto_b6

    .line 286
    :cond_d3
    new-instance p1, Lcom/nimbusds/jwt/proc/BadJWTException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JWT \""

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" claim has value "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " but should be "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/nimbusds/jwt/proc/BadJWTException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 291
    :cond_fa
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    .line 293
    invoke-virtual {p1}, Lcom/nimbusds/jwt/JWTClaimsSet;->getExpirationTime()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_117

    .line 296
    iget v1, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->maxClockSkew:I

    int-to-long v1, v1

    invoke-static {v0, p2, v1, v2}, Lcom/nimbusds/jwt/util/DateUtils;->isAfter(Ljava/util/Date;Ljava/util/Date;J)Z

    move-result v0

    if-eqz v0, :cond_10f

    goto :goto_117

    .line 297
    :cond_10f
    new-instance p1, Lcom/nimbusds/jwt/proc/BadJWTException;

    const-string p2, "Expired JWT"

    invoke-direct {p1, p2}, Lcom/nimbusds/jwt/proc/BadJWTException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 301
    :cond_117
    :goto_117
    invoke-virtual {p1}, Lcom/nimbusds/jwt/JWTClaimsSet;->getNotBeforeTime()Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_12f

    .line 304
    iget v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->maxClockSkew:I

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Lcom/nimbusds/jwt/util/DateUtils;->isBefore(Ljava/util/Date;Ljava/util/Date;J)Z

    move-result p1

    if-eqz p1, :cond_127

    goto :goto_12f

    .line 305
    :cond_127
    new-instance p1, Lcom/nimbusds/jwt/proc/BadJWTException;

    const-string p2, "JWT before use time"

    invoke-direct {p1, p2}, Lcom/nimbusds/jwt/proc/BadJWTException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12f
    :goto_12f
    return-void

    .line 265
    :cond_130
    new-instance p2, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->requiredClaims:Ljava/util/Set;

    invoke-direct {p2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 266
    invoke-virtual {p1}, Lcom/nimbusds/jwt/JWTClaimsSet;->getClaims()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 267
    new-instance p1, Lcom/nimbusds/jwt/proc/BadJWTException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JWT missing required claims: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/nimbusds/jwt/proc/BadJWTException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

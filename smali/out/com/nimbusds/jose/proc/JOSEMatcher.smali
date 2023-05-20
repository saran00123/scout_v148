.class public Lcom/nimbusds/jose/proc/JOSEMatcher;
.super Ljava/lang/Object;
.source "JOSEMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;
    }
.end annotation


# instance fields
.field private final algs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/Algorithm;",
            ">;"
        }
    .end annotation
.end field

.field private final classes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/nimbusds/jose/JOSEObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private final encs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/EncryptionMethod;",
            ">;"
        }
    .end annotation
.end field

.field private final jkus:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation
.end field

.field private final kids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/nimbusds/jose/JOSEObject;",
            ">;>;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/Algorithm;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/EncryptionMethod;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/net/URI;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    iput-object p1, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->classes:Ljava/util/Set;

    .line 391
    iput-object p2, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->algs:Ljava/util/Set;

    .line 392
    iput-object p3, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->encs:Ljava/util/Set;

    .line 393
    iput-object p4, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->jkus:Ljava/util/Set;

    .line 394
    iput-object p5, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->kids:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public getAlgorithms()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/Algorithm;",
            ">;"
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->algs:Ljava/util/Set;

    return-object v0
.end method

.method public getEncryptionMethods()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/EncryptionMethod;",
            ">;"
        }
    .end annotation

    .line 427
    iget-object v0, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->encs:Ljava/util/Set;

    return-object v0
.end method

.method public getJOSEClasses()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/nimbusds/jose/JOSEObject;",
            ">;>;"
        }
    .end annotation

    .line 405
    iget-object v0, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->classes:Ljava/util/Set;

    return-object v0
.end method

.method public getJWKURLs()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation

    .line 438
    iget-object v0, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->jkus:Ljava/util/Set;

    return-object v0
.end method

.method public getKeyIDs()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 449
    iget-object v0, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->kids:Ljava/util/Set;

    return-object v0
.end method

.method public matches(Lcom/nimbusds/jose/JOSEObject;)Z
    .registers 7

    .line 462
    iget-object v0, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->classes:Ljava/util/Set;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_24

    .line 465
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v2

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    if-eqz v4, :cond_b

    .line 466
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    move v3, v1

    goto :goto_b

    :cond_21
    if-nez v3, :cond_24

    return v2

    .line 476
    :cond_24
    iget-object v0, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->algs:Ljava/util/Set;

    if-eqz v0, :cond_37

    invoke-virtual {p1}, Lcom/nimbusds/jose/JOSEObject;->getHeader()Lcom/nimbusds/jose/Header;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nimbusds/jose/Header;->getAlgorithm()Lcom/nimbusds/jose/Algorithm;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    return v2

    .line 479
    :cond_37
    iget-object v0, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->encs:Ljava/util/Set;

    if-eqz v0, :cond_52

    .line 481
    instance-of v3, p1, Lcom/nimbusds/jose/JWEObject;

    if-nez v3, :cond_40

    return v2

    .line 484
    :cond_40
    move-object v3, p1

    check-cast v3, Lcom/nimbusds/jose/JWEObject;

    .line 486
    invoke-virtual {v3}, Lcom/nimbusds/jose/JWEObject;->getHeader()Lcom/nimbusds/jose/JWEHeader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    return v2

    .line 490
    :cond_52
    iget-object v0, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->jkus:Ljava/util/Set;

    const/4 v3, 0x0

    if-eqz v0, :cond_81

    .line 494
    instance-of v0, p1, Lcom/nimbusds/jose/JWSObject;

    if-eqz v0, :cond_67

    .line 495
    move-object v0, p1

    check-cast v0, Lcom/nimbusds/jose/JWSObject;

    invoke-virtual {v0}, Lcom/nimbusds/jose/JWSObject;->getHeader()Lcom/nimbusds/jose/JWSHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nimbusds/jose/JWSHeader;->getJWKURL()Ljava/net/URI;

    move-result-object v0

    goto :goto_78

    .line 496
    :cond_67
    instance-of v0, p1, Lcom/nimbusds/jose/JWEObject;

    if-eqz v0, :cond_77

    .line 497
    move-object v0, p1

    check-cast v0, Lcom/nimbusds/jose/JWEObject;

    invoke-virtual {v0}, Lcom/nimbusds/jose/JWEObject;->getHeader()Lcom/nimbusds/jose/JWEHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nimbusds/jose/JWEHeader;->getJWKURL()Ljava/net/URI;

    move-result-object v0

    goto :goto_78

    :cond_77
    move-object v0, v3

    .line 503
    :goto_78
    iget-object v4, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->jkus:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_81

    return v2

    .line 507
    :cond_81
    iget-object v0, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->kids:Ljava/util/Set;

    if-eqz v0, :cond_a9

    .line 511
    instance-of v0, p1, Lcom/nimbusds/jose/JWSObject;

    if-eqz v0, :cond_94

    .line 512
    check-cast p1, Lcom/nimbusds/jose/JWSObject;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSObject;->getHeader()Lcom/nimbusds/jose/JWSHeader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getKeyID()Ljava/lang/String;

    move-result-object v3

    goto :goto_a2

    .line 513
    :cond_94
    instance-of v0, p1, Lcom/nimbusds/jose/JWEObject;

    if-eqz v0, :cond_a2

    .line 514
    check-cast p1, Lcom/nimbusds/jose/JWEObject;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEObject;->getHeader()Lcom/nimbusds/jose/JWEHeader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getKeyID()Ljava/lang/String;

    move-result-object v3

    .line 520
    :cond_a2
    :goto_a2
    iget-object p1, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->kids:Ljava/util/Set;

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_a9
    return v1
.end method

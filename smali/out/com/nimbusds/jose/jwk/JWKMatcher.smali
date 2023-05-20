.class public Lcom/nimbusds/jose/jwk/JWKMatcher;
.super Ljava/lang/Object;
.source "JWKMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    }
.end annotation

.annotation runtime Lnet/jcip/annotations/Immutable;
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

.field private final curves:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/Curve;",
            ">;"
        }
    .end annotation
.end field

.field private final hasID:Z

.field private final hasUse:Z

.field private final ids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final maxSizeBits:I

.field private final minSizeBits:I

.field private final ops:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final privateOnly:Z

.field private final publicOnly:Z

.field private final sizesBits:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final types:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyType;",
            ">;"
        }
    .end annotation
.end field

.field private final uses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            ">;"
        }
    .end annotation
.end field

.field private final x5tS256s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/util/Base64URL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZ)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyType;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/Algorithm;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    .line 743
    invoke-direct/range {v0 .. v9}, Lcom/nimbusds/jose/jwk/JWKMatcher;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZII)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZII)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyType;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/Algorithm;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZII)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 778
    invoke-direct/range {v0 .. v10}, Lcom/nimbusds/jose/jwk/JWKMatcher;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZIILjava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZIILjava/util/Set;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyType;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/Algorithm;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZII",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/Curve;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v11, p10

    .line 816
    invoke-direct/range {v0 .. v11}, Lcom/nimbusds/jose/jwk/JWKMatcher;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZIILjava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZIILjava/util/Set;Ljava/util/Set;)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyType;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/Algorithm;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZII",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/Curve;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    .line 857
    invoke-direct/range {v0 .. v13}, Lcom/nimbusds/jose/jwk/JWKMatcher;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZZZIILjava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZZZIILjava/util/Set;Ljava/util/Set;)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyType;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/Algorithm;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZZZII",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/Curve;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    .line 902
    invoke-direct/range {v0 .. v14}, Lcom/nimbusds/jose/jwk/JWKMatcher;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZZZIILjava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZZZIILjava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyType;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/Algorithm;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZZZII",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/Curve;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/util/Base64URL;",
            ">;)V"
        }
    .end annotation

    .line 946
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 948
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->types:Ljava/util/Set;

    .line 949
    iput-object p2, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->uses:Ljava/util/Set;

    .line 950
    iput-object p3, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->ops:Ljava/util/Set;

    .line 951
    iput-object p4, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->algs:Ljava/util/Set;

    .line 952
    iput-object p5, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->ids:Ljava/util/Set;

    .line 953
    iput-boolean p6, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->hasUse:Z

    .line 954
    iput-boolean p7, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->hasID:Z

    .line 955
    iput-boolean p8, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->privateOnly:Z

    .line 956
    iput-boolean p9, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->publicOnly:Z

    .line 957
    iput p10, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->minSizeBits:I

    .line 958
    iput p11, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->maxSizeBits:I

    .line 959
    iput-object p12, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->sizesBits:Ljava/util/Set;

    .line 960
    iput-object p13, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->curves:Ljava/util/Set;

    .line 961
    iput-object p14, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->x5tS256s:Ljava/util/Set;

    return-void
.end method

.method private static append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "*>;)V"
        }
    .end annotation

    if-eqz p2, :cond_3d

    .line 1369
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3d

    .line 1370
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1371
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2d

    .line 1372
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_21

    const-string p1, "ANY"

    .line 1374
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38

    .line 1376
    :cond_21
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38

    .line 1379
    :cond_2d
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_38
    const/16 p1, 0x20

    .line 1382
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3d
    return-void
.end method

.method public static forJWEHeader(Lcom/nimbusds/jose/JWEHeader;)Lcom/nimbusds/jose/jwk/JWKMatcher;
    .registers 7

    .line 988
    new-instance v0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    invoke-direct {v0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;-><init>()V

    .line 989
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    move-result-object v1

    invoke-static {v1}, Lcom/nimbusds/jose/jwk/KeyType;->forAlgorithm(Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/KeyType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyType(Lcom/nimbusds/jose/jwk/KeyType;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    move-result-object v0

    .line 990
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getKeyID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyID(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Lcom/nimbusds/jose/jwk/KeyUse;

    sget-object v3, Lcom/nimbusds/jose/jwk/KeyUse;->ENCRYPTION:Lcom/nimbusds/jose/jwk/KeyUse;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 991
    invoke-virtual {v0, v2}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyUses([Lcom/nimbusds/jose/jwk/KeyUse;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    move-result-object v0

    new-array v1, v1, [Lcom/nimbusds/jose/Algorithm;

    .line 992
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    move-result-object p0

    aput-object p0, v1, v4

    aput-object v3, v1, v5

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->algorithms([Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    move-result-object p0

    .line 993
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->build()Lcom/nimbusds/jose/jwk/JWKMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static forJWSHeader(Lcom/nimbusds/jose/JWSHeader;)Lcom/nimbusds/jose/jwk/JWKMatcher;
    .registers 9

    .line 1022
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSHeader;->getAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;

    move-result-object v0

    .line 1023
    sget-object v1, Lcom/nimbusds/jose/JWSAlgorithm$Family;->RSA:Lcom/nimbusds/jose/JWSAlgorithm$Family;

    invoke-virtual {v1, v0}, Lcom/nimbusds/jose/JWSAlgorithm$Family;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v1, :cond_8a

    sget-object v1, Lcom/nimbusds/jose/JWSAlgorithm$Family;->EC:Lcom/nimbusds/jose/JWSAlgorithm$Family;

    invoke-virtual {v1, v0}, Lcom/nimbusds/jose/JWSAlgorithm$Family;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_8a

    .line 1032
    :cond_19
    sget-object v1, Lcom/nimbusds/jose/JWSAlgorithm$Family;->HMAC_SHA:Lcom/nimbusds/jose/JWSAlgorithm$Family;

    invoke-virtual {v1, v0}, Lcom/nimbusds/jose/JWSAlgorithm$Family;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 1034
    new-instance v1, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    invoke-direct {v1}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;-><init>()V

    .line 1035
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/KeyType;->forAlgorithm(Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/KeyType;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyType(Lcom/nimbusds/jose/jwk/KeyType;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    move-result-object v1

    .line 1036
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSHeader;->getKeyID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyID(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    move-result-object p0

    .line 1037
    invoke-virtual {p0, v5}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->privateOnly(Z)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    move-result-object p0

    new-array v1, v3, [Lcom/nimbusds/jose/Algorithm;

    aput-object v0, v1, v2

    aput-object v4, v1, v5

    .line 1038
    invoke-virtual {p0, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->algorithms([Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    move-result-object p0

    .line 1039
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->build()Lcom/nimbusds/jose/jwk/JWKMatcher;

    move-result-object p0

    return-object p0

    .line 1040
    :cond_49
    sget-object v1, Lcom/nimbusds/jose/JWSAlgorithm$Family;->ED:Lcom/nimbusds/jose/JWSAlgorithm$Family;

    invoke-virtual {v1, v0}, Lcom/nimbusds/jose/JWSAlgorithm$Family;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 1041
    new-instance v1, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    invoke-direct {v1}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;-><init>()V

    .line 1042
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/KeyType;->forAlgorithm(Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/KeyType;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyType(Lcom/nimbusds/jose/jwk/KeyType;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    move-result-object v1

    .line 1043
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSHeader;->getKeyID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyID(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    move-result-object p0

    new-array v1, v3, [Lcom/nimbusds/jose/jwk/KeyUse;

    sget-object v6, Lcom/nimbusds/jose/jwk/KeyUse;->SIGNATURE:Lcom/nimbusds/jose/jwk/KeyUse;

    aput-object v6, v1, v2

    aput-object v4, v1, v5

    .line 1044
    invoke-virtual {p0, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyUses([Lcom/nimbusds/jose/jwk/KeyUse;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    move-result-object p0

    new-array v1, v3, [Lcom/nimbusds/jose/Algorithm;

    aput-object v0, v1, v2

    aput-object v4, v1, v5

    .line 1045
    invoke-virtual {p0, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->algorithms([Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    move-result-object p0

    .line 1046
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/Curve;->forJWSAlgorithm(Lcom/nimbusds/jose/JWSAlgorithm;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->curves(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    move-result-object p0

    .line 1047
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->build()Lcom/nimbusds/jose/jwk/JWKMatcher;

    move-result-object p0

    return-object p0

    :cond_89
    return-object v4

    .line 1025
    :cond_8a
    :goto_8a
    new-instance v1, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    invoke-direct {v1}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;-><init>()V

    .line 1026
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/KeyType;->forAlgorithm(Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/KeyType;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyType(Lcom/nimbusds/jose/jwk/KeyType;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    move-result-object v1

    .line 1027
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSHeader;->getKeyID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyID(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    move-result-object v1

    new-array v6, v3, [Lcom/nimbusds/jose/jwk/KeyUse;

    sget-object v7, Lcom/nimbusds/jose/jwk/KeyUse;->SIGNATURE:Lcom/nimbusds/jose/jwk/KeyUse;

    aput-object v7, v6, v2

    aput-object v4, v6, v5

    .line 1028
    invoke-virtual {v1, v6}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyUses([Lcom/nimbusds/jose/jwk/KeyUse;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    move-result-object v1

    new-array v3, v3, [Lcom/nimbusds/jose/Algorithm;

    aput-object v0, v3, v2

    aput-object v4, v3, v5

    .line 1029
    invoke-virtual {v1, v3}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->algorithms([Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    move-result-object v0

    .line 1030
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSHeader;->getX509CertSHA256Thumbprint()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->x509CertSHA256Thumbprint(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    move-result-object p0

    .line 1031
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->build()Lcom/nimbusds/jose/jwk/JWKMatcher;

    move-result-object p0

    return-object p0
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

    .line 1093
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->algs:Ljava/util/Set;

    return-object v0
.end method

.method public getCurves()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/Curve;",
            ">;"
        }
    .end annotation

    .line 1224
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->curves:Ljava/util/Set;

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

    .line 1104
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->ids:Ljava/util/Set;

    return-object v0
.end method

.method public getKeyOperations()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;"
        }
    .end annotation

    .line 1082
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->ops:Ljava/util/Set;

    return-object v0
.end method

.method public getKeySizes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1213
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->sizesBits:Ljava/util/Set;

    return-object v0
.end method

.method public getKeyTypes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyType;",
            ">;"
        }
    .end annotation

    .line 1060
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->types:Ljava/util/Set;

    return-object v0
.end method

.method public getKeyUses()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            ">;"
        }
    .end annotation

    .line 1071
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->uses:Ljava/util/Set;

    return-object v0
.end method

.method public getMaxKeySize()I
    .registers 2

    .line 1202
    iget v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->maxSizeBits:I

    return v0
.end method

.method public getMaxSize()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1190
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWKMatcher;->getMaxKeySize()I

    move-result v0

    return v0
.end method

.method public getMinKeySize()I
    .registers 2

    .line 1177
    iget v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->minSizeBits:I

    return v0
.end method

.method public getMinSize()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1165
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWKMatcher;->getMinKeySize()I

    move-result v0

    return v0
.end method

.method public getX509CertSHA256Thumbprints()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/util/Base64URL;",
            ">;"
        }
    .end annotation

    .line 1234
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->x5tS256s:Ljava/util/Set;

    return-object v0
.end method

.method public hasKeyID()Z
    .registers 2

    .line 1128
    iget-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->hasID:Z

    return v0
.end method

.method public hasKeyUse()Z
    .registers 2

    .line 1116
    iget-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->hasUse:Z

    return v0
.end method

.method public isPrivateOnly()Z
    .registers 2

    .line 1140
    iget-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->privateOnly:Z

    return v0
.end method

.method public isPublicOnly()Z
    .registers 2

    .line 1152
    iget-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->publicOnly:Z

    return v0
.end method

.method public matches(Lcom/nimbusds/jose/jwk/JWK;)Z
    .registers 5

    .line 1246
    iget-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->hasUse:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyUse()Lcom/nimbusds/jose/jwk/KeyUse;

    move-result-object v0

    if-nez v0, :cond_c

    return v1

    .line 1249
    :cond_c
    iget-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->hasID:Z

    if-eqz v0, :cond_25

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_24
    return v1

    .line 1252
    :cond_25
    iget-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->privateOnly:Z

    if-eqz v0, :cond_30

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_30

    return v1

    .line 1255
    :cond_30
    iget-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->publicOnly:Z

    if-eqz v0, :cond_3b

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_3b

    return v1

    .line 1258
    :cond_3b
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->types:Ljava/util/Set;

    if-eqz v0, :cond_4a

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyType()Lcom/nimbusds/jose/jwk/KeyType;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    return v1

    .line 1261
    :cond_4a
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->uses:Ljava/util/Set;

    if-eqz v0, :cond_59

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyUse()Lcom/nimbusds/jose/jwk/KeyUse;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    return v1

    .line 1264
    :cond_59
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->ops:Ljava/util/Set;

    if-eqz v0, :cond_7f

    const/4 v2, 0x0

    .line 1266
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyOperations()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_6b

    goto :goto_7f

    .line 1268
    :cond_6b
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyOperations()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->ops:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyOperations()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7e

    goto :goto_7f

    :cond_7e
    return v1

    .line 1275
    :cond_7f
    :goto_7f
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->algs:Ljava/util/Set;

    if-eqz v0, :cond_8e

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getAlgorithm()Lcom/nimbusds/jose/Algorithm;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8e

    return v1

    .line 1278
    :cond_8e
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->ids:Ljava/util/Set;

    if-eqz v0, :cond_9d

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9d

    return v1

    .line 1281
    :cond_9d
    iget v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->minSizeBits:I

    if-lez v0, :cond_aa

    .line 1283
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->size()I

    move-result v0

    iget v2, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->minSizeBits:I

    if-ge v0, v2, :cond_aa

    return v1

    .line 1287
    :cond_aa
    iget v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->maxSizeBits:I

    if-lez v0, :cond_b7

    .line 1289
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->size()I

    move-result v0

    iget v2, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->maxSizeBits:I

    if-le v0, v2, :cond_b7

    return v1

    .line 1293
    :cond_b7
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->sizesBits:Ljava/util/Set;

    if-eqz v0, :cond_ca

    .line 1294
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ca

    return v1

    .line 1298
    :cond_ca
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->curves:Ljava/util/Set;

    if-eqz v0, :cond_e1

    .line 1300
    instance-of v2, p1, Lcom/nimbusds/jose/jwk/CurveBasedJWK;

    if-nez v2, :cond_d3

    return v1

    .line 1303
    :cond_d3
    move-object v2, p1

    check-cast v2, Lcom/nimbusds/jose/jwk/CurveBasedJWK;

    .line 1305
    invoke-interface {v2}, Lcom/nimbusds/jose/jwk/CurveBasedJWK;->getCurve()Lcom/nimbusds/jose/jwk/Curve;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e1

    return v1

    .line 1309
    :cond_e1
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->x5tS256s:Ljava/util/Set;

    if-eqz v0, :cond_ee

    .line 1310
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertSHA256Thumbprint()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_ee
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1320
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->types:Ljava/util/Set;

    const-string v2, "kty"

    invoke-static {v0, v2, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Set;)V

    .line 1321
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->uses:Ljava/util/Set;

    const-string v2, "use"

    invoke-static {v0, v2, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Set;)V

    .line 1322
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->ops:Ljava/util/Set;

    const-string v2, "key_ops"

    invoke-static {v0, v2, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Set;)V

    .line 1323
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->algs:Ljava/util/Set;

    const-string v2, "alg"

    invoke-static {v0, v2, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Set;)V

    .line 1324
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->ids:Ljava/util/Set;

    const-string v2, "kid"

    invoke-static {v0, v2, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Set;)V

    .line 1326
    iget-boolean v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->hasUse:Z

    if-eqz v1, :cond_31

    const-string v1, "has_use=true "

    .line 1327
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1330
    :cond_31
    iget-boolean v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->hasID:Z

    if-eqz v1, :cond_3a

    const-string v1, "has_id=true "

    .line 1331
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1334
    :cond_3a
    iget-boolean v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->privateOnly:Z

    if-eqz v1, :cond_43

    const-string v1, "private_only=true "

    .line 1335
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1338
    :cond_43
    iget-boolean v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->publicOnly:Z

    if-eqz v1, :cond_4c

    const-string v1, "public_only=true "

    .line 1339
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1342
    :cond_4c
    iget v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->minSizeBits:I

    const-string v2, " "

    if-lez v1, :cond_6b

    .line 1343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "min_size="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->minSizeBits:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1346
    :cond_6b
    iget v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->maxSizeBits:I

    if-lez v1, :cond_88

    .line 1347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "max_size="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->maxSizeBits:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1350
    :cond_88
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->sizesBits:Ljava/util/Set;

    const-string v2, "size"

    invoke-static {v0, v2, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Set;)V

    .line 1351
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->curves:Ljava/util/Set;

    const-string v2, "crv"

    invoke-static {v0, v2, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Set;)V

    .line 1352
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->x5tS256s:Ljava/util/Set;

    const-string v2, "x5t#S256"

    invoke-static {v0, v2, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Set;)V

    .line 1354
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

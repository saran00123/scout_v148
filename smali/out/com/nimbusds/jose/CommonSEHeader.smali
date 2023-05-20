.class abstract Lcom/nimbusds/jose/CommonSEHeader;
.super Lcom/nimbusds/jose/Header;
.source "CommonSEHeader.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final jku:Ljava/net/URI;

.field private final jwk:Lcom/nimbusds/jose/jwk/JWK;

.field private final kid:Ljava/lang/String;

.field private final x5c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/Base64;",
            ">;"
        }
    .end annotation
.end field

.field private final x5t:Lcom/nimbusds/jose/util/Base64URL;

.field private final x5t256:Lcom/nimbusds/jose/util/Base64URL;

.field private final x5u:Ljava/net/URI;


# direct methods
.method protected constructor <init>(Lcom/nimbusds/jose/Algorithm;Lcom/nimbusds/jose/JOSEObjectType;Ljava/lang/String;Ljava/util/Set;Ljava/net/URI;Lcom/nimbusds/jose/jwk/JWK;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/nimbusds/jose/util/Base64URL;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/Algorithm;",
            "Lcom/nimbusds/jose/JOSEObjectType;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/net/URI;",
            "Lcom/nimbusds/jose/jwk/JWK;",
            "Ljava/net/URI;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/Base64;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            ")V"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v8, p10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p12

    move-object/from16 v6, p13

    .line 148
    invoke-direct/range {v0 .. v6}, Lcom/nimbusds/jose/Header;-><init>(Lcom/nimbusds/jose/Algorithm;Lcom/nimbusds/jose/JOSEObjectType;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Lcom/nimbusds/jose/util/Base64URL;)V

    move-object v0, p5

    .line 150
    iput-object v0, v7, Lcom/nimbusds/jose/CommonSEHeader;->jku:Ljava/net/URI;

    move-object v0, p6

    .line 151
    iput-object v0, v7, Lcom/nimbusds/jose/CommonSEHeader;->jwk:Lcom/nimbusds/jose/jwk/JWK;

    move-object/from16 v0, p7

    .line 152
    iput-object v0, v7, Lcom/nimbusds/jose/CommonSEHeader;->x5u:Ljava/net/URI;

    move-object/from16 v0, p8

    .line 153
    iput-object v0, v7, Lcom/nimbusds/jose/CommonSEHeader;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    move-object/from16 v0, p9

    .line 154
    iput-object v0, v7, Lcom/nimbusds/jose/CommonSEHeader;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    if-eqz v8, :cond_2f

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v7, Lcom/nimbusds/jose/CommonSEHeader;->x5c:Ljava/util/List;

    goto :goto_32

    :cond_2f
    const/4 v0, 0x0

    .line 160
    iput-object v0, v7, Lcom/nimbusds/jose/CommonSEHeader;->x5c:Ljava/util/List;

    :goto_32
    move-object/from16 v0, p11

    .line 163
    iput-object v0, v7, Lcom/nimbusds/jose/CommonSEHeader;->kid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIncludedParams()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 257
    invoke-super {p0}, Lcom/nimbusds/jose/Header;->getIncludedParams()Ljava/util/Set;

    move-result-object v0

    .line 259
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->jku:Ljava/net/URI;

    if-eqz v1, :cond_d

    const-string v1, "jku"

    .line 260
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_d
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->jwk:Lcom/nimbusds/jose/jwk/JWK;

    if-eqz v1, :cond_16

    const-string v1, "jwk"

    .line 264
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_16
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5u:Ljava/net/URI;

    if-eqz v1, :cond_1f

    const-string v1, "x5u"

    .line 268
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_1f
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    if-eqz v1, :cond_28

    const-string v1, "x5t"

    .line 272
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_28
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    if-eqz v1, :cond_31

    const-string v1, "x5t#S256"

    .line 276
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_31
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5c:Ljava/util/List;

    if-eqz v1, :cond_40

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_40

    const-string v1, "x5c"

    .line 280
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_40
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->kid:Ljava/lang/String;

    if-eqz v1, :cond_49

    const-string v1, "kid"

    .line 284
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_49
    return-object v0
.end method

.method public getJWK()Lcom/nimbusds/jose/jwk/JWK;
    .registers 2

    .line 187
    iget-object v0, p0, Lcom/nimbusds/jose/CommonSEHeader;->jwk:Lcom/nimbusds/jose/jwk/JWK;

    return-object v0
.end method

.method public getJWKURL()Ljava/net/URI;
    .registers 2

    .line 175
    iget-object v0, p0, Lcom/nimbusds/jose/CommonSEHeader;->jku:Ljava/net/URI;

    return-object v0
.end method

.method public getKeyID()Ljava/lang/String;
    .registers 2

    .line 250
    iget-object v0, p0, Lcom/nimbusds/jose/CommonSEHeader;->kid:Ljava/lang/String;

    return-object v0
.end method

.method public getX509CertChain()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/Base64;",
            ">;"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5c:Ljava/util/List;

    return-object v0
.end method

.method public getX509CertSHA256Thumbprint()Lcom/nimbusds/jose/util/Base64URL;
    .registers 2

    .line 225
    iget-object v0, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    return-object v0
.end method

.method public getX509CertThumbprint()Lcom/nimbusds/jose/util/Base64URL;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    return-object v0
.end method

.method public getX509CertURL()Ljava/net/URI;
    .registers 2

    .line 199
    iget-object v0, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5u:Ljava/net/URI;

    return-object v0
.end method

.method public toJSONObject()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 294
    invoke-super {p0}, Lcom/nimbusds/jose/Header;->toJSONObject()Ljava/util/Map;

    move-result-object v0

    .line 296
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->jku:Ljava/net/URI;

    if-eqz v1, :cond_11

    .line 297
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "jku"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    :cond_11
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->jwk:Lcom/nimbusds/jose/jwk/JWK;

    if-eqz v1, :cond_1e

    .line 301
    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/JWK;->toJSONObject()Ljava/util/Map;

    move-result-object v1

    const-string v2, "jwk"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :cond_1e
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5u:Ljava/net/URI;

    if-eqz v1, :cond_2b

    .line 305
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x5u"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    :cond_2b
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    if-eqz v1, :cond_38

    .line 309
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64URL;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x5t"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :cond_38
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    if-eqz v1, :cond_45

    .line 313
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64URL;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x5t#S256"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    :cond_45
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5c:Ljava/util/List;

    if-eqz v1, :cond_79

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_79

    .line 317
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 318
    iget-object v2, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_60
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_74

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nimbusds/jose/util/Base64;

    .line 319
    invoke-virtual {v3}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_60

    :cond_74
    const-string v2, "x5c"

    .line 321
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    :cond_79
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->kid:Ljava/lang/String;

    if-eqz v1, :cond_82

    const-string v2, "kid"

    .line 325
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_82
    return-object v0
.end method

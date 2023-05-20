.class public final La/a/a/a/d/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:La/a/a/a/d/h;

.field public final b:La/a/a/a/d/f;

.field public final c:La/a/a/a/c/c;


# direct methods
.method public constructor <init>(La/a/a/a/d/e;La/a/a/a/c/c;)V
    .registers 5
    .param p1    # La/a/a/a/d/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # La/a/a/a/c/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ephemeralKeyPairGenerator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorReporter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, La/a/a/a/d/h;

    invoke-direct {v0}, La/a/a/a/d/h;-><init>()V

    new-instance v1, La/a/a/a/d/f;

    invoke-direct {v1, p1, p2}, La/a/a/a/d/f;-><init>(La/a/a/a/d/e;La/a/a/a/c/c;)V

    invoke-direct {p0, v0, v1, p2}, La/a/a/a/d/g;-><init>(La/a/a/a/d/h;La/a/a/a/d/f;La/a/a/a/c/c;)V

    return-void
.end method

.method public constructor <init>(La/a/a/a/d/h;La/a/a/a/d/f;La/a/a/a/c/c;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/d/g;->a:La/a/a/a/d/h;

    iput-object p2, p0, La/a/a/a/d/g;->b:La/a/a/a/d/f;

    iput-object p3, p0, La/a/a/a/d/g;->c:La/a/a/a/c/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/security/PublicKey;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "acsPublicKey"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "directoryServerId"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v3, p2, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v3, :cond_52

    iget-object p3, p0, La/a/a/a/d/g;->a:La/a/a/a/d/h;

    check-cast p2, Ljava/security/interfaces/RSAPublicKey;

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "publicKey"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Lcom/nimbusds/jose/JWEObject;

    new-instance v0, Lcom/nimbusds/jose/JWEHeader$Builder;

    sget-object v1, Lcom/nimbusds/jose/JWEAlgorithm;->RSA_OAEP_256:Lcom/nimbusds/jose/JWEAlgorithm;

    sget-object v2, Lcom/nimbusds/jose/EncryptionMethod;->A128CBC_HS256:Lcom/nimbusds/jose/EncryptionMethod;

    invoke-direct {v0, v1, v2}, Lcom/nimbusds/jose/JWEHeader$Builder;-><init>(Lcom/nimbusds/jose/JWEAlgorithm;Lcom/nimbusds/jose/EncryptionMethod;)V

    invoke-virtual {v0, p4}, Lcom/nimbusds/jose/JWEHeader$Builder;->keyID(Ljava/lang/String;)Lcom/nimbusds/jose/JWEHeader$Builder;

    move-result-object p4

    invoke-virtual {p4}, Lcom/nimbusds/jose/JWEHeader$Builder;->build()Lcom/nimbusds/jose/JWEHeader;

    move-result-object p4

    new-instance v0, Lcom/nimbusds/jose/Payload;

    invoke-direct {v0, p1}, Lcom/nimbusds/jose/Payload;-><init>(Ljava/lang/String;)V

    invoke-direct {p3, p4, v0}, Lcom/nimbusds/jose/JWEObject;-><init>(Lcom/nimbusds/jose/JWEHeader;Lcom/nimbusds/jose/Payload;)V

    .line 3
    new-instance p1, Lcom/nimbusds/jose/crypto/RSAEncrypter;

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/crypto/RSAEncrypter;-><init>(Ljava/security/interfaces/RSAPublicKey;)V

    invoke-virtual {p3, p1}, Lcom/nimbusds/jose/JWEObject;->encrypt(Lcom/nimbusds/jose/JWEEncrypter;)V

    invoke-virtual {p3}, Lcom/nimbusds/jose/JWEObject;->serialize()Ljava/lang/String;

    move-result-object p1

    const-string p2, "jwe.serialize()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_c4

    .line 4
    :cond_52
    instance-of p4, p2, Ljava/security/interfaces/ECPublicKey;

    if-eqz p4, :cond_d9

    iget-object p4, p0, La/a/a/a/d/g;->b:La/a/a/a/d/f;

    check-cast p2, Ljava/security/interfaces/ECPublicKey;

    .line 5
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/nimbusds/jwt/JWTClaimsSet;->parse(Ljava/lang/String;)Lcom/nimbusds/jwt/JWTClaimsSet;

    iget-object v0, p4, La/a/a/a/d/f;->a:La/a/a/a/d/e;

    invoke-interface {v0}, La/a/a/a/d/e;->a()Ljava/security/KeyPair;

    move-result-object v0

    iget-object p4, p4, La/a/a/a/d/f;->b:La/a/a/a/d/b;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    if-eqz v1, :cond_d1

    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    invoke-interface {p4, p2, v1, p3}, La/a/a/a/d/b;->a(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p2

    new-instance p3, Lcom/nimbusds/jose/jwk/ECKey$Builder;

    sget-object p4, Lcom/nimbusds/jose/jwk/Curve;->P_256:Lcom/nimbusds/jose/jwk/Curve;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    if-eqz v0, :cond_c9

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    invoke-direct {p3, p4, v0}, Lcom/nimbusds/jose/jwk/ECKey$Builder;-><init>(Lcom/nimbusds/jose/jwk/Curve;Ljava/security/interfaces/ECPublicKey;)V

    invoke-virtual {p3}, Lcom/nimbusds/jose/jwk/ECKey$Builder;->build()Lcom/nimbusds/jose/jwk/ECKey;

    move-result-object p3

    new-instance p4, Lcom/nimbusds/jose/JWEHeader$Builder;

    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm;->DIR:Lcom/nimbusds/jose/JWEAlgorithm;

    sget-object v1, Lcom/nimbusds/jose/EncryptionMethod;->A128CBC_HS256:Lcom/nimbusds/jose/EncryptionMethod;

    invoke-direct {p4, v0, v1}, Lcom/nimbusds/jose/JWEHeader$Builder;-><init>(Lcom/nimbusds/jose/JWEAlgorithm;Lcom/nimbusds/jose/EncryptionMethod;)V

    invoke-virtual {p3}, Lcom/nimbusds/jose/jwk/ECKey;->toJSONString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/nimbusds/jose/jwk/ECKey;->parse(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/ECKey;

    move-result-object p3

    invoke-virtual {p4, p3}, Lcom/nimbusds/jose/JWEHeader$Builder;->ephemeralPublicKey(Lcom/nimbusds/jose/jwk/JWK;)Lcom/nimbusds/jose/JWEHeader$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/nimbusds/jose/JWEHeader$Builder;->build()Lcom/nimbusds/jose/JWEHeader;

    move-result-object p3

    new-instance p4, Lcom/nimbusds/jose/JWEObject;

    new-instance v0, Lcom/nimbusds/jose/Payload;

    invoke-direct {v0, p1}, Lcom/nimbusds/jose/Payload;-><init>(Ljava/lang/String;)V

    invoke-direct {p4, p3, v0}, Lcom/nimbusds/jose/JWEObject;-><init>(Lcom/nimbusds/jose/JWEHeader;Lcom/nimbusds/jose/Payload;)V

    new-instance p1, Lcom/nimbusds/jose/crypto/DirectEncrypter;

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/crypto/DirectEncrypter;-><init>(Ljavax/crypto/SecretKey;)V

    invoke-virtual {p4, p1}, Lcom/nimbusds/jose/JWEObject;->encrypt(Lcom/nimbusds/jose/JWEEncrypter;)V

    invoke-virtual {p4}, Lcom/nimbusds/jose/JWEObject;->serialize()Ljava/lang/String;

    move-result-object p1

    const-string p2, "jweObject.serialize()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    :goto_c4
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_fd

    .line 5
    :cond_c9
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type java.security.interfaces.ECPublicKey"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type java.security.interfaces.ECPrivateKey"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_d9
    new-instance p1, Lcom/stripe/android/stripe3ds2/exceptions/SDKRuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unsupported public key algorithm: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    const/4 p4, 0x0

    invoke-direct {p1, p2, p4, p3, p4}, Lcom/stripe/android/stripe3ds2/exceptions/SDKRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_fd
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_108

    iget-object p3, p0, La/a/a/a/d/g;->c:La/a/a/a/c/c;

    invoke-interface {p3, p2}, La/a/a/a/c/c;->a(Ljava/lang/Throwable;)V

    :cond_108
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.class public final La/a/a/a/e/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/a/a/a/e/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/a/e/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/a/e/q$a$a;
    }
.end annotation


# static fields
.field public static final b:La/a/a/a/e/q$a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:La/a/a/a/c/c;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, La/a/a/a/e/q$a$a;

    .line 1
    invoke-direct {v0}, La/a/a/a/e/q$a$a;-><init>()V

    .line 2
    sput-object v0, La/a/a/a/e/q$a;->b:La/a/a/a/e/q$a$a;

    return-void
.end method

.method public constructor <init>(La/a/a/a/c/c;)V
    .registers 3
    .param p1    # La/a/a/a/c/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "errorReporter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/e/q$a;->a:La/a/a/a/c/c;

    return-void
.end method


# virtual methods
.method public final a(Lcom/nimbusds/jose/JWSHeader;)Ljava/security/PublicKey;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getX509CertChain()Ljava/util/List;

    move-result-object p1

    const-string v0, "jwsHeader.x509CertChain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nimbusds/jose/util/Base64;

    invoke-virtual {p1}, Lcom/nimbusds/jose/util/Base64;->decode()[B

    move-result-object p1

    invoke-static {p1}, Lcom/nimbusds/jose/util/X509CertUtils;->parseWithException([B)Ljava/security/cert/X509Certificate;

    move-result-object p1

    const-string v0, "X509CertUtils.parseWithE\u2026().decode()\n            )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    const-string v0, "X509CertUtils.parseWithE\u2026)\n            ).publicKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public a(Ljava/lang/String;ZLjava/util/List;)Lorg/json/JSONObject;
    .registers 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "+",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/text/ParseException;,
            Lcom/nimbusds/jose/JOSEException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "jws"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootCerts"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/nimbusds/jose/JWSObject;->parse(Ljava/lang/String;)Lcom/nimbusds/jose/JWSObject;

    move-result-object p1

    const-string v1, "jwsObject"

    if-eqz p2, :cond_b0

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSObject;->getHeader()Lcom/nimbusds/jose/JWSHeader;

    move-result-object p2

    const-string v2, "jwsHeader"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/nimbusds/jose/JWSHeader;->getX509CertChain()Ljava/util/List;

    move-result-object v2

    .line 2
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v3, 0x1

    if-eqz v2, :cond_34

    :try_start_29
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_30

    goto :goto_34

    :cond_30
    move v4, v0

    goto :goto_35

    :catchall_32
    move-exception p3

    goto :goto_63

    :cond_34
    :goto_34
    move v4, v3

    :goto_35
    xor-int/2addr v4, v3

    if-eqz v4, :cond_57

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v3, v4

    if-eqz v3, :cond_4b

    sget-object v3, La/a/a/a/e/q$a;->b:La/a/a/a/e/q$a$a;

    invoke-static {v3, v2, p3}, La/a/a/a/e/q$a$a;->a(La/a/a/a/e/q$a$a;Ljava/util/List;Ljava/util/List;)V

    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_4a
    .catchall {:try_start_29 .. :try_end_4a} :catchall_32

    goto :goto_6b

    :cond_4b
    const-string p3, "Root certificates are empty"

    :try_start_4d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_57
    .catchall {:try_start_4d .. :try_end_57} :catchall_32

    :cond_57
    const-string p3, "JWSHeader\'s X.509 certificate chain is null or empty"

    :try_start_59
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_63
    .catchall {:try_start_59 .. :try_end_63} :catchall_32

    :goto_63
    invoke-static {p3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :goto_6b
    invoke-static {p3}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_76

    iget-object v3, p0, La/a/a/a/e/q$a;->a:La/a/a/a/c/c;

    invoke-interface {v3, v2}, La/a/a/a/c/c;->a(Ljava/lang/Throwable;)V

    :cond_76
    invoke-static {p3}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7d

    goto :goto_a5

    .line 3
    :cond_7d
    new-instance p3, Lcom/nimbusds/jose/crypto/factories/DefaultJWSVerifierFactory;

    invoke-direct {p3}, Lcom/nimbusds/jose/crypto/factories/DefaultJWSVerifierFactory;-><init>()V

    invoke-virtual {p3}, Lcom/nimbusds/jose/crypto/factories/DefaultJWSVerifierFactory;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

    move-result-object v0

    const-string/jumbo v2, "verifierFactory.jcaContext"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/nimbusds/jose/crypto/bc/BouncyCastleProviderSingleton;->getInstance()Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nimbusds/jose/jca/JCAContext;->setProvider(Ljava/security/Provider;)V

    invoke-virtual {p0, p2}, La/a/a/a/e/q$a;->a(Lcom/nimbusds/jose/JWSHeader;)Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Lcom/nimbusds/jose/crypto/factories/DefaultJWSVerifierFactory;->createJWSVerifier(Lcom/nimbusds/jose/JWSHeader;Ljava/security/Key;)Lcom/nimbusds/jose/JWSVerifier;

    move-result-object p2

    const-string/jumbo p3, "verifierFactory.createJW\u2026KeyFromHeader(jwsHeader))"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, p2}, Lcom/nimbusds/jose/JWSObject;->verify(Lcom/nimbusds/jose/JWSVerifier;)Z

    move-result v0

    :goto_a5
    if-eqz v0, :cond_a8

    goto :goto_b0

    .line 5
    :cond_a8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Could not validate JWS"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b0
    :goto_b0
    new-instance p2, Lorg/json/JSONObject;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSObject;->getPayload()Lcom/nimbusds/jose/Payload;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nimbusds/jose/Payload;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

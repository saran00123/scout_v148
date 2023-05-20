.class public final La/a/a/a/e/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/a/a/a/e/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/a/e/l$a;
    }
.end annotation


# static fields
.field public static final i:La/a/a/a/e/l$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:La/a/a/a/b/d;

.field public final b:La/a/a/a/b/g;

.field public final c:La/a/a/a/b/l;

.field public final d:La/a/a/a/b/b;

.field public final e:La/a/a/a/d/g;

.field public final f:Lcom/stripe/android/stripe3ds2/transaction/MessageVersionRegistry;

.field public final g:Ljava/lang/String;

.field public final h:La/a/a/a/c/c;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, La/a/a/a/e/l$a;

    .line 1
    invoke-direct {v0}, La/a/a/a/e/l$a;-><init>()V

    .line 2
    sput-object v0, La/a/a/a/e/l;->i:La/a/a/a/e/l$a;

    return-void
.end method

.method public constructor <init>(La/a/a/a/b/d;La/a/a/a/b/g;La/a/a/a/b/l;La/a/a/a/b/b;La/a/a/a/d/g;Lcom/stripe/android/stripe3ds2/transaction/MessageVersionRegistry;Ljava/lang/String;La/a/a/a/c/c;)V
    .registers 10
    .param p1    # La/a/a/a/b/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # La/a/a/a/b/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # La/a/a/a/b/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # La/a/a/a/b/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # La/a/a/a/d/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/stripe/android/stripe3ds2/transaction/MessageVersionRegistry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # La/a/a/a/c/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "deviceDataFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceParamNotAvailableFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "securityChecker"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appInfoRepository"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jweEncrypter"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageVersionRegistry"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkReferenceNumber"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorReporter"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/e/l;->a:La/a/a/a/b/d;

    iput-object p2, p0, La/a/a/a/e/l;->b:La/a/a/a/b/g;

    iput-object p3, p0, La/a/a/a/e/l;->c:La/a/a/a/b/l;

    iput-object p4, p0, La/a/a/a/e/l;->d:La/a/a/a/b/b;

    iput-object p5, p0, La/a/a/a/e/l;->e:La/a/a/a/d/g;

    iput-object p6, p0, La/a/a/a/e/l;->f:Lcom/stripe/android/stripe3ds2/transaction/MessageVersionRegistry;

    iput-object p7, p0, La/a/a/a/e/l;->g:Ljava/lang/String;

    iput-object p8, p0, La/a/a/a/e/l;->h:La/a/a/a/c/c;

    return-void
.end method

.method public constructor <init>(La/a/a/a/b/d;La/a/a/a/b/g;La/a/a/a/b/l;La/a/a/a/d/e;La/a/a/a/b/b;Lcom/stripe/android/stripe3ds2/transaction/MessageVersionRegistry;Ljava/lang/String;La/a/a/a/c/c;)V
    .registers 19
    .param p1    # La/a/a/a/b/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # La/a/a/a/b/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # La/a/a/a/b/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # La/a/a/a/d/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # La/a/a/a/b/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/stripe/android/stripe3ds2/transaction/MessageVersionRegistry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # La/a/a/a/c/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object v0, p4

    move-object/from16 v8, p8

    const-string v1, "deviceDataFactory"

    move-object v2, p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "deviceParamNotAvailableFactory"

    move-object v3, p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "securityChecker"

    move-object v4, p3

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "ephemeralKeyPairGenerator"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "appInfoRepository"

    move-object v5, p5

    invoke-static {p5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "messageVersionRegistry"

    move-object/from16 v6, p6

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "sdkReferenceNumber"

    move-object/from16 v7, p7

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "errorReporter"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, La/a/a/a/d/g;

    invoke-direct {v9, p4, v8}, La/a/a/a/d/g;-><init>(La/a/a/a/d/e;La/a/a/a/c/c;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, v9

    invoke-direct/range {v0 .. v8}, La/a/a/a/e/l;-><init>(La/a/a/a/b/d;La/a/a/a/b/g;La/a/a/a/b/l;La/a/a/a/b/b;La/a/a/a/d/g;Lcom/stripe/android/stripe3ds2/transaction/MessageVersionRegistry;Ljava/lang/String;La/a/a/a/c/c;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;Ljava/security/PublicKey;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 16
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/security/PublicKey;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/security/PublicKey;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/security/PublicKey;",
            "Ljava/lang/String;",
            "Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;",
            "Ljava/security/PublicKey;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/android/stripe3ds2/transaction/AuthenticationRequestParameters;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p6, La/a/a/a/e/l$b;

    if-eqz v0, :cond_13

    move-object v0, p6

    check-cast v0, La/a/a/a/e/l$b;

    iget v1, v0, La/a/a/a/e/l$b;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, La/a/a/a/e/l$b;->b:I

    goto :goto_18

    :cond_13
    new-instance v0, La/a/a/a/e/l$b;

    invoke-direct {v0, p0, p6}, La/a/a/a/e/l$b;-><init>(La/a/a/a/e/l;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p6, v0, La/a/a/a/e/l$b;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, La/a/a/a/e/l$b;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_51

    if-ne v2, v3, :cond_49

    iget-object p1, v0, La/a/a/a/e/l$b;->i:Ljava/lang/Object;

    move-object p4, p1

    check-cast p4, Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;

    iget-object p1, v0, La/a/a/a/e/l$b;->h:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p2, v0, La/a/a/a/e/l$b;->g:Ljava/lang/Object;

    check-cast p2, La/a/a/a/d/c;

    iget-object p3, v0, La/a/a/a/e/l$b;->f:Ljava/lang/Object;

    move-object p5, p3

    check-cast p5, Ljava/security/PublicKey;

    iget-object p3, v0, La/a/a/a/e/l$b;->e:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    iget-object v0, v0, La/a/a/a/e/l$b;->d:Ljava/lang/Object;

    check-cast v0, La/a/a/a/e/l;

    invoke-static {p6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p1

    move-object v3, p4

    move-object v8, p6

    move-object p6, p2

    move-object p2, v8

    goto/16 :goto_cf

    :cond_49
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_51
    invoke-static {p6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p6, La/a/a/a/d/c;->g:La/a/a/a/d/c$a;

    invoke-virtual {p6, p1}, La/a/a/a/d/c$a;->a(Ljava/lang/String;)La/a/a/a/d/c;

    move-result-object p6

    :try_start_5a
    iget-object v2, p0, La/a/a/a/e/l;->e:La/a/a/a/d/g;

    invoke-virtual {p0}, La/a/a/a/e/l;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, p2, p1, p3}, La/a/a/a/d/g;->a(Ljava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_68
    .catchall {:try_start_5a .. :try_end_68} :catchall_69

    goto :goto_72

    :catchall_69
    move-exception p2

    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :goto_72
    invoke-static {p2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_ac

    iget-object v4, p0, La/a/a/a/e/l;->h:La/a/a/a/c/c;

    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n                    Failed to encrypt AReq parameters.\n                        \n                    directoryServerId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n                    keyId="

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n                    sdkTransactionId="

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\n                    "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v4, v5}, La/a/a/a/c/c;->a(Ljava/lang/Throwable;)V

    :cond_ac
    invoke-static {p2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_f3

    move-object p1, p2

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, La/a/a/a/e/l;->d:La/a/a/a/b/b;

    iput-object p0, v0, La/a/a/a/e/l$b;->d:Ljava/lang/Object;

    iput-object p3, v0, La/a/a/a/e/l$b;->e:Ljava/lang/Object;

    iput-object p5, v0, La/a/a/a/e/l$b;->f:Ljava/lang/Object;

    iput-object p6, v0, La/a/a/a/e/l$b;->g:Ljava/lang/Object;

    iput-object p1, v0, La/a/a/a/e/l$b;->h:Ljava/lang/Object;

    iput-object p4, v0, La/a/a/a/e/l$b;->i:Ljava/lang/Object;

    iput v3, v0, La/a/a/a/e/l$b;->b:I

    invoke-interface {p2, v0}, La/a/a/a/b/b;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_cc

    return-object v1

    :cond_cc
    move-object v0, p0

    move-object v2, p1

    move-object v3, p4

    :goto_cf
    check-cast p2, La/a/a/a/b/a;

    .line 1
    iget-object v4, p2, La/a/a/a/b/a;->a:Ljava/lang/String;

    .line 2
    iget-object v5, v0, La/a/a/a/e/l;->g:Ljava/lang/String;

    sget-object p1, La/a/a/a/e/l;->i:La/a/a/a/e/l$a;

    .line 3
    iget-object p2, p6, La/a/a/a/d/c;->d:Lcom/nimbusds/jose/jwk/KeyUse;

    .line 4
    invoke-virtual {p1, p5, p3, p2}, La/a/a/a/e/l$a;->a(Ljava/security/PublicKey;Ljava/lang/String;Lcom/nimbusds/jose/jwk/KeyUse;)Lcom/nimbusds/jose/jwk/JWK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->toJSONString()Ljava/lang/String;

    move-result-object v6

    const-string p1, "createPublicJwk(\n       \u2026         ).toJSONString()"

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, v0, La/a/a/a/e/l;->f:Lcom/stripe/android/stripe3ds2/transaction/MessageVersionRegistry;

    invoke-virtual {p1}, Lcom/stripe/android/stripe3ds2/transaction/MessageVersionRegistry;->getCurrent()Ljava/lang/String;

    move-result-object v7

    new-instance p1, Lcom/stripe/android/stripe3ds2/transaction/AuthenticationRequestParameters;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/stripe/android/stripe3ds2/transaction/AuthenticationRequestParameters;-><init>(Ljava/lang/String;Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_f3
    new-instance p2, Lcom/stripe/android/stripe3ds2/exceptions/SDKRuntimeException;

    invoke-direct {p2, p1}, Lcom/stripe/android/stripe3ds2/exceptions/SDKRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final a()Ljava/lang/String;
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "DV"

    const-string v2, "1.1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, La/a/a/a/e/l;->a:La/a/a/a/b/d;

    invoke-interface {v2}, La/a/a/a/b/d;->a()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v2, "DD"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, La/a/a/a/e/l;->b:La/a/a/a/b/g;

    invoke-interface {v2}, La/a/a/a/b/g;->a()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v2, "DPNA"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, La/a/a/a/e/l;->c:La/a/a/a/b/l;

    invoke-interface {v1}, La/a/a/a/b/l;->getWarnings()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/android/stripe3ds2/init/Warning;

    invoke-virtual {v3}, Lcom/stripe/android/stripe3ds2/init/Warning;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_44

    :cond_58
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v2, "SW"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JSONObject()\n           \u2026              .toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

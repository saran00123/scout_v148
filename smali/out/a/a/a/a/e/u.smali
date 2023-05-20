.class public final La/a/a/a/e/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/a/a/a/e/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/a/e/u$b;,
        La/a/a/a/e/u$a;
    }
.end annotation


# static fields
.field public static final j:J

.field public static final k:La/a/a/a/e/u$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Ljavax/crypto/SecretKey;

.field public final b:La/a/a/a/e/h;

.field public final c:La/a/a/a/d/i;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/security/PrivateKey;

.field public final f:Ljava/security/interfaces/ECPublicKey;

.field public final g:La/a/a/a/c/c;

.field public final h:La/a/a/a/d/b;

.field public final i:La/a/a/a/e/n;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, La/a/a/a/e/u$a;

    .line 1
    invoke-direct {v0}, La/a/a/a/e/u$a;-><init>()V

    .line 2
    sput-object v0, La/a/a/a/e/u;->k:La/a/a/a/e/u$a;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, La/a/a/a/e/u;->j:J

    return-void
.end method

.method public constructor <init>(La/a/a/a/d/i;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/interfaces/ECPublicKey;Ljava/lang/String;La/a/a/a/c/c;La/a/a/a/d/b;La/a/a/a/e/n;La/a/a/a/e/i;)V
    .registers 11
    .param p1    # La/a/a/a/d/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/security/PrivateKey;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/security/interfaces/ECPublicKey;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # La/a/a/a/c/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # La/a/a/a/d/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # La/a/a/a/e/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # La/a/a/a/e/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "messageTransformer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkReferenceId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkPrivateKey"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "acsPublicKey"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "acsUrl"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "errorReporter"

    invoke-static {p6, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "dhKeyGenerator"

    invoke-static {p7, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "httpClient"

    invoke-static {p8, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "responseProcessorFactory"

    invoke-static {p9, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/e/u;->c:La/a/a/a/d/i;

    iput-object p2, p0, La/a/a/a/e/u;->d:Ljava/lang/String;

    iput-object p3, p0, La/a/a/a/e/u;->e:Ljava/security/PrivateKey;

    iput-object p4, p0, La/a/a/a/e/u;->f:Ljava/security/interfaces/ECPublicKey;

    iput-object p6, p0, La/a/a/a/e/u;->g:La/a/a/a/c/c;

    iput-object p7, p0, La/a/a/a/e/u;->h:La/a/a/a/d/b;

    iput-object p8, p0, La/a/a/a/e/u;->i:La/a/a/a/e/n;

    invoke-virtual {p0}, La/a/a/a/e/u;->a()Ljavax/crypto/SecretKey;

    move-result-object p1

    iput-object p1, p0, La/a/a/a/e/u;->a:Ljavax/crypto/SecretKey;

    invoke-interface {p9, p1}, La/a/a/a/e/i;->a(Ljavax/crypto/SecretKey;)La/a/a/a/e/h;

    move-result-object p1

    iput-object p1, p0, La/a/a/a/e/u;->b:La/a/a/a/e/h;

    return-void
.end method


# virtual methods
.method public a(La/a/a/a/f/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 16
    .param p1    # La/a/a/a/f/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/a/a/f/a;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "La/a/a/a/e/g;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, La/a/a/a/e/u$c;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, La/a/a/a/e/u$c;

    iget v1, v0, La/a/a/a/e/u$c;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, La/a/a/a/e/u$c;->b:I

    goto :goto_18

    :cond_13
    new-instance v0, La/a/a/a/e/u$c;

    invoke-direct {v0, p0, p2}, La/a/a/a/e/u$c;-><init>(La/a/a/a/e/u;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, La/a/a/a/e/u$c;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, La/a/a/a/e/u$c;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_35

    if-ne v2, v3, :cond_2d

    iget-object p1, v0, La/a/a/a/e/u$c;->d:Ljava/lang/Object;

    check-cast p1, La/a/a/a/f/a;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4b

    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-wide v4, La/a/a/a/e/u;->j:J

    new-instance p2, La/a/a/a/e/u$d;

    const/4 v2, 0x0

    invoke-direct {p2, p0, p1, v2}, La/a/a/a/e/u$d;-><init>(La/a/a/a/e/u;La/a/a/a/f/a;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, La/a/a/a/e/u$c;->d:Ljava/lang/Object;

    iput v3, v0, La/a/a/a/e/u$c;->b:I

    invoke-static {v4, v5, p2, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4b

    return-object v1

    :cond_4b
    :goto_4b
    check-cast p2, La/a/a/a/e/g;

    if-eqz p2, :cond_50

    goto :goto_73

    .line 1
    :cond_50
    new-instance p2, La/a/a/a/e/g$d;

    new-instance v12, La/a/a/a/f/c;

    .line 2
    iget-object v10, p1, La/a/a/a/f/a;->d:Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;

    .line 3
    iget-object v9, p1, La/a/a/a/f/a;->a:Ljava/lang/String;

    .line 4
    iget-object v2, p1, La/a/a/a/f/a;->c:Ljava/lang/String;

    .line 5
    iget-object v1, p1, La/a/a/a/f/a;->b:Ljava/lang/String;

    const/16 p1, 0x192

    .line 6
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, La/a/a/a/f/c$c;->b:La/a/a/a/f/c$c;

    const/4 v3, 0x0

    const/4 v11, 0x4

    const-string v6, "Transaction timed-out."

    const-string v7, "Challenge request timed-out"

    const-string v8, "CReq"

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, La/a/a/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/a/a/a/f/c$c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;I)V

    invoke-direct {p2, v12}, La/a/a/a/e/g$d;-><init>(La/a/a/a/f/c;)V

    :goto_73
    return-object p2
.end method

.method public final a()Ljavax/crypto/SecretKey;
    .registers 5

    iget-object v0, p0, La/a/a/a/e/u;->h:La/a/a/a/d/b;

    iget-object v1, p0, La/a/a/a/e/u;->f:Ljava/security/interfaces/ECPublicKey;

    iget-object v2, p0, La/a/a/a/e/u;->e:Ljava/security/PrivateKey;

    if-eqz v2, :cond_11

    check-cast v2, Ljava/security/interfaces/ECPrivateKey;

    iget-object v3, p0, La/a/a/a/e/u;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, La/a/a/a/d/b;->a(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0

    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type java.security.interfaces.ECPrivateKey"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

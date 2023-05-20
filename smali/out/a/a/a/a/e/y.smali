.class public final La/a/a/a/e/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/stripe/android/stripe3ds2/transaction/Transaction;


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final b:La/a/a/a/e/b;

.field public final c:La/a/a/a/e/c;

.field public final d:La/a/a/a/h/z;

.field public final e:La/a/a/a/e/k;

.field public final f:Lcom/stripe/android/stripe3ds2/transaction/MessageVersionRegistry;

.field public final g:Ljava/lang/String;

.field public final h:La/a/a/a/e/q;

.field public final i:La/a/a/a/e/t;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/security/PublicKey;

.field public final l:Ljava/lang/String;

.field public final m:Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final n:Ljava/security/KeyPair;

.field public final o:Z

.field public final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field public final q:La/a/a/a/d/i;

.field public final r:Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;

.field public final s:La/a/a/a/h/z$a;

.field public final t:La/a/a/a/e/r;

.field public final u:La/a/a/a/c/c;

.field public final v:Landroid/content/Intent;

.field public final w:I


# direct methods
.method public constructor <init>(La/a/a/a/e/c;La/a/a/a/h/z;La/a/a/a/e/k;Lcom/stripe/android/stripe3ds2/transaction/MessageVersionRegistry;Ljava/lang/String;La/a/a/a/e/q;La/a/a/a/e/t;Ljava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;Ljava/security/KeyPair;ZLjava/util/List;La/a/a/a/d/i;Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;La/a/a/a/h/z$a;La/a/a/a/e/r;La/a/a/a/c/c;Landroid/content/Intent;I)V
    .registers 38
    .param p1    # La/a/a/a/e/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # La/a/a/a/h/z;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # La/a/a/a/e/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/stripe/android/stripe3ds2/transaction/MessageVersionRegistry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # La/a/a/a/e/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # La/a/a/a/e/t;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Ljava/security/PublicKey;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Ljava/security/KeyPair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p14    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p15    # La/a/a/a/d/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p16    # Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # La/a/a/a/h/z$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p18    # La/a/a/a/e/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p19    # La/a/a/a/c/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p20    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/a/a/e/c;",
            "La/a/a/a/h/z;",
            "La/a/a/a/e/k;",
            "Lcom/stripe/android/stripe3ds2/transaction/MessageVersionRegistry;",
            "Ljava/lang/String;",
            "La/a/a/a/e/q;",
            "La/a/a/a/e/t;",
            "Ljava/lang/String;",
            "Ljava/security/PublicKey;",
            "Ljava/lang/String;",
            "Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;",
            "Ljava/security/KeyPair;",
            "Z",
            "Ljava/util/List<",
            "+",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "La/a/a/a/d/i;",
            "Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;",
            "La/a/a/a/h/z$a;",
            "La/a/a/a/e/r;",
            "La/a/a/a/c/c;",
            "Landroid/content/Intent;",
            "I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p14

    move-object/from16 v13, p15

    move-object/from16 v14, p17

    move-object/from16 v15, p18

    move-object/from16 v0, p19

    const-string v0, "areqParamsFactory"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progressViewFactory"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "challengeStatusReceiverProvider"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageVersionRegistry"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkReferenceNumber"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jwsValidator"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocolErrorEventFactory"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "directoryServerId"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "directoryServerPublicKey"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkTransactionId"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkKeyPair"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootCerts"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageTransformer"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "brand"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorReporter"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, La/a/a/a/e/y;->c:La/a/a/a/e/c;

    iput-object v2, v0, La/a/a/a/e/y;->d:La/a/a/a/h/z;

    iput-object v3, v0, La/a/a/a/e/y;->e:La/a/a/a/e/k;

    iput-object v4, v0, La/a/a/a/e/y;->f:Lcom/stripe/android/stripe3ds2/transaction/MessageVersionRegistry;

    iput-object v5, v0, La/a/a/a/e/y;->g:Ljava/lang/String;

    iput-object v6, v0, La/a/a/a/e/y;->h:La/a/a/a/e/q;

    iput-object v7, v0, La/a/a/a/e/y;->i:La/a/a/a/e/t;

    iput-object v8, v0, La/a/a/a/e/y;->j:Ljava/lang/String;

    iput-object v9, v0, La/a/a/a/e/y;->k:Ljava/security/PublicKey;

    move-object/from16 v1, p10

    iput-object v1, v0, La/a/a/a/e/y;->l:Ljava/lang/String;

    iput-object v10, v0, La/a/a/a/e/y;->m:Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;

    iput-object v11, v0, La/a/a/a/e/y;->n:Ljava/security/KeyPair;

    move/from16 v1, p13

    iput-boolean v1, v0, La/a/a/a/e/y;->o:Z

    iput-object v12, v0, La/a/a/a/e/y;->p:Ljava/util/List;

    iput-object v13, v0, La/a/a/a/e/y;->q:La/a/a/a/d/i;

    move-object/from16 v1, p16

    iput-object v1, v0, La/a/a/a/e/y;->r:Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;

    iput-object v14, v0, La/a/a/a/e/y;->s:La/a/a/a/h/z$a;

    move-object/from16 v1, p18

    iput-object v1, v0, La/a/a/a/e/y;->t:La/a/a/a/e/r;

    iput-object v15, v0, La/a/a/a/e/y;->u:La/a/a/a/c/c;

    move-object/from16 v1, p20

    iput-object v1, v0, La/a/a/a/e/y;->v:Landroid/content/Intent;

    move/from16 v1, p21

    iput v1, v0, La/a/a/a/e/y;->w:I

    new-instance v1, La/a/a/a/e/b;

    invoke-direct {v1, v15}, La/a/a/a/e/b;-><init>(La/a/a/a/c/c;)V

    iput-object v1, v0, La/a/a/a/e/y;->b:La/a/a/a/e/b;

    return-void
.end method

.method public static final a(La/a/a/a/e/y;Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter;)V
    .registers 3

    .line 1
    iget-object p0, p0, La/a/a/a/e/y;->v:Landroid/content/Intent;

    if-eqz p0, :cond_7

    invoke-interface {p2, p0, p1}, Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter;->start(Landroid/content/Intent;Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public final a(Lcom/stripe/android/stripe3ds2/transaction/ChallengeParameters;)La/a/a/a/f/a;
    .registers 15

    new-instance v12, La/a/a/a/f/a;

    invoke-virtual {p1}, Lcom/stripe/android/stripe3ds2/transaction/ChallengeParameters;->getAcsTransactionId()Ljava/lang/String;

    move-result-object v3

    const-string v0, "Required value was null."

    if-eqz v3, :cond_2f

    invoke-virtual {p1}, Lcom/stripe/android/stripe3ds2/transaction/ChallengeParameters;->getThreeDsServerTransactionId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 2
    iget-object v4, p0, La/a/a/a/e/y;->m:Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;

    .line 3
    iget-object p1, p0, La/a/a/a/e/y;->f:Lcom/stripe/android/stripe3ds2/transaction/MessageVersionRegistry;

    invoke-virtual {p1}, Lcom/stripe/android/stripe3ds2/transaction/MessageVersionRegistry;->getCurrent()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3f0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, La/a/a/a/f/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;Ljava/lang/String;La/a/a/a/f/a$a;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    return-object v12

    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(La/a/a/a/e/g;Lcom/stripe/android/stripe3ds2/transaction/Stripe3ds2ActivityStarterHost;La/a/a/a/e/f$a;Lcom/stripe/android/stripe3ds2/transaction/ChallengeStatusReceiver;La/a/a/a/e/g0;La/a/a/a/e/m;Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter;)V
    .registers 21

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    instance-of v5, v1, La/a/a/a/e/g$c;

    if-eqz v5, :cond_38

    check-cast v1, La/a/a/a/e/g$c;

    .line 4
    iget-object v4, v1, La/a/a/a/e/g$c;->a:La/a/a/a/f/a;

    .line 5
    iget-object v5, v1, La/a/a/a/e/g$c;->b:Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;

    .line 6
    iget-object v6, v0, La/a/a/a/e/y;->r:Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v5}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;->getUiType()Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 8
    iget-object v1, v1, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;->a:Ljava/lang/String;

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    .line 9
    :goto_21
    iput-object v1, v0, La/a/a/a/e/y;->a:Ljava/lang/String;

    .line 10
    sget-object v2, La/a/a/a/e/j;->d:La/a/a/a/e/j$a;

    iget-object v10, v0, La/a/a/a/e/y;->v:Landroid/content/Intent;

    iget v11, v0, La/a/a/a/e/y;->w:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v12, 0x60

    move-object v3, p2

    move-object/from16 v7, p3

    invoke-static/range {v2 .. v12}, La/a/a/a/e/j$a;->a(La/a/a/a/e/j$a;Lcom/stripe/android/stripe3ds2/transaction/Stripe3ds2ActivityStarterHost;La/a/a/a/f/a;Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;La/a/a/a/e/f$a;La/a/a/a/e/f$b;La/a/a/a/e/m$a;Landroid/content/Intent;II)La/a/a/a/e/j;

    move-result-object v1

    invoke-virtual {v1}, La/a/a/a/e/j;->b()V

    goto :goto_8e

    .line 11
    :cond_38
    instance-of v5, v1, La/a/a/a/e/g$a;

    if-eqz v5, :cond_59

    check-cast v1, La/a/a/a/e/g$a;

    .line 12
    iget-object v1, v1, La/a/a/a/e/g$a;->a:La/a/a/a/f/c;

    .line 13
    move-object/from16 v5, p5

    check-cast v5, La/a/a/a/e/g0$a;

    invoke-virtual {v5}, La/a/a/a/e/g0$a;->b()V

    .line 14
    invoke-interface {v3, v1}, La/a/a/a/e/m;->a(La/a/a/a/f/c;)V

    .line 15
    iget-object v3, v0, La/a/a/a/e/y;->i:La/a/a/a/e/t;

    invoke-virtual {v3, v1}, La/a/a/a/e/t;->a(La/a/a/a/f/c;)Lcom/stripe/android/stripe3ds2/transaction/ProtocolErrorEvent;

    move-result-object v1

    new-instance v3, La/a/a/a/e/z;

    invoke-direct {v3, p0, v4}, La/a/a/a/e/z;-><init>(La/a/a/a/e/y;Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter;)V

    invoke-interface {v2, v1, v3}, Lcom/stripe/android/stripe3ds2/transaction/ChallengeStatusReceiver;->protocolError(Lcom/stripe/android/stripe3ds2/transaction/ProtocolErrorEvent;Lkotlin/jvm/functions/Function0;)V

    goto :goto_8e

    .line 16
    :cond_59
    instance-of v5, v1, La/a/a/a/e/g$b;

    if-eqz v5, :cond_6f

    check-cast v1, La/a/a/a/e/g$b;

    .line 17
    iget-object v1, v1, La/a/a/a/e/g$b;->a:Ljava/lang/Throwable;

    .line 18
    new-instance v3, Lcom/stripe/android/stripe3ds2/transaction/RuntimeErrorEvent;

    invoke-direct {v3, v1}, Lcom/stripe/android/stripe3ds2/transaction/RuntimeErrorEvent;-><init>(Ljava/lang/Throwable;)V

    new-instance v1, La/a/a/a/e/a0;

    invoke-direct {v1, p0, v4}, La/a/a/a/e/a0;-><init>(La/a/a/a/e/y;Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter;)V

    invoke-interface {v2, v3, v1}, Lcom/stripe/android/stripe3ds2/transaction/ChallengeStatusReceiver;->runtimeError(Lcom/stripe/android/stripe3ds2/transaction/RuntimeErrorEvent;Lkotlin/jvm/functions/Function0;)V

    goto :goto_8e

    .line 19
    :cond_6f
    instance-of v5, v1, La/a/a/a/e/g$d;

    if-eqz v5, :cond_8e

    check-cast v1, La/a/a/a/e/g$d;

    .line 20
    iget-object v1, v1, La/a/a/a/e/g$d;->a:La/a/a/a/f/c;

    .line 21
    move-object/from16 v5, p5

    check-cast v5, La/a/a/a/e/g0$a;

    invoke-virtual {v5}, La/a/a/a/e/g0$a;->b()V

    .line 22
    invoke-interface {v3, v1}, La/a/a/a/e/m;->a(La/a/a/a/f/c;)V

    .line 23
    new-instance v3, Lcom/stripe/android/stripe3ds2/transaction/RuntimeErrorEvent;

    invoke-direct {v3, v1}, Lcom/stripe/android/stripe3ds2/transaction/RuntimeErrorEvent;-><init>(La/a/a/a/f/c;)V

    new-instance v1, La/a/a/a/e/b0;

    invoke-direct {v1, p0, v4}, La/a/a/a/e/b0;-><init>(La/a/a/a/e/y;Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter;)V

    invoke-interface {v2, v3, v1}, Lcom/stripe/android/stripe3ds2/transaction/ChallengeStatusReceiver;->runtimeError(Lcom/stripe/android/stripe3ds2/transaction/RuntimeErrorEvent;Lkotlin/jvm/functions/Function0;)V

    :cond_8e
    :goto_8e
    return-void
.end method

.method public close()V
    .registers 1

    return-void
.end method

.method public createAuthenticationRequestParameters(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/android/stripe3ds2/transaction/AuthenticationRequestParameters;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, La/a/a/a/e/y;->c:La/a/a/a/e/c;

    iget-object v1, p0, La/a/a/a/e/y;->j:Ljava/lang/String;

    iget-object v2, p0, La/a/a/a/e/y;->k:Ljava/security/PublicKey;

    iget-object v3, p0, La/a/a/a/e/y;->l:Ljava/lang/String;

    .line 1
    iget-object v4, p0, La/a/a/a/e/y;->m:Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;

    .line 2
    iget-object v5, p0, La/a/a/a/e/y;->n:Ljava/security/KeyPair;

    invoke-virtual {v5}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v5

    const-string v6, "sdkKeyPair.public"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, p1

    invoke-interface/range {v0 .. v6}, La/a/a/a/e/c;->a(Ljava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;Ljava/security/PublicKey;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public doChallenge(Landroid/app/Activity;Lcom/stripe/android/stripe3ds2/transaction/ChallengeParameters;Lcom/stripe/android/stripe3ds2/transaction/ChallengeStatusReceiver;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 12
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/stripe3ds2/transaction/ChallengeParameters;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/stripe3ds2/transaction/ChallengeStatusReceiver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/stripe/android/stripe3ds2/transaction/ChallengeParameters;",
            "Lcom/stripe/android/stripe3ds2/transaction/ChallengeStatusReceiver;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v1, Lcom/stripe/android/stripe3ds2/transaction/Stripe3ds2ActivityStarterHost;

    invoke-direct {v1, p1}, Lcom/stripe/android/stripe3ds2/transaction/Stripe3ds2ActivityStarterHost;-><init>(Landroid/app/Activity;)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, La/a/a/a/e/y;->doChallenge(Lcom/stripe/android/stripe3ds2/transaction/Stripe3ds2ActivityStarterHost;Lcom/stripe/android/stripe3ds2/transaction/ChallengeParameters;Lcom/stripe/android/stripe3ds2/transaction/ChallengeStatusReceiver;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_15

    return-object p1

    :cond_15
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public doChallenge(Lcom/stripe/android/stripe3ds2/transaction/Stripe3ds2ActivityStarterHost;Lcom/stripe/android/stripe3ds2/transaction/ChallengeParameters;Lcom/stripe/android/stripe3ds2/transaction/ChallengeStatusReceiver;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 28
    .param p1    # Lcom/stripe/android/stripe3ds2/transaction/Stripe3ds2ActivityStarterHost;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/stripe3ds2/transaction/ChallengeParameters;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/stripe3ds2/transaction/ChallengeStatusReceiver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/stripe3ds2/transaction/Stripe3ds2ActivityStarterHost;",
            "Lcom/stripe/android/stripe3ds2/transaction/ChallengeParameters;",
            "Lcom/stripe/android/stripe3ds2/transaction/ChallengeStatusReceiver;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p3

    move-object/from16 v2, p5

    instance-of v3, v2, La/a/a/a/e/y$b;

    if-eqz v3, :cond_1b

    move-object v3, v2

    check-cast v3, La/a/a/a/e/y$b;

    iget v4, v3, La/a/a/a/e/y$b;->b:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_1b

    sub-int/2addr v4, v5

    iput v4, v3, La/a/a/a/e/y$b;->b:I

    goto :goto_20

    :cond_1b
    new-instance v3, La/a/a/a/e/y$b;

    invoke-direct {v3, v1, v2}, La/a/a/a/e/y$b;-><init>(La/a/a/a/e/y;Lkotlin/coroutines/Continuation;)V

    :goto_20
    move-object v10, v3

    iget-object v2, v10, La/a/a/a/e/y$b;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v11

    iget v3, v10, La/a/a/a/e/y$b;->b:I

    const/4 v12, 0x1

    if-eqz v3, :cond_69

    if-ne v3, v12, :cond_61

    iget-object v0, v10, La/a/a/a/e/y$b;->k:Ljava/lang/Object;

    check-cast v0, La/a/a/a/e/f$a;

    iget-object v3, v10, La/a/a/a/e/y$b;->j:Ljava/lang/Object;

    check-cast v3, La/a/a/a/e/g0$a;

    iget-object v4, v10, La/a/a/a/e/y$b;->i:Ljava/lang/Object;

    check-cast v4, La/a/a/a/e/m;

    iget-object v5, v10, La/a/a/a/e/y$b;->h:Ljava/lang/Object;

    check-cast v5, La/a/a/a/e/y;

    iget-object v6, v10, La/a/a/a/e/y$b;->g:Ljava/lang/Object;

    check-cast v6, Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter$a;

    iget-object v7, v10, La/a/a/a/e/y$b;->f:Ljava/lang/Object;

    check-cast v7, Lcom/stripe/android/stripe3ds2/transaction/ChallengeStatusReceiver;

    iget-object v8, v10, La/a/a/a/e/y$b;->e:Ljava/lang/Object;

    check-cast v8, Lcom/stripe/android/stripe3ds2/transaction/Stripe3ds2ActivityStarterHost;

    iget-object v9, v10, La/a/a/a/e/y$b;->d:Ljava/lang/Object;

    check-cast v9, La/a/a/a/e/y;

    :try_start_4e
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_5d

    move-object/from16 v17, v0

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object v14, v5

    move-object v13, v6

    move-object/from16 v16, v8

    goto/16 :goto_16e

    :catchall_5d
    move-exception v0

    move-object v13, v6

    goto/16 :goto_199

    :cond_61
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_69
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v1, La/a/a/a/e/y;->t:La/a/a/a/e/r;

    const-string v3, "Starting challenge flow."

    invoke-interface {v2, v3}, La/a/a/a/e/r;->a(Ljava/lang/String;)V

    new-instance v13, Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter$a;

    iget v2, v1, La/a/a/a/e/y;->w:I

    invoke-direct {v13, v0, v2}, Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter$a;-><init>(Lcom/stripe/android/stripe3ds2/transaction/Stripe3ds2ActivityStarterHost;I)V

    const/4 v2, 0x5

    const/4 v14, 0x0

    move/from16 v4, p4

    if-lt v4, v2, :cond_18d

    :try_start_80
    iget-object v2, v1, La/a/a/a/e/y;->e:La/a/a/a/e/k;

    .line 1
    iget-object v3, v1, La/a/a/a/e/y;->m:Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;

    .line 2
    invoke-interface {v2, v3, v9}, La/a/a/a/e/k;->a(Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;Lcom/stripe/android/stripe3ds2/transaction/ChallengeStatusReceiver;)V

    invoke-virtual/range {p2 .. p2}, Lcom/stripe/android/stripe3ds2/transaction/ChallengeParameters;->getAcsSignedContent()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_181

    iget-boolean v3, v1, La/a/a/a/e/y;->o:Z

    iget-object v5, v1, La/a/a/a/e/y;->p:Ljava/util/List;

    .line 3
    iget-object v6, v1, La/a/a/a/e/y;->b:La/a/a/a/e/b;

    iget-object v7, v1, La/a/a/a/e/y;->h:La/a/a/a/e/q;

    invoke-interface {v7, v2, v3, v5}, La/a/a/a/e/q;->a(Ljava/lang/String;ZLjava/util/List;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v6, v2}, La/a/a/a/e/b;->a(Lorg/json/JSONObject;)La/a/a/a/e/a;

    move-result-object v2

    .line 4
    iget-object v8, v2, La/a/a/a/e/a;->a:Ljava/lang/String;

    .line 5
    iget-object v7, v2, La/a/a/a/e/a;->b:Ljava/security/interfaces/ECPublicKey;

    move-object/from16 v2, p2

    .line 6
    invoke-virtual {v1, v2}, La/a/a/a/e/y;->a(Lcom/stripe/android/stripe3ds2/transaction/ChallengeParameters;)La/a/a/a/f/a;

    move-result-object v6

    iget-object v2, v1, La/a/a/a/e/y;->u:La/a/a/a/c/c;

    const-string v3, "acsUrl"

    .line 7
    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "errorReporter"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, La/a/a/a/e/v;

    new-instance v3, La/a/a/a/e/w;

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xa

    move-object v15, v3

    move-object/from16 v16, v8

    move-object/from16 v18, v2

    invoke-direct/range {v15 .. v20}, La/a/a/a/e/w;-><init>(Ljava/lang/String;La/a/a/a/e/w$a;La/a/a/a/c/c;Lkotlin/coroutines/CoroutineContext;I)V

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v15

    invoke-direct {v5, v3, v2, v15}, La/a/a/a/e/v;-><init>(La/a/a/a/e/n;La/a/a/a/c/c;Lkotlin/coroutines/CoroutineContext;)V

    .line 8
    new-instance v15, La/a/a/a/e/g0$a;

    sget-object v16, La/a/a/a/e/h0$a;->b:La/a/a/a/e/h0$a;

    .line 9
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v17

    move-object v2, v15

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 p2, v5

    move-object/from16 p4, v6

    move-object/from16 v18, v7

    move-object/from16 v7, v16

    move-object/from16 v20, v8

    move-object/from16 v8, v17

    invoke-direct/range {v2 .. v8}, La/a/a/a/e/g0$a;-><init>(Lcom/stripe/android/stripe3ds2/transaction/ChallengeStatusReceiver;ILa/a/a/a/e/m;La/a/a/a/f/a;La/a/a/a/e/h0;Lkotlin/coroutines/CoroutineContext;)V

    .line 10
    iget-object v2, v15, La/a/a/a/e/g0$a;->h:La/a/a/a/e/h0;

    iget-object v3, v15, La/a/a/a/e/g0$a;->g:La/a/a/a/f/a;

    .line 11
    iget-object v3, v3, La/a/a/a/f/a;->d:Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;

    .line 12
    invoke-interface {v2, v3, v15}, La/a/a/a/e/h0;->a(Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;La/a/a/a/e/g0;)V

    iget-object v2, v15, La/a/a/a/e/g0$a;->i:Lkotlin/coroutines/CoroutineContext;

    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    new-instance v6, La/a/a/a/e/f0;

    invoke-direct {v6, v15, v14}, La/a/a/a/e/f0;-><init>(La/a/a/a/e/g0$a;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v2

    iput-object v2, v15, La/a/a/a/e/g0$a;->d:Lkotlinx/coroutines/Job;

    .line 13
    new-instance v2, La/a/a/a/e/f$a;

    iget-object v3, v1, La/a/a/a/e/y;->q:La/a/a/a/d/i;

    iget-object v4, v1, La/a/a/a/e/y;->g:Ljava/lang/String;

    iget-object v5, v1, La/a/a/a/e/y;->n:Ljava/security/KeyPair;

    invoke-virtual {v5}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v5

    const-string v6, "sdkKeyPair.private"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v5

    const-string v6, "sdkKeyPair.private.encoded"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {v18 .. v18}, Ljava/security/interfaces/ECPublicKey;->getEncoded()[B

    move-result-object v6

    const-string v7, "acsEphemPubKey.encoded"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v15

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v21, p4

    invoke-direct/range {v15 .. v21}, La/a/a/a/e/f$a;-><init>(La/a/a/a/d/i;Ljava/lang/String;[B[BLjava/lang/String;La/a/a/a/f/a;)V

    new-instance v3, La/a/a/a/e/u$b;

    invoke-direct {v3}, La/a/a/a/e/u$b;-><init>()V

    iget-object v4, v1, La/a/a/a/e/y;->u:La/a/a/a/c/c;

    invoke-virtual {v3, v2, v4}, La/a/a/a/e/u$b;->a(La/a/a/a/e/f$a;La/a/a/a/c/c;)La/a/a/a/e/f;

    move-result-object v3

    iput-object v1, v10, La/a/a/a/e/y$b;->d:Ljava/lang/Object;

    iput-object v0, v10, La/a/a/a/e/y$b;->e:Ljava/lang/Object;

    iput-object v9, v10, La/a/a/a/e/y$b;->f:Ljava/lang/Object;

    iput-object v13, v10, La/a/a/a/e/y$b;->g:Ljava/lang/Object;

    iput-object v1, v10, La/a/a/a/e/y$b;->h:Ljava/lang/Object;

    move-object/from16 v4, p2

    iput-object v4, v10, La/a/a/a/e/y$b;->i:Ljava/lang/Object;

    iput-object v7, v10, La/a/a/a/e/y$b;->j:Ljava/lang/Object;

    iput-object v2, v10, La/a/a/a/e/y$b;->k:Ljava/lang/Object;

    iput v12, v10, La/a/a/a/e/y$b;->b:I
    :try_end_157
    .catchall {:try_start_80 .. :try_end_157} :catchall_196

    check-cast v3, La/a/a/a/e/u;

    move-object/from16 v5, p4

    :try_start_15b
    invoke-virtual {v3, v5, v10}, La/a/a/a/e/u;->a(La/a/a/a/f/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_15f
    .catchall {:try_start_15b .. :try_end_15f} :catchall_196

    if-ne v3, v11, :cond_162

    return-object v11

    :cond_162
    move-object/from16 v16, v0

    move-object v14, v1

    move-object/from16 v17, v2

    move-object v2, v3

    move-object/from16 v20, v4

    move-object/from16 v19, v7

    move-object v7, v9

    move-object v9, v14

    :goto_16e
    :try_start_16e
    move-object v15, v2

    check-cast v15, La/a/a/a/e/g;

    move-object/from16 v18, v7

    move-object/from16 v21, v13

    invoke-virtual/range {v14 .. v21}, La/a/a/a/e/y;->a(La/a/a/a/e/g;Lcom/stripe/android/stripe3ds2/transaction/Stripe3ds2ActivityStarterHost;La/a/a/a/e/f$a;Lcom/stripe/android/stripe3ds2/transaction/ChallengeStatusReceiver;La/a/a/a/e/g0;La/a/a/a/e/m;Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_17e
    .catchall {:try_start_16e .. :try_end_17e} :catchall_17f

    goto :goto_1a1

    :catchall_17f
    move-exception v0

    goto :goto_199

    :cond_181
    const-string v0, "Required value was null."

    :try_start_183
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_18d
    new-instance v0, Lcom/stripe/android/stripe3ds2/exceptions/InvalidInputException;

    const-string v2, "Timeout must be at least 5 minutes"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v14, v3, v14}, Lcom/stripe/android/stripe3ds2/exceptions/InvalidInputException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
    :try_end_196
    .catchall {:try_start_183 .. :try_end_196} :catchall_196

    :catchall_196
    move-exception v0

    move-object v7, v9

    move-object v9, v1

    :goto_199
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1a1
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1c0

    iget-object v2, v9, La/a/a/a/e/y;->u:La/a/a/a/c/c;

    invoke-interface {v2, v0}, La/a/a/a/c/c;->a(Ljava/lang/Throwable;)V

    iget-object v2, v9, La/a/a/a/e/y;->t:La/a/a/a/e/r;

    const-string v3, "Exception during challenge flow."

    invoke-interface {v2, v3, v0}, La/a/a/a/e/r;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Lcom/stripe/android/stripe3ds2/transaction/RuntimeErrorEvent;

    invoke-direct {v2, v0}, Lcom/stripe/android/stripe3ds2/transaction/RuntimeErrorEvent;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, La/a/a/a/e/y$a;

    invoke-direct {v0, v9, v7, v13}, La/a/a/a/e/y$a;-><init>(La/a/a/a/e/y;Lcom/stripe/android/stripe3ds2/transaction/ChallengeStatusReceiver;Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter$a;)V

    invoke-interface {v7, v2, v0}, Lcom/stripe/android/stripe3ds2/transaction/ChallengeStatusReceiver;->runtimeError(Lcom/stripe/android/stripe3ds2/transaction/RuntimeErrorEvent;Lkotlin/jvm/functions/Function0;)V

    :cond_1c0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public getInitialChallengeUiType()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, La/a/a/a/e/y;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getProgressView(Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 5
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/stripe3ds2/exceptions/InvalidInputException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "currentActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/e/y;->d:La/a/a/a/h/z;

    iget-object v1, p0, La/a/a/a/e/y;->s:La/a/a/a/h/z$a;

    iget-object v2, p0, La/a/a/a/e/y;->r:Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1, v2}, La/a/a/a/h/z;->a(Landroid/content/Context;La/a/a/a/h/z$a;Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public getSdkTransactionId()Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, La/a/a/a/e/y;->m:Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;

    return-object v0
.end method

.method public setInitialChallengeUiType(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, La/a/a/a/e/y;->a:Ljava/lang/String;

    return-void
.end method

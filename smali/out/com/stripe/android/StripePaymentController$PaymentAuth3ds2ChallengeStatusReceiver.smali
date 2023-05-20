.class public final Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;
.super Lcom/stripe/android/stripe3ds2/transaction/StripeChallengeStatusReceiver;
.source "StripePaymentController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/StripePaymentController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PaymentAuth3ds2ChallengeStatusReceiver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 &2\u00020\u0001:\u0001&BO\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0002\u0010\u0014J\u001e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00072\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0019H\u0016J&\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0017\u001a\u00020\u00072\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0019H\u0016J\u0016\u0010\u001d\u001a\u00020\u00162\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0019H\u0002J\u001e\u0010\u001f\u001a\u00020\u00162\u0006\u0010 \u001a\u00020!2\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0019H\u0016J\u001e\u0010\"\u001a\u00020\u00162\u0006\u0010#\u001a\u00020$2\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0019H\u0016J\u001e\u0010%\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00072\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0019H\u0016R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;",
        "Lcom/stripe/android/stripe3ds2/transaction/StripeChallengeStatusReceiver;",
        "stripeRepository",
        "Lcom/stripe/android/networking/StripeRepository;",
        "stripeIntent",
        "Lcom/stripe/android/model/StripeIntent;",
        "sourceId",
        "",
        "requestOptions",
        "Lcom/stripe/android/networking/ApiRequest$Options;",
        "analyticsRequestExecutor",
        "Lcom/stripe/android/networking/AnalyticsRequestExecutor;",
        "analyticsDataFactory",
        "Lcom/stripe/android/networking/AnalyticsDataFactory;",
        "transaction",
        "Lcom/stripe/android/stripe3ds2/transaction/Transaction;",
        "analyticsRequestFactory",
        "Lcom/stripe/android/networking/AnalyticsRequest$Factory;",
        "workContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "(Lcom/stripe/android/networking/StripeRepository;Lcom/stripe/android/model/StripeIntent;Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Lcom/stripe/android/networking/AnalyticsRequestExecutor;Lcom/stripe/android/networking/AnalyticsDataFactory;Lcom/stripe/android/stripe3ds2/transaction/Transaction;Lcom/stripe/android/networking/AnalyticsRequest$Factory;Lkotlin/coroutines/CoroutineContext;)V",
        "cancelled",
        "",
        "uiTypeCode",
        "onReceiverCompleted",
        "Lkotlin/Function0;",
        "completed",
        "completionEvent",
        "Lcom/stripe/android/stripe3ds2/transaction/CompletionEvent;",
        "notifyCompletion",
        "completed3ds2Callback",
        "protocolError",
        "protocolErrorEvent",
        "Lcom/stripe/android/stripe3ds2/transaction/ProtocolErrorEvent;",
        "runtimeError",
        "runtimeErrorEvent",
        "Lcom/stripe/android/stripe3ds2/transaction/RuntimeErrorEvent;",
        "timedout",
        "Companion",
        "stripe_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final analyticsDataFactory:Lcom/stripe/android/networking/AnalyticsDataFactory;

.field private final analyticsRequestExecutor:Lcom/stripe/android/networking/AnalyticsRequestExecutor;

.field private final analyticsRequestFactory:Lcom/stripe/android/networking/AnalyticsRequest$Factory;

.field private final requestOptions:Lcom/stripe/android/networking/ApiRequest$Options;

.field private final sourceId:Ljava/lang/String;

.field private final stripeIntent:Lcom/stripe/android/model/StripeIntent;

.field private final stripeRepository:Lcom/stripe/android/networking/StripeRepository;

.field private final transaction:Lcom/stripe/android/stripe3ds2/transaction/Transaction;

.field private final workContext:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->Companion:Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/android/networking/StripeRepository;Lcom/stripe/android/model/StripeIntent;Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Lcom/stripe/android/networking/AnalyticsRequestExecutor;Lcom/stripe/android/networking/AnalyticsDataFactory;Lcom/stripe/android/stripe3ds2/transaction/Transaction;Lcom/stripe/android/networking/AnalyticsRequest$Factory;Lkotlin/coroutines/CoroutineContext;)V
    .registers 11
    .param p1    # Lcom/stripe/android/networking/StripeRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/model/StripeIntent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/stripe/android/networking/ApiRequest$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/stripe/android/networking/AnalyticsRequestExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/stripe/android/networking/AnalyticsDataFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/stripe/android/stripe3ds2/transaction/Transaction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/stripe/android/networking/AnalyticsRequest$Factory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "stripeRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stripeIntent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestOptions"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsRequestExecutor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsDataFactory"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transaction"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsRequestFactory"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workContext"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1064
    invoke-direct {p0}, Lcom/stripe/android/stripe3ds2/transaction/StripeChallengeStatusReceiver;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->stripeRepository:Lcom/stripe/android/networking/StripeRepository;

    iput-object p2, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->stripeIntent:Lcom/stripe/android/model/StripeIntent;

    iput-object p3, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->sourceId:Ljava/lang/String;

    iput-object p4, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->requestOptions:Lcom/stripe/android/networking/ApiRequest$Options;

    iput-object p5, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->analyticsRequestExecutor:Lcom/stripe/android/networking/AnalyticsRequestExecutor;

    iput-object p6, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->analyticsDataFactory:Lcom/stripe/android/networking/AnalyticsDataFactory;

    iput-object p7, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->transaction:Lcom/stripe/android/stripe3ds2/transaction/Transaction;

    iput-object p8, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->analyticsRequestFactory:Lcom/stripe/android/networking/AnalyticsRequest$Factory;

    iput-object p9, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->workContext:Lkotlin/coroutines/CoroutineContext;

    return-void
.end method

.method public static final synthetic access$getRequestOptions$p(Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;)Lcom/stripe/android/networking/ApiRequest$Options;
    .registers 1

    .line 1054
    iget-object p0, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->requestOptions:Lcom/stripe/android/networking/ApiRequest$Options;

    return-object p0
.end method

.method public static final synthetic access$getSourceId$p(Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;)Ljava/lang/String;
    .registers 1

    .line 1054
    iget-object p0, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->sourceId:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getStripeRepository$p(Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;)Lcom/stripe/android/networking/StripeRepository;
    .registers 1

    .line 1054
    iget-object p0, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->stripeRepository:Lcom/stripe/android/networking/StripeRepository;

    return-object p0
.end method

.method private final notifyCompletion(Lkotlin/jvm/functions/Function0;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1151
    iget-object v0, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->analyticsRequestExecutor:Lcom/stripe/android/networking/AnalyticsRequestExecutor;

    .line 1152
    iget-object v1, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->analyticsRequestFactory:Lcom/stripe/android/networking/AnalyticsRequest$Factory;

    .line 1153
    iget-object v2, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->analyticsDataFactory:Lcom/stripe/android/networking/AnalyticsDataFactory;

    .line 1154
    sget-object v3, Lcom/stripe/android/AnalyticsEvent;->Auth3ds2ChallengePresented:Lcom/stripe/android/AnalyticsEvent;

    .line 1155
    iget-object v4, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->stripeIntent:Lcom/stripe/android/model/StripeIntent;

    invoke-interface {v4}, Lcom/stripe/android/model/StripeIntent;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    if-eqz v4, :cond_13

    goto :goto_14

    :cond_13
    move-object v4, v5

    .line 1156
    :goto_14
    iget-object v6, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->transaction:Lcom/stripe/android/stripe3ds2/transaction/Transaction;

    invoke-interface {v6}, Lcom/stripe/android/stripe3ds2/transaction/Transaction;->getInitialChallengeUiType()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1d

    move-object v5, v6

    .line 1153
    :cond_1d
    invoke-virtual {v2, v3, v4, v5}, Lcom/stripe/android/networking/AnalyticsDataFactory;->create3ds2ChallengeParams$stripe_release(Lcom/stripe/android/AnalyticsEvent;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 1152
    invoke-virtual {v1, v2}, Lcom/stripe/android/networking/AnalyticsRequest$Factory;->create$stripe_release(Ljava/util/Map;)Lcom/stripe/android/networking/AnalyticsRequest;

    move-result-object v1

    .line 1151
    invoke-interface {v0, v1}, Lcom/stripe/android/networking/AnalyticsRequestExecutor;->executeAsync(Lcom/stripe/android/networking/AnalyticsRequest;)V

    .line 1161
    iget-object v0, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->workContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver$notifyCompletion$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, v4}, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver$notifyCompletion$1;-><init>(Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public cancelled(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .registers 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uiTypeCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onReceiverCompleted"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1088
    invoke-super {p0, p1, p2}, Lcom/stripe/android/stripe3ds2/transaction/StripeChallengeStatusReceiver;->cancelled(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 1089
    iget-object v0, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->analyticsRequestExecutor:Lcom/stripe/android/networking/AnalyticsRequestExecutor;

    .line 1090
    iget-object v1, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->analyticsRequestFactory:Lcom/stripe/android/networking/AnalyticsRequest$Factory;

    .line 1091
    iget-object v2, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->analyticsDataFactory:Lcom/stripe/android/networking/AnalyticsDataFactory;

    .line 1092
    sget-object v3, Lcom/stripe/android/AnalyticsEvent;->Auth3ds2ChallengeCanceled:Lcom/stripe/android/AnalyticsEvent;

    .line 1093
    iget-object v4, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->stripeIntent:Lcom/stripe/android/model/StripeIntent;

    invoke-interface {v4}, Lcom/stripe/android/model/StripeIntent;->getId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1e

    goto :goto_20

    :cond_1e
    const-string v4, ""

    .line 1091
    :goto_20
    invoke-virtual {v2, v3, v4, p1}, Lcom/stripe/android/networking/AnalyticsDataFactory;->create3ds2ChallengeParams$stripe_release(Lcom/stripe/android/AnalyticsEvent;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 1090
    invoke-virtual {v1, p1}, Lcom/stripe/android/networking/AnalyticsRequest$Factory;->create$stripe_release(Ljava/util/Map;)Lcom/stripe/android/networking/AnalyticsRequest;

    move-result-object p1

    .line 1089
    invoke-interface {v0, p1}, Lcom/stripe/android/networking/AnalyticsRequestExecutor;->executeAsync(Lcom/stripe/android/networking/AnalyticsRequest;)V

    .line 1098
    invoke-direct {p0, p2}, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->notifyCompletion(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public completed(Lcom/stripe/android/stripe3ds2/transaction/CompletionEvent;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .registers 8
    .param p1    # Lcom/stripe/android/stripe3ds2/transaction/CompletionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/stripe3ds2/transaction/CompletionEvent;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "completionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiTypeCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onReceiverCompleted"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1071
    invoke-super {p0, p1, p2, p3}, Lcom/stripe/android/stripe3ds2/transaction/StripeChallengeStatusReceiver;->completed(Lcom/stripe/android/stripe3ds2/transaction/CompletionEvent;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 1072
    iget-object p1, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->analyticsRequestExecutor:Lcom/stripe/android/networking/AnalyticsRequestExecutor;

    .line 1073
    iget-object v0, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->analyticsRequestFactory:Lcom/stripe/android/networking/AnalyticsRequest$Factory;

    .line 1074
    iget-object v1, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->analyticsDataFactory:Lcom/stripe/android/networking/AnalyticsDataFactory;

    .line 1075
    sget-object v2, Lcom/stripe/android/AnalyticsEvent;->Auth3ds2ChallengeCompleted:Lcom/stripe/android/AnalyticsEvent;

    .line 1076
    iget-object v3, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->stripeIntent:Lcom/stripe/android/model/StripeIntent;

    invoke-interface {v3}, Lcom/stripe/android/model/StripeIntent;->getId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_23

    goto :goto_25

    :cond_23
    const-string v3, ""

    .line 1074
    :goto_25
    invoke-virtual {v1, v2, v3, p2}, Lcom/stripe/android/networking/AnalyticsDataFactory;->create3ds2ChallengeParams$stripe_release(Lcom/stripe/android/AnalyticsEvent;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    .line 1073
    invoke-virtual {v0, p2}, Lcom/stripe/android/networking/AnalyticsRequest$Factory;->create$stripe_release(Ljava/util/Map;)Lcom/stripe/android/networking/AnalyticsRequest;

    move-result-object p2

    .line 1072
    invoke-interface {p1, p2}, Lcom/stripe/android/networking/AnalyticsRequestExecutor;->executeAsync(Lcom/stripe/android/networking/AnalyticsRequest;)V

    .line 1081
    invoke-direct {p0, p3}, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->notifyCompletion(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public protocolError(Lcom/stripe/android/stripe3ds2/transaction/ProtocolErrorEvent;Lkotlin/jvm/functions/Function0;)V
    .registers 7
    .param p1    # Lcom/stripe/android/stripe3ds2/transaction/ProtocolErrorEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/stripe3ds2/transaction/ProtocolErrorEvent;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "protocolErrorEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onReceiverCompleted"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1122
    invoke-super {p0, p1, p2}, Lcom/stripe/android/stripe3ds2/transaction/StripeChallengeStatusReceiver;->protocolError(Lcom/stripe/android/stripe3ds2/transaction/ProtocolErrorEvent;Lkotlin/jvm/functions/Function0;)V

    .line 1123
    iget-object v0, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->analyticsRequestExecutor:Lcom/stripe/android/networking/AnalyticsRequestExecutor;

    .line 1124
    iget-object v1, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->analyticsRequestFactory:Lcom/stripe/android/networking/AnalyticsRequest$Factory;

    .line 1125
    iget-object v2, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->analyticsDataFactory:Lcom/stripe/android/networking/AnalyticsDataFactory;

    .line 1126
    iget-object v3, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->stripeIntent:Lcom/stripe/android/model/StripeIntent;

    invoke-interface {v3}, Lcom/stripe/android/model/StripeIntent;->getId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1c

    goto :goto_1e

    :cond_1c
    const-string v3, ""

    .line 1125
    :goto_1e
    invoke-virtual {v2, v3, p1}, Lcom/stripe/android/networking/AnalyticsDataFactory;->create3ds2ChallengeErrorParams$stripe_release(Ljava/lang/String;Lcom/stripe/android/stripe3ds2/transaction/ProtocolErrorEvent;)Ljava/util/Map;

    move-result-object p1

    .line 1124
    invoke-virtual {v1, p1}, Lcom/stripe/android/networking/AnalyticsRequest$Factory;->create$stripe_release(Ljava/util/Map;)Lcom/stripe/android/networking/AnalyticsRequest;

    move-result-object p1

    .line 1123
    invoke-interface {v0, p1}, Lcom/stripe/android/networking/AnalyticsRequestExecutor;->executeAsync(Lcom/stripe/android/networking/AnalyticsRequest;)V

    .line 1131
    invoke-direct {p0, p2}, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->notifyCompletion(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public runtimeError(Lcom/stripe/android/stripe3ds2/transaction/RuntimeErrorEvent;Lkotlin/jvm/functions/Function0;)V
    .registers 7
    .param p1    # Lcom/stripe/android/stripe3ds2/transaction/RuntimeErrorEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/stripe3ds2/transaction/RuntimeErrorEvent;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "runtimeErrorEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onReceiverCompleted"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1138
    invoke-super {p0, p1, p2}, Lcom/stripe/android/stripe3ds2/transaction/StripeChallengeStatusReceiver;->runtimeError(Lcom/stripe/android/stripe3ds2/transaction/RuntimeErrorEvent;Lkotlin/jvm/functions/Function0;)V

    .line 1139
    iget-object v0, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->analyticsRequestExecutor:Lcom/stripe/android/networking/AnalyticsRequestExecutor;

    .line 1140
    iget-object v1, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->analyticsRequestFactory:Lcom/stripe/android/networking/AnalyticsRequest$Factory;

    .line 1141
    iget-object v2, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->analyticsDataFactory:Lcom/stripe/android/networking/AnalyticsDataFactory;

    .line 1142
    iget-object v3, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->stripeIntent:Lcom/stripe/android/model/StripeIntent;

    invoke-interface {v3}, Lcom/stripe/android/model/StripeIntent;->getId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1c

    goto :goto_1e

    :cond_1c
    const-string v3, ""

    .line 1141
    :goto_1e
    invoke-virtual {v2, v3, p1}, Lcom/stripe/android/networking/AnalyticsDataFactory;->create3ds2ChallengeErrorParams$stripe_release(Ljava/lang/String;Lcom/stripe/android/stripe3ds2/transaction/RuntimeErrorEvent;)Ljava/util/Map;

    move-result-object p1

    .line 1140
    invoke-virtual {v1, p1}, Lcom/stripe/android/networking/AnalyticsRequest$Factory;->create$stripe_release(Ljava/util/Map;)Lcom/stripe/android/networking/AnalyticsRequest;

    move-result-object p1

    .line 1139
    invoke-interface {v0, p1}, Lcom/stripe/android/networking/AnalyticsRequestExecutor;->executeAsync(Lcom/stripe/android/networking/AnalyticsRequest;)V

    .line 1147
    invoke-direct {p0, p2}, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->notifyCompletion(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public timedout(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .registers 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uiTypeCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onReceiverCompleted"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1105
    invoke-super {p0, p1, p2}, Lcom/stripe/android/stripe3ds2/transaction/StripeChallengeStatusReceiver;->timedout(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 1106
    iget-object v0, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->analyticsRequestExecutor:Lcom/stripe/android/networking/AnalyticsRequestExecutor;

    .line 1107
    iget-object v1, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->analyticsRequestFactory:Lcom/stripe/android/networking/AnalyticsRequest$Factory;

    .line 1108
    iget-object v2, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->analyticsDataFactory:Lcom/stripe/android/networking/AnalyticsDataFactory;

    .line 1109
    sget-object v3, Lcom/stripe/android/AnalyticsEvent;->Auth3ds2ChallengeTimedOut:Lcom/stripe/android/AnalyticsEvent;

    .line 1110
    iget-object v4, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->stripeIntent:Lcom/stripe/android/model/StripeIntent;

    invoke-interface {v4}, Lcom/stripe/android/model/StripeIntent;->getId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1e

    goto :goto_20

    :cond_1e
    const-string v4, ""

    .line 1108
    :goto_20
    invoke-virtual {v2, v3, v4, p1}, Lcom/stripe/android/networking/AnalyticsDataFactory;->create3ds2ChallengeParams$stripe_release(Lcom/stripe/android/AnalyticsEvent;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 1107
    invoke-virtual {v1, p1}, Lcom/stripe/android/networking/AnalyticsRequest$Factory;->create$stripe_release(Ljava/util/Map;)Lcom/stripe/android/networking/AnalyticsRequest;

    move-result-object p1

    .line 1106
    invoke-interface {v0, p1}, Lcom/stripe/android/networking/AnalyticsRequestExecutor;->executeAsync(Lcom/stripe/android/networking/AnalyticsRequest;)V

    .line 1115
    invoke-direct {p0, p2}, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->notifyCompletion(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

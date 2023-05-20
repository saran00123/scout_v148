.class public final Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory;
.super Ljava/lang/Object;
.source "PaymentSheetFlowControllerFactory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$Result;,
        Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0000\u0018\u0000 $2\u00020\u0001:\u0002$%B\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\u001f\u0008\u0012\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\tB7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0011J\"\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\r2\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00130\u0016J2\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\r2\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00130\u0016J\u0008\u0010\u001a\u001a\u00020\u001bH\u0002J)\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\rH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001eJ\u0019\u0010\u001f\u001a\u00020\u001d2\u0006\u0010\u0014\u001a\u00020\rH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010 J-\u0010!\u001a\u00020\u00132\u0006\u0010\"\u001a\u00020\u001d2\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00130\u0016H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010#R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006&"
    }
    d2 = {
        "Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory;",
        "",
        "context",
        "Landroid/content/Context;",
        "workContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;)V",
        "config",
        "Lcom/stripe/android/PaymentConfiguration;",
        "(Landroid/content/Context;Lcom/stripe/android/PaymentConfiguration;Lkotlin/coroutines/CoroutineContext;)V",
        "stripeRepository",
        "Lcom/stripe/android/networking/StripeRepository;",
        "publishableKey",
        "",
        "stripeAccountId",
        "paymentSessionPrefs",
        "Lcom/stripe/android/PaymentSessionPrefs;",
        "(Landroid/content/Context;Lcom/stripe/android/networking/StripeRepository;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/PaymentSessionPrefs;Lkotlin/coroutines/CoroutineContext;)V",
        "create",
        "",
        "clientSecret",
        "onComplete",
        "Lkotlin/Function1;",
        "Lcom/stripe/android/paymentsheet/PaymentSheetFlowController$Result;",
        "ephemeralKey",
        "customerId",
        "createPaymentController",
        "Lcom/stripe/android/PaymentController;",
        "createWithDefaultArgs",
        "Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$Result;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "createWithGuestArgs",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "dispatchResult",
        "result",
        "(Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$Result;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
        "Result",
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
.field private static final Companion:Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PRODUCT_USAGE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;

.field private final paymentSessionPrefs:Lcom/stripe/android/PaymentSessionPrefs;

.field private final publishableKey:Ljava/lang/String;

.field private final stripeAccountId:Ljava/lang/String;

.field private final stripeRepository:Lcom/stripe/android/networking/StripeRepository;

.field private final workContext:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory;->Companion:Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$Companion;

    const-string v0, "PaymentSheet"

    .line 180
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory;->PRODUCT_USAGE:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/stripe/android/PaymentConfiguration;Lkotlin/coroutines/CoroutineContext;)V
    .registers 26

    .line 42
    new-instance v14, Lcom/stripe/android/networking/StripeApiRepository;

    .line 44
    invoke-virtual/range {p2 .. p2}, Lcom/stripe/android/PaymentConfiguration;->getPublishableKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x7fc

    const/4 v13, 0x0

    move-object v0, v14

    move-object/from16 v1, p1

    .line 42
    invoke-direct/range {v0 .. v13}, Lcom/stripe/android/networking/StripeApiRepository;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/stripe/android/AppInfo;Lcom/stripe/android/Logger;Lcom/stripe/android/networking/ApiRequestExecutor;Lcom/stripe/android/networking/AnalyticsRequestExecutor;Lcom/stripe/android/FingerprintDataRepository;Lcom/stripe/android/networking/AnalyticsDataFactory;Lcom/stripe/android/networking/FingerprintParamsUtils;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v17, v14

    check-cast v17, Lcom/stripe/android/networking/StripeRepository;

    .line 46
    invoke-virtual/range {p2 .. p2}, Lcom/stripe/android/PaymentConfiguration;->getPublishableKey()Ljava/lang/String;

    move-result-object v18

    .line 47
    invoke-virtual/range {p2 .. p2}, Lcom/stripe/android/PaymentConfiguration;->getStripeAccountId()Ljava/lang/String;

    move-result-object v19

    .line 48
    new-instance v0, Lcom/stripe/android/PaymentSessionPrefs$Default;

    invoke-direct {v0, v1}, Lcom/stripe/android/PaymentSessionPrefs$Default;-><init>(Landroid/content/Context;)V

    move-object/from16 v20, v0

    check-cast v20, Lcom/stripe/android/PaymentSessionPrefs;

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move-object/from16 v21, p3

    .line 40
    invoke-direct/range {v15 .. v21}, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory;-><init>(Landroid/content/Context;Lcom/stripe/android/networking/StripeRepository;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/PaymentSessionPrefs;Lkotlin/coroutines/CoroutineContext;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/stripe/android/networking/StripeRepository;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/PaymentSessionPrefs;Lkotlin/coroutines/CoroutineContext;)V
    .registers 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/networking/StripeRepository;
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
    .param p5    # Lcom/stripe/android/PaymentSessionPrefs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stripeRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publishableKey"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentSessionPrefs"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workContext"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory;->stripeRepository:Lcom/stripe/android/networking/StripeRepository;

    iput-object p3, p0, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory;->publishableKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory;->stripeAccountId:Ljava/lang/String;

    iput-object p5, p0, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory;->paymentSessionPrefs:Lcom/stripe/android/PaymentSessionPrefs;

    iput-object p6, p0, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory;->workContext:Lkotlin/coroutines/CoroutineContext;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-object v0, Lcom/stripe/android/PaymentConfiguration;->Companion:Lcom/stripe/android/PaymentConfiguration$Companion;

    invoke-virtual {v0, p1}, Lcom/stripe/android/PaymentConfiguration$Companion;->getInstance(Landroid/content/Context;)Lcom/stripe/android/PaymentConfiguration;

    move-result-object v0

    .line 30
    invoke-direct {p0, p1, v0, p2}, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory;-><init>(Landroid/content/Context;Lcom/stripe/android/PaymentConfiguration;Lkotlin/coroutines/CoroutineContext;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_a

    .line 29
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    :cond_a
    invoke-direct {p0, p1, p2}, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory;-><init>(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;)V

    return-void
.end method

.method private final createPaymentController()Lcom/stripe/android/PaymentController;
    .registers 19

    move-object/from16 v0, p0

    .line 158
    sget-object v1, Lcom/stripe/android/PaymentConfiguration;->Companion:Lcom/stripe/android/PaymentConfiguration$Companion;

    iget-object v2, v0, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/stripe/android/PaymentConfiguration$Companion;->getInstance(Landroid/content/Context;)Lcom/stripe/android/PaymentConfiguration;

    move-result-object v1

    .line 159
    invoke-virtual {v1}, Lcom/stripe/android/PaymentConfiguration;->getPublishableKey()Ljava/lang/String;

    move-result-object v4

    .line 160
    invoke-virtual {v1}, Lcom/stripe/android/PaymentConfiguration;->getStripeAccountId()Ljava/lang/String;

    .line 161
    new-instance v1, Lcom/stripe/android/StripePaymentController;

    .line 162
    iget-object v3, v0, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory;->context:Landroid/content/Context;

    .line 164
    iget-object v5, v0, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory;->stripeRepository:Lcom/stripe/android/networking/StripeRepository;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1ff0

    const/16 v17, 0x0

    move-object v2, v1

    .line 161
    invoke-direct/range {v2 .. v17}, Lcom/stripe/android/StripePaymentController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/stripe/android/networking/StripeRepository;ZLcom/stripe/android/stripe3ds2/transaction/MessageVersionRegistry;Lcom/stripe/android/PaymentAuthConfig;Lcom/stripe/android/stripe3ds2/service/StripeThreeDs2Service;Lcom/stripe/android/networking/AnalyticsRequestExecutor;Lcom/stripe/android/networking/AnalyticsDataFactory;Lcom/stripe/android/StripePaymentController$ChallengeProgressActivityStarter;Lcom/stripe/android/networking/AlipayRepository;Lkotlin/coroutines/CoroutineContext;Landroid/content/res/Resources;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lcom/stripe/android/PaymentController;

    return-object v1
.end method


# virtual methods
.method public final create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .registers 14
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/android/paymentsheet/PaymentSheetFlowController$Result;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "clientSecret"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ephemeralKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customerId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onComplete"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory;->workContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$create$1;

    const/4 v8, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$create$1;-><init>(Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final create(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .registers 10
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/android/paymentsheet/PaymentSheetFlowController$Result;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "clientSecret"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onComplete"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory;->workContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$create$2;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$create$2;-><init>(Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method final synthetic createWithDefaultArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$Result;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    instance-of v2, v0, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$createWithDefaultArgs$1;

    if-eqz v2, :cond_18

    move-object v2, v0

    check-cast v2, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$createWithDefaultArgs$1;

    iget v3, v2, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$createWithDefaultArgs$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_18

    iget v0, v2, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$createWithDefaultArgs$1;->label:I

    sub-int/2addr v0, v4

    iput v0, v2, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$createWithDefaultArgs$1;->label:I

    goto :goto_1d

    :cond_18
    new-instance v2, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$createWithDefaultArgs$1;

    invoke-direct {v2, v1, v0}, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$createWithDefaultArgs$1;-><init>(Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory;Lkotlin/coroutines/Continuation;)V

    :goto_1d
    move-object v8, v2

    iget-object v0, v8, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$createWithDefaultArgs$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 96
    iget v3, v8, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$createWithDefaultArgs$1;->label:I

    const/4 v4, 0x1

    if-eqz v3, :cond_4c

    if-ne v3, v4, :cond_44

    iget-object v2, v8, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$createWithDefaultArgs$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v8, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$createWithDefaultArgs$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v8, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$createWithDefaultArgs$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v8, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$createWithDefaultArgs$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory;

    :try_start_3b
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3e} :catch_40

    move-object v11, v2

    goto :goto_96

    :catch_40
    move-exception v0

    move-object v11, v2

    goto/16 :goto_af

    .line 117
    :cond_44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_4c
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 101
    :try_start_4f
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory;

    .line 102
    iget-object v3, v0, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory;->stripeRepository:Lcom/stripe/android/networking/StripeRepository;

    .line 103
    new-instance v5, Lcom/stripe/android/model/ListPaymentMethodsParams;

    .line 105
    sget-object v11, Lcom/stripe/android/model/PaymentMethod$Type;->Card:Lcom/stripe/android/model/PaymentMethod$Type;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x1c

    const/16 v16, 0x0

    move-object v9, v5

    move-object/from16 v10, p3

    .line 103
    invoke-direct/range {v9 .. v16}, Lcom/stripe/android/model/ListPaymentMethodsParams;-><init>(Ljava/lang/String;Lcom/stripe/android/model/PaymentMethod$Type;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 107
    iget-object v6, v0, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory;->publishableKey:Ljava/lang/String;

    .line 108
    sget-object v7, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory;->PRODUCT_USAGE:Ljava/util/Set;

    .line 109
    new-instance v15, Lcom/stripe/android/networking/ApiRequest$Options;

    iget-object v11, v0, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory;->stripeAccountId:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x4

    const/4 v14, 0x0

    move-object v9, v15

    move-object/from16 v10, p2

    invoke-direct/range {v9 .. v14}, Lcom/stripe/android/networking/ApiRequest$Options;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v8, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$createWithDefaultArgs$1;->L$0:Ljava/lang/Object;
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_7a} :catch_a5

    move-object/from16 v9, p1

    :try_start_7c
    iput-object v9, v8, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$createWithDefaultArgs$1;->L$1:Ljava/lang/Object;
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_7e} :catch_a3

    move-object/from16 v10, p2

    :try_start_80
    iput-object v10, v8, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$createWithDefaultArgs$1;->L$2:Ljava/lang/Object;
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_82} :catch_a1

    move-object/from16 v11, p3

    :try_start_84
    iput-object v11, v8, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$createWithDefaultArgs$1;->L$3:Ljava/lang/Object;

    iput v4, v8, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$createWithDefaultArgs$1;->label:I

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v15

    .line 102
    invoke-interface/range {v3 .. v8}, Lcom/stripe/android/networking/StripeRepository;->getPaymentMethods(Lcom/stripe/android/model/ListPaymentMethodsParams;Ljava/lang/String;Ljava/util/Set;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_90
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_90} :catch_9f

    if-ne v0, v2, :cond_93

    return-object v2

    :cond_93
    move-object v5, v1

    move-object v4, v9

    move-object v3, v10

    .line 109
    :goto_96
    :try_start_96
    check-cast v0, Ljava/util/List;

    .line 101
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_96 .. :try_end_9c} :catch_9d

    goto :goto_b9

    :catch_9d
    move-exception v0

    goto :goto_af

    :catch_9f
    move-exception v0

    goto :goto_ac

    :catch_a1
    move-exception v0

    goto :goto_aa

    :catch_a3
    move-exception v0

    goto :goto_a8

    :catch_a5
    move-exception v0

    move-object/from16 v9, p1

    :goto_a8
    move-object/from16 v10, p2

    :goto_aa
    move-object/from16 v11, p3

    :goto_ac
    move-object v5, v1

    move-object v4, v9

    move-object v3, v10

    :goto_af
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 113
    :goto_b9
    iget-object v2, v5, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory;->paymentSessionPrefs:Lcom/stripe/android/PaymentSessionPrefs;

    invoke-interface {v2, v11}, Lcom/stripe/android/PaymentSessionPrefs;->getPaymentMethodId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 117
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_ea

    move-object/from16 v17, v0

    check-cast v17, Ljava/util/List;

    .line 119
    new-instance v0, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$Result$Success;

    .line 120
    new-instance v2, Lcom/stripe/android/paymentsheet/DefaultPaymentSheetFlowController;

    .line 121
    invoke-direct {v5}, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory;->createPaymentController()Lcom/stripe/android/PaymentController;

    move-result-object v13

    .line 122
    iget-object v14, v5, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory;->publishableKey:Ljava/lang/String;

    .line 123
    iget-object v15, v5, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory;->stripeAccountId:Ljava/lang/String;

    .line 124
    new-instance v5, Lcom/stripe/android/paymentsheet/DefaultPaymentSheetFlowController$Args$Default;

    invoke-direct {v5, v4, v3, v11}, Lcom/stripe/android/paymentsheet/DefaultPaymentSheetFlowController$Args$Default;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v5

    check-cast v16, Lcom/stripe/android/paymentsheet/DefaultPaymentSheetFlowController$Args;

    move-object v12, v2

    .line 120
    invoke-direct/range {v12 .. v18}, Lcom/stripe/android/paymentsheet/DefaultPaymentSheetFlowController;-><init>(Lcom/stripe/android/PaymentController;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/paymentsheet/DefaultPaymentSheetFlowController$Args;Ljava/util/List;Ljava/lang/String;)V

    check-cast v2, Lcom/stripe/android/paymentsheet/PaymentSheetFlowController;

    .line 119
    invoke-direct {v0, v2}, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$Result$Success;-><init>(Lcom/stripe/android/paymentsheet/PaymentSheetFlowController;)V

    check-cast v0, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$Result;

    goto :goto_f1

    .line 135
    :cond_ea
    new-instance v0, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$Result$Failure;

    invoke-direct {v0, v2}, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$Result$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast v0, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$Result;

    :goto_f1
    return-object v0
.end method

.method final synthetic createWithGuestArgs(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$Result;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 143
    new-instance p2, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$Result$Success;

    .line 144
    new-instance v7, Lcom/stripe/android/paymentsheet/DefaultPaymentSheetFlowController;

    .line 145
    invoke-direct {p0}, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory;->createPaymentController()Lcom/stripe/android/PaymentController;

    move-result-object v1

    .line 146
    iget-object v2, p0, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory;->publishableKey:Ljava/lang/String;

    .line 147
    iget-object v3, p0, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory;->stripeAccountId:Ljava/lang/String;

    .line 148
    new-instance v0, Lcom/stripe/android/paymentsheet/DefaultPaymentSheetFlowController$Args$Guest;

    invoke-direct {v0, p1}, Lcom/stripe/android/paymentsheet/DefaultPaymentSheetFlowController$Args$Guest;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    check-cast v4, Lcom/stripe/android/paymentsheet/DefaultPaymentSheetFlowController$Args;

    .line 151
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, v7

    .line 144
    invoke-direct/range {v0 .. v6}, Lcom/stripe/android/paymentsheet/DefaultPaymentSheetFlowController;-><init>(Lcom/stripe/android/PaymentController;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/paymentsheet/DefaultPaymentSheetFlowController$Args;Ljava/util/List;Ljava/lang/String;)V

    check-cast v7, Lcom/stripe/android/paymentsheet/PaymentSheetFlowController;

    .line 143
    invoke-direct {p2, v7}, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$Result$Success;-><init>(Lcom/stripe/android/paymentsheet/PaymentSheetFlowController;)V

    return-object p2
.end method

.method final synthetic dispatchResult(Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$Result;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$Result;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/android/paymentsheet/PaymentSheetFlowController$Result;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 81
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$dispatchResult$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$dispatchResult$2;-><init>(Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$Result;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_19

    return-object p1

    :cond_19
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

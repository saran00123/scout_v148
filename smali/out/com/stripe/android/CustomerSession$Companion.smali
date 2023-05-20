.class public final Lcom/stripe/android/CustomerSession$Companion;
.super Ljava/lang/Object;
.source "CustomerSession.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/CustomerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0007J\r\u0010\u0012\u001a\u00020\u0011H\u0001\u00a2\u0006\u0002\u0008\u0013J\u0008\u0010\u0014\u001a\u00020\u0015H\u0002J\u0008\u0010\u0016\u001a\u00020\u0011H\u0007J\u0008\u0010\u0017\u001a\u00020\u000bH\u0007J\"\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u001eH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/stripe/android/CustomerSession$Companion;",
        "",
        "()V",
        "CUSTOMER_CACHE_DURATION_MILLISECONDS",
        "",
        "KEEP_ALIVE_TIME",
        "",
        "KEEP_ALIVE_TIME_UNIT",
        "Ljava/util/concurrent/TimeUnit;",
        "THREAD_POOL_SIZE",
        "instance",
        "Lcom/stripe/android/CustomerSession;",
        "getInstance$stripe_release",
        "()Lcom/stripe/android/CustomerSession;",
        "setInstance$stripe_release",
        "(Lcom/stripe/android/CustomerSession;)V",
        "cancelCallbacks",
        "",
        "clearInstance",
        "clearInstance$stripe_release",
        "createCoroutineDispatcher",
        "Lkotlin/coroutines/CoroutineContext;",
        "endCustomerSession",
        "getInstance",
        "initCustomerSession",
        "context",
        "Landroid/content/Context;",
        "ephemeralKeyProvider",
        "Lcom/stripe/android/EphemeralKeyProvider;",
        "shouldPrefetchEphemeralKey",
        "",
        "stripe_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 431
    invoke-direct {p0}, Lcom/stripe/android/CustomerSession$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$createCoroutineDispatcher(Lcom/stripe/android/CustomerSession$Companion;)Lkotlin/coroutines/CoroutineContext;
    .registers 1

    .line 431
    invoke-direct {p0}, Lcom/stripe/android/CustomerSession$Companion;->createCoroutineDispatcher()Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    return-object p0
.end method

.method private final createCoroutineDispatcher()Lkotlin/coroutines/CoroutineContext;
    .registers 9

    .line 534
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v0, 0x2

    int-to-long v3, v0

    .line 538
    invoke-static {}, Lcom/stripe/android/CustomerSession;->access$getKEEP_ALIVE_TIME_UNIT$cp()Ljava/util/concurrent/TimeUnit;

    move-result-object v5

    .line 539
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v6, v0

    check-cast v6, Ljava/util/concurrent/BlockingQueue;

    const/4 v1, 0x3

    const/4 v2, 0x3

    move-object v0, v7

    .line 534
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    check-cast v7, Ljava/util/concurrent/ExecutorService;

    .line 540
    invoke-static {v7}, Lkotlinx/coroutines/ExecutorsKt;->from(Ljava/util/concurrent/ExecutorService;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public static synthetic initCustomerSession$default(Lcom/stripe/android/CustomerSession$Companion;Landroid/content/Context;Lcom/stripe/android/EphemeralKeyProvider;ZILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x1

    .line 461
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/android/CustomerSession$Companion;->initCustomerSession(Landroid/content/Context;Lcom/stripe/android/EphemeralKeyProvider;Z)V

    return-void
.end method


# virtual methods
.method public final cancelCallbacks()V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 530
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/CustomerSession$Companion;

    invoke-virtual {v0}, Lcom/stripe/android/CustomerSession$Companion;->getInstance$stripe_release()Lcom/stripe/android/CustomerSession;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/stripe/android/CustomerSession;->cancel$stripe_release()V

    :cond_c
    return-void
.end method

.method public final synthetic clearInstance$stripe_release()V
    .registers 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 516
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/CustomerSession$Companion;

    invoke-virtual {v0}, Lcom/stripe/android/CustomerSession$Companion;->cancelCallbacks()V

    const/4 v1, 0x0

    .line 517
    check-cast v1, Lcom/stripe/android/CustomerSession;

    invoke-virtual {v0, v1}, Lcom/stripe/android/CustomerSession$Companion;->setInstance$stripe_release(Lcom/stripe/android/CustomerSession;)V

    return-void
.end method

.method public final endCustomerSession()V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 510
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/CustomerSession$Companion;

    invoke-virtual {v0}, Lcom/stripe/android/CustomerSession$Companion;->clearInstance$stripe_release()V

    return-void
.end method

.method public final getInstance()Lcom/stripe/android/CustomerSession;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 497
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/CustomerSession$Companion;

    invoke-virtual {v0}, Lcom/stripe/android/CustomerSession$Companion;->getInstance$stripe_release()Lcom/stripe/android/CustomerSession;

    move-result-object v0

    if-eqz v0, :cond_a

    return-object v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to get instance of CustomerSession without initialization."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final getInstance$stripe_release()Lcom/stripe/android/CustomerSession;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 487
    invoke-static {}, Lcom/stripe/android/CustomerSession;->access$getInstance$cp()Lcom/stripe/android/CustomerSession;

    move-result-object v0

    return-object v0
.end method

.method public final initCustomerSession(Landroid/content/Context;Lcom/stripe/android/EphemeralKeyProvider;)V
    .registers 9
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/EphemeralKeyProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/stripe/android/CustomerSession$Companion;->initCustomerSession$default(Lcom/stripe/android/CustomerSession$Companion;Landroid/content/Context;Lcom/stripe/android/EphemeralKeyProvider;ZILjava/lang/Object;)V

    return-void
.end method

.method public final initCustomerSession(Landroid/content/Context;Lcom/stripe/android/EphemeralKeyProvider;Z)V
    .registers 26
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/EphemeralKeyProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v14, p1

    move-object/from16 v0, p2

    const-string v1, "context"

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "ephemeralKeyProvider"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    new-instance v1, Lcom/stripe/android/StripeOperationIdFactory;

    invoke-direct {v1}, Lcom/stripe/android/StripeOperationIdFactory;-><init>()V

    .line 464
    sget-object v2, Lcom/stripe/android/CustomerSession$Companion$initCustomerSession$timeSupplier$1;->INSTANCE:Lcom/stripe/android/CustomerSession$Companion$initCustomerSession$timeSupplier$1;

    move-object v15, v2

    check-cast v15, Lkotlin/jvm/functions/Function0;

    .line 465
    new-instance v13, Lcom/stripe/android/EphemeralKeyManager$Factory$Default;

    .line 468
    move-object v12, v1

    check-cast v12, Lcom/stripe/android/OperationIdFactory;

    move/from16 v1, p3

    .line 465
    invoke-direct {v13, v0, v1, v12, v15}, Lcom/stripe/android/EphemeralKeyManager$Factory$Default;-><init>(Lcom/stripe/android/EphemeralKeyProvider;ZLcom/stripe/android/OperationIdFactory;Lkotlin/jvm/functions/Function0;)V

    .line 472
    sget-object v0, Lcom/stripe/android/PaymentConfiguration;->Companion:Lcom/stripe/android/PaymentConfiguration$Companion;

    invoke-virtual {v0, v14}, Lcom/stripe/android/PaymentConfiguration$Companion;->getInstance(Landroid/content/Context;)Lcom/stripe/android/PaymentConfiguration;

    move-result-object v16

    .line 474
    move-object/from16 v11, p0

    check-cast v11, Lcom/stripe/android/CustomerSession$Companion;

    new-instance v10, Lcom/stripe/android/CustomerSession;

    .line 476
    new-instance v17, Lcom/stripe/android/networking/StripeApiRepository;

    invoke-virtual/range {v16 .. v16}, Lcom/stripe/android/PaymentConfiguration;->getPublishableKey()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/stripe/android/Stripe;->Companion:Lcom/stripe/android/Stripe$Companion;

    invoke-virtual {v0}, Lcom/stripe/android/Stripe$Companion;->getAppInfo()Lcom/stripe/android/AppInfo;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x7f8

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 p2, v10

    move-object/from16 v10, v18

    move-object/from16 p3, v11

    move-object/from16 v11, v19

    move-object/from16 v18, v12

    move/from16 v12, v20

    move-object/from16 v19, v13

    move-object/from16 v13, v21

    invoke-direct/range {v0 .. v13}, Lcom/stripe/android/networking/StripeApiRepository;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/stripe/android/AppInfo;Lcom/stripe/android/Logger;Lcom/stripe/android/networking/ApiRequestExecutor;Lcom/stripe/android/networking/AnalyticsRequestExecutor;Lcom/stripe/android/FingerprintDataRepository;Lcom/stripe/android/networking/AnalyticsDataFactory;Lcom/stripe/android/networking/FingerprintParamsUtils;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, v17

    check-cast v2, Lcom/stripe/android/networking/StripeRepository;

    .line 477
    invoke-virtual/range {v16 .. v16}, Lcom/stripe/android/PaymentConfiguration;->getPublishableKey()Ljava/lang/String;

    move-result-object v3

    .line 478
    invoke-virtual/range {v16 .. v16}, Lcom/stripe/android/PaymentConfiguration;->getStripeAccountId()Ljava/lang/String;

    move-result-object v4

    .line 479
    invoke-direct/range {p3 .. p3}, Lcom/stripe/android/CustomerSession$Companion;->createCoroutineDispatcher()Lkotlin/coroutines/CoroutineContext;

    move-result-object v5

    .line 482
    move-object/from16 v8, v19

    check-cast v8, Lcom/stripe/android/EphemeralKeyManager$Factory;

    move-object/from16 v0, p2

    move-object/from16 v6, v18

    move-object v7, v15

    .line 474
    invoke-direct/range {v0 .. v8}, Lcom/stripe/android/CustomerSession;-><init>(Landroid/content/Context;Lcom/stripe/android/networking/StripeRepository;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/CoroutineContext;Lcom/stripe/android/OperationIdFactory;Lkotlin/jvm/functions/Function0;Lcom/stripe/android/EphemeralKeyManager$Factory;)V

    move-object/from16 v1, p2

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/stripe/android/CustomerSession$Companion;->setInstance$stripe_release(Lcom/stripe/android/CustomerSession;)V

    return-void
.end method

.method public final setInstance$stripe_release(Lcom/stripe/android/CustomerSession;)V
    .registers 2
    .param p1    # Lcom/stripe/android/CustomerSession;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 487
    invoke-static {p1}, Lcom/stripe/android/CustomerSession;->access$setInstance$cp(Lcom/stripe/android/CustomerSession;)V

    return-void
.end method

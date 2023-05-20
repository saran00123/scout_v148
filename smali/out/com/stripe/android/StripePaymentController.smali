.class public final Lcom/stripe/android/StripePaymentController;
.super Ljava/lang/Object;
.source "StripePaymentController.kt"

# interfaces
.implements Lcom/stripe/android/PaymentController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/StripePaymentController$ConfirmStripeIntentCallback;,
        Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;,
        Lcom/stripe/android/StripePaymentController$ChallengeProgressActivityStarter;,
        Lcom/stripe/android/StripePaymentController$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00f8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u0000 l2\u00020\u0001:\u0004klmnB\u0083\u0001\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0017\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0019\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b\u00a2\u0006\u0002\u0010\u001cJ0\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0008\u0010%\u001a\u0004\u0018\u00010\u00052\u0006\u0010&\u001a\u00020\'2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020*0)H\u0016J(\u0010+\u001a\u00020\"2\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020$2\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u000202H\u0002J\"\u00103\u001a\u00020\"2\u0006\u0010,\u001a\u00020-2\u0006\u00104\u001a\u0002052\u0008\u0010%\u001a\u0004\u0018\u00010\u0005H\u0002J\"\u00103\u001a\u00020\"2\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020$2\u0008\u0010%\u001a\u0004\u0018\u00010\u0005H\u0002J>\u00106\u001a\u0008\u0012\u0004\u0012\u0002070)2\u0006\u00101\u001a\u0002022\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020\u00052\u0008\u0008\u0002\u0010;\u001a\u00020\t2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020*0)H\u0002J>\u0010<\u001a\u0008\u0012\u0004\u0012\u00020=0)2\u0006\u00101\u001a\u0002022\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020\u00052\u0008\u0008\u0002\u0010;\u001a\u00020\t2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020>0)H\u0002J\u001a\u0010?\u001a\u0004\u0018\u00010\u00052\u0006\u0010#\u001a\u00020$2\u0006\u0010@\u001a\u000209H\u0002J \u0010A\u001a\u00020\"2\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020$2\u0006\u00101\u001a\u000202H\u0017J\u001e\u0010B\u001a\u00020\"2\u0006\u0010C\u001a\u00020D2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020*0)H\u0016J\u001e\u0010E\u001a\u00020\"2\u0006\u0010C\u001a\u00020D2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020>0)H\u0016J\u001e\u0010F\u001a\u00020\"2\u0006\u0010C\u001a\u00020D2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u0002050)H\u0016J!\u0010G\u001a\u00020\"2\u0006\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020KH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010LJS\u0010M\u001a\u00020\"2\u0006\u0010N\u001a\u00020O2\u0006\u0010P\u001a\u00020Q2\u0006\u0010:\u001a\u00020\u00052\u0006\u0010R\u001a\u0002092\u0006\u0010J\u001a\u00020K2\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020$2\u0006\u00101\u001a\u000202H\u0081@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008S\u0010TJ \u0010U\u001a\u00020\"2\u0006\u0010,\u001a\u00020-2\u0006\u00104\u001a\u0002052\u0006\u00101\u001a\u000202H\u0002J\u001a\u0010V\u001a\u00020\t2\u0006\u0010W\u001a\u0002092\u0008\u0010C\u001a\u0004\u0018\u00010DH\u0016J\u001a\u0010X\u001a\u00020\t2\u0006\u0010W\u001a\u0002092\u0008\u0010C\u001a\u0004\u0018\u00010DH\u0016J\u001a\u0010Y\u001a\u00020\t2\u0006\u0010W\u001a\u0002092\u0008\u0010C\u001a\u0004\u0018\u00010DH\u0016J(\u0010Z\u001a\u00020\"2\u0006\u0010,\u001a\u00020-2\u0006\u0010[\u001a\u00020\u00052\u0006\u00101\u001a\u0002022\u0006\u0010\\\u001a\u00020]H\u0016J \u0010^\u001a\u00020\"2\u0006\u0010,\u001a\u00020-2\u0006\u00104\u001a\u0002052\u0006\u00101\u001a\u000202H\u0016JS\u0010_\u001a\u00020\"2\u0006\u0010`\u001a\u00020a2\u0006\u0010P\u001a\u00020Q2\u0006\u0010:\u001a\u00020\u00052\u0006\u0010b\u001a\u0002092\u0006\u0010J\u001a\u00020K2\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020$2\u0006\u00101\u001a\u000202H\u0081@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008c\u0010dJ&\u0010e\u001a\u00020\"2\u0006\u0010f\u001a\u00020g2\u0006\u00101\u001a\u0002022\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020$0)H\u0016J \u0010h\u001a\u00020\"2\u0006\u0010,\u001a\u00020-2\u0006\u0010f\u001a\u00020g2\u0006\u00101\u001a\u000202H\u0016J!\u0010i\u001a\u00020\"2\u0006\u0010J\u001a\u00020K2\u0006\u0010.\u001a\u00020$H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010jR\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006o"
    }
    d2 = {
        "Lcom/stripe/android/StripePaymentController;",
        "Lcom/stripe/android/PaymentController;",
        "context",
        "Landroid/content/Context;",
        "publishableKey",
        "",
        "stripeRepository",
        "Lcom/stripe/android/networking/StripeRepository;",
        "enableLogging",
        "",
        "messageVersionRegistry",
        "Lcom/stripe/android/stripe3ds2/transaction/MessageVersionRegistry;",
        "config",
        "Lcom/stripe/android/PaymentAuthConfig;",
        "threeDs2Service",
        "Lcom/stripe/android/stripe3ds2/service/StripeThreeDs2Service;",
        "analyticsRequestExecutor",
        "Lcom/stripe/android/networking/AnalyticsRequestExecutor;",
        "analyticsDataFactory",
        "Lcom/stripe/android/networking/AnalyticsDataFactory;",
        "challengeProgressActivityStarter",
        "Lcom/stripe/android/StripePaymentController$ChallengeProgressActivityStarter;",
        "alipayRepository",
        "Lcom/stripe/android/networking/AlipayRepository;",
        "workContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "resources",
        "Landroid/content/res/Resources;",
        "(Landroid/content/Context;Ljava/lang/String;Lcom/stripe/android/networking/StripeRepository;ZLcom/stripe/android/stripe3ds2/transaction/MessageVersionRegistry;Lcom/stripe/android/PaymentAuthConfig;Lcom/stripe/android/stripe3ds2/service/StripeThreeDs2Service;Lcom/stripe/android/networking/AnalyticsRequestExecutor;Lcom/stripe/android/networking/AnalyticsDataFactory;Lcom/stripe/android/StripePaymentController$ChallengeProgressActivityStarter;Lcom/stripe/android/networking/AlipayRepository;Lkotlin/coroutines/CoroutineContext;Landroid/content/res/Resources;)V",
        "analyticsRequestFactory",
        "Lcom/stripe/android/networking/AnalyticsRequest$Factory;",
        "logger",
        "Lcom/stripe/android/Logger;",
        "authenticateAlipay",
        "",
        "intent",
        "Lcom/stripe/android/model/StripeIntent;",
        "stripeAccountId",
        "authenticator",
        "Lcom/stripe/android/AlipayAuthenticator;",
        "callback",
        "Lcom/stripe/android/ApiResultCallback;",
        "Lcom/stripe/android/PaymentIntentResult;",
        "begin3ds2Auth",
        "host",
        "Lcom/stripe/android/view/AuthActivityStarter$Host;",
        "stripeIntent",
        "stripe3ds2Fingerprint",
        "Lcom/stripe/android/model/Stripe3ds2Fingerprint;",
        "requestOptions",
        "Lcom/stripe/android/networking/ApiRequest$Options;",
        "bypassAuth",
        "source",
        "Lcom/stripe/android/model/Source;",
        "createPaymentIntentCallback",
        "Lcom/stripe/android/model/PaymentIntent;",
        "flowOutcome",
        "",
        "sourceId",
        "shouldCancelSource",
        "createSetupIntentCallback",
        "Lcom/stripe/android/model/SetupIntent;",
        "Lcom/stripe/android/SetupIntentResult;",
        "getFailureMessage",
        "outcome",
        "handleNextAction",
        "handlePaymentResult",
        "data",
        "Landroid/content/Intent;",
        "handleSetupResult",
        "handleSourceResult",
        "on3ds2AuthFailure",
        "throwable",
        "",
        "paymentRelayStarter",
        "Lcom/stripe/android/PaymentRelayStarter;",
        "(Ljava/lang/Throwable;Lcom/stripe/android/PaymentRelayStarter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "on3ds2AuthSuccess",
        "result",
        "Lcom/stripe/android/model/Stripe3ds2AuthResult;",
        "transaction",
        "Lcom/stripe/android/stripe3ds2/transaction/Transaction;",
        "timeout",
        "on3ds2AuthSuccess$stripe_release",
        "(Lcom/stripe/android/model/Stripe3ds2AuthResult;Lcom/stripe/android/stripe3ds2/transaction/Transaction;Ljava/lang/String;ILcom/stripe/android/PaymentRelayStarter;Lcom/stripe/android/view/AuthActivityStarter$Host;Lcom/stripe/android/model/StripeIntent;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onSourceRetrieved",
        "shouldHandlePaymentResult",
        "requestCode",
        "shouldHandleSetupResult",
        "shouldHandleSourceResult",
        "startAuth",
        "clientSecret",
        "type",
        "Lcom/stripe/android/PaymentController$StripeIntentType;",
        "startAuthenticateSource",
        "startChallengeFlow",
        "ares",
        "Lcom/stripe/android/model/Stripe3ds2AuthResult$Ares;",
        "maxTimeout",
        "startChallengeFlow$stripe_release",
        "(Lcom/stripe/android/model/Stripe3ds2AuthResult$Ares;Lcom/stripe/android/stripe3ds2/transaction/Transaction;Ljava/lang/String;ILcom/stripe/android/PaymentRelayStarter;Lcom/stripe/android/view/AuthActivityStarter$Host;Lcom/stripe/android/model/StripeIntent;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "startConfirm",
        "confirmStripeIntentParams",
        "Lcom/stripe/android/model/ConfirmStripeIntentParams;",
        "startConfirmAndAuth",
        "startFrictionlessFlow",
        "(Lcom/stripe/android/PaymentRelayStarter;Lcom/stripe/android/model/StripeIntent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "ChallengeProgressActivityStarter",
        "Companion",
        "ConfirmStripeIntentCallback",
        "PaymentAuth3ds2ChallengeStatusReceiver",
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
.field private static final CHALLENGE_DELAY:J

.field private static final CLIENT_SECRET_INTENT_ERROR:Ljava/lang/String; = "Invalid client_secret value in result Intent."

.field public static final Companion:Lcom/stripe/android/StripePaymentController$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final EXPAND_PAYMENT_METHOD:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAYMENT_REQUEST_CODE:I = 0xc350

.field private static final REQUIRED_ERROR:Ljava/lang/String; = "API request returned an invalid response."

.field public static final SETUP_REQUEST_CODE:I = 0xc351

.field public static final SOURCE_REQUEST_CODE:I = 0xc352


# instance fields
.field private final alipayRepository:Lcom/stripe/android/networking/AlipayRepository;

.field private final analyticsDataFactory:Lcom/stripe/android/networking/AnalyticsDataFactory;

.field private final analyticsRequestExecutor:Lcom/stripe/android/networking/AnalyticsRequestExecutor;

.field private final analyticsRequestFactory:Lcom/stripe/android/networking/AnalyticsRequest$Factory;

.field private final challengeProgressActivityStarter:Lcom/stripe/android/StripePaymentController$ChallengeProgressActivityStarter;

.field private final config:Lcom/stripe/android/PaymentAuthConfig;

.field private final enableLogging:Z

.field private final logger:Lcom/stripe/android/Logger;

.field private final messageVersionRegistry:Lcom/stripe/android/stripe3ds2/transaction/MessageVersionRegistry;

.field private final publishableKey:Ljava/lang/String;

.field private final resources:Landroid/content/res/Resources;

.field private final stripeRepository:Lcom/stripe/android/networking/StripeRepository;

.field private final threeDs2Service:Lcom/stripe/android/stripe3ds2/service/StripeThreeDs2Service;

.field private final workContext:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/stripe/android/StripePaymentController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/StripePaymentController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/StripePaymentController;->Companion:Lcom/stripe/android/StripePaymentController$Companion;

    const-string v0, "payment_method"

    .line 1330
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/stripe/android/StripePaymentController;->EXPAND_PAYMENT_METHOD:Ljava/util/List;

    .line 1331
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/stripe/android/StripePaymentController;->CHALLENGE_DELAY:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/stripe/android/networking/StripeRepository;ZLcom/stripe/android/stripe3ds2/transaction/MessageVersionRegistry;Lcom/stripe/android/PaymentAuthConfig;Lcom/stripe/android/stripe3ds2/service/StripeThreeDs2Service;Lcom/stripe/android/networking/AnalyticsRequestExecutor;Lcom/stripe/android/networking/AnalyticsDataFactory;Lcom/stripe/android/StripePaymentController$ChallengeProgressActivityStarter;Lcom/stripe/android/networking/AlipayRepository;Lkotlin/coroutines/CoroutineContext;Landroid/content/res/Resources;)V
    .registers 15
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/networking/StripeRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/stripe/android/stripe3ds2/transaction/MessageVersionRegistry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/stripe/android/PaymentAuthConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/stripe/android/stripe3ds2/service/StripeThreeDs2Service;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/stripe/android/networking/AnalyticsRequestExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lcom/stripe/android/networking/AnalyticsDataFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Lcom/stripe/android/StripePaymentController$ChallengeProgressActivityStarter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Lcom/stripe/android/networking/AlipayRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p13    # Landroid/content/res/Resources;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "publishableKey"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "stripeRepository"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "messageVersionRegistry"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "config"

    invoke-static {p6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "threeDs2Service"

    invoke-static {p7, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "analyticsRequestExecutor"

    invoke-static {p8, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "analyticsDataFactory"

    invoke-static {p9, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "challengeProgressActivityStarter"

    invoke-static {p10, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "alipayRepository"

    invoke-static {p11, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "workContext"

    invoke-static {p12, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "resources"

    invoke-static {p13, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/stripe/android/StripePaymentController;->publishableKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/stripe/android/StripePaymentController;->stripeRepository:Lcom/stripe/android/networking/StripeRepository;

    iput-boolean p4, p0, Lcom/stripe/android/StripePaymentController;->enableLogging:Z

    iput-object p5, p0, Lcom/stripe/android/StripePaymentController;->messageVersionRegistry:Lcom/stripe/android/stripe3ds2/transaction/MessageVersionRegistry;

    iput-object p6, p0, Lcom/stripe/android/StripePaymentController;->config:Lcom/stripe/android/PaymentAuthConfig;

    iput-object p7, p0, Lcom/stripe/android/StripePaymentController;->threeDs2Service:Lcom/stripe/android/stripe3ds2/service/StripeThreeDs2Service;

    iput-object p8, p0, Lcom/stripe/android/StripePaymentController;->analyticsRequestExecutor:Lcom/stripe/android/networking/AnalyticsRequestExecutor;

    iput-object p9, p0, Lcom/stripe/android/StripePaymentController;->analyticsDataFactory:Lcom/stripe/android/networking/AnalyticsDataFactory;

    iput-object p10, p0, Lcom/stripe/android/StripePaymentController;->challengeProgressActivityStarter:Lcom/stripe/android/StripePaymentController$ChallengeProgressActivityStarter;

    iput-object p11, p0, Lcom/stripe/android/StripePaymentController;->alipayRepository:Lcom/stripe/android/networking/AlipayRepository;

    iput-object p12, p0, Lcom/stripe/android/StripePaymentController;->workContext:Lkotlin/coroutines/CoroutineContext;

    iput-object p13, p0, Lcom/stripe/android/StripePaymentController;->resources:Landroid/content/res/Resources;

    .line 76
    sget-object p1, Lcom/stripe/android/Logger;->Companion:Lcom/stripe/android/Logger$Companion;

    iget-boolean p2, p0, Lcom/stripe/android/StripePaymentController;->enableLogging:Z

    invoke-virtual {p1, p2}, Lcom/stripe/android/Logger$Companion;->getInstance$stripe_release(Z)Lcom/stripe/android/Logger;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/android/StripePaymentController;->logger:Lcom/stripe/android/Logger;

    .line 77
    new-instance p1, Lcom/stripe/android/networking/AnalyticsRequest$Factory;

    iget-object p2, p0, Lcom/stripe/android/StripePaymentController;->logger:Lcom/stripe/android/Logger;

    invoke-direct {p1, p2}, Lcom/stripe/android/networking/AnalyticsRequest$Factory;-><init>(Lcom/stripe/android/Logger;)V

    iput-object p1, p0, Lcom/stripe/android/StripePaymentController;->analyticsRequestFactory:Lcom/stripe/android/networking/AnalyticsRequest$Factory;

    .line 80
    iget-object p1, p0, Lcom/stripe/android/StripePaymentController;->threeDs2Service:Lcom/stripe/android/stripe3ds2/service/StripeThreeDs2Service;

    .line 81
    iget-object p2, p0, Lcom/stripe/android/StripePaymentController;->config:Lcom/stripe/android/PaymentAuthConfig;

    invoke-virtual {p2}, Lcom/stripe/android/PaymentAuthConfig;->getStripe3ds2Config$stripe_release()Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2Config;

    move-result-object p2

    invoke-virtual {p2}, Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2Config;->getUiCustomization$stripe_release()Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2UiCustomization;

    move-result-object p2

    invoke-virtual {p2}, Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2UiCustomization;->getUiCustomization()Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;

    move-result-object p2

    check-cast p2, Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization;

    .line 80
    invoke-interface {p1, p2}, Lcom/stripe/android/stripe3ds2/service/StripeThreeDs2Service;->initialize(Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/stripe/android/networking/StripeRepository;ZLcom/stripe/android/stripe3ds2/transaction/MessageVersionRegistry;Lcom/stripe/android/PaymentAuthConfig;Lcom/stripe/android/stripe3ds2/service/StripeThreeDs2Service;Lcom/stripe/android/networking/AnalyticsRequestExecutor;Lcom/stripe/android/networking/AnalyticsDataFactory;Lcom/stripe/android/StripePaymentController$ChallengeProgressActivityStarter;Lcom/stripe/android/networking/AlipayRepository;Lkotlin/coroutines/CoroutineContext;Landroid/content/res/Resources;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 32

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    move v6, v1

    goto :goto_b

    :cond_9
    move/from16 v6, p4

    :goto_b
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_16

    .line 61
    new-instance v1, Lcom/stripe/android/stripe3ds2/transaction/MessageVersionRegistry;

    invoke-direct {v1}, Lcom/stripe/android/stripe3ds2/transaction/MessageVersionRegistry;-><init>()V

    move-object v7, v1

    goto :goto_18

    :cond_16
    move-object/from16 v7, p5

    :goto_18
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_24

    .line 63
    sget-object v1, Lcom/stripe/android/PaymentAuthConfig;->Companion:Lcom/stripe/android/PaymentAuthConfig$Companion;

    invoke-virtual {v1}, Lcom/stripe/android/PaymentAuthConfig$Companion;->get()Lcom/stripe/android/PaymentAuthConfig;

    move-result-object v1

    move-object v8, v1

    goto :goto_26

    :cond_24
    move-object/from16 v8, p6

    :goto_26
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_35

    .line 65
    new-instance v1, Lcom/stripe/android/stripe3ds2/service/StripeThreeDs2ServiceImpl;

    move-object/from16 v3, p1

    invoke-direct {v1, v3, v6}, Lcom/stripe/android/stripe3ds2/service/StripeThreeDs2ServiceImpl;-><init>(Landroid/content/Context;Z)V

    check-cast v1, Lcom/stripe/android/stripe3ds2/service/StripeThreeDs2Service;

    move-object v9, v1

    goto :goto_39

    :cond_35
    move-object/from16 v3, p1

    move-object/from16 v9, p7

    :goto_39
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_4e

    .line 67
    new-instance v1, Lcom/stripe/android/networking/AnalyticsRequestExecutor$Default;

    sget-object v2, Lcom/stripe/android/Logger;->Companion:Lcom/stripe/android/Logger$Companion;

    invoke-virtual {v2, v6}, Lcom/stripe/android/Logger$Companion;->getInstance$stripe_release(Z)Lcom/stripe/android/Logger;

    move-result-object v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5, v4, v5}, Lcom/stripe/android/networking/AnalyticsRequestExecutor$Default;-><init>(Lcom/stripe/android/Logger;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lcom/stripe/android/networking/AnalyticsRequestExecutor;

    move-object v10, v1

    goto :goto_50

    :cond_4e
    move-object/from16 v10, p8

    :goto_50
    and-int/lit16 v1, v0, 0x100

    const-string v2, "context.applicationContext"

    if-eqz v1, :cond_66

    .line 69
    new-instance v1, Lcom/stripe/android/networking/AnalyticsDataFactory;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v5, p2

    invoke-direct {v1, v4, v5}, Lcom/stripe/android/networking/AnalyticsDataFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v11, v1

    goto :goto_6a

    :cond_66
    move-object/from16 v5, p2

    move-object/from16 v11, p9

    :goto_6a
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_77

    .line 71
    new-instance v1, Lcom/stripe/android/StripePaymentController$ChallengeProgressActivityStarter$Default;

    invoke-direct {v1}, Lcom/stripe/android/StripePaymentController$ChallengeProgressActivityStarter$Default;-><init>()V

    check-cast v1, Lcom/stripe/android/StripePaymentController$ChallengeProgressActivityStarter;

    move-object v12, v1

    goto :goto_79

    :cond_77
    move-object/from16 v12, p10

    :goto_79
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_87

    .line 72
    new-instance v1, Lcom/stripe/android/networking/DefaultAlipayRepository;

    move-object/from16 v13, p3

    invoke-direct {v1, v13}, Lcom/stripe/android/networking/DefaultAlipayRepository;-><init>(Lcom/stripe/android/networking/StripeRepository;)V

    check-cast v1, Lcom/stripe/android/networking/AlipayRepository;

    goto :goto_8b

    :cond_87
    move-object/from16 v13, p3

    move-object/from16 v1, p11

    :goto_8b
    and-int/lit16 v4, v0, 0x800

    if-eqz v4, :cond_97

    .line 73
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v4

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    move-object v14, v4

    goto :goto_99

    :cond_97
    move-object/from16 v14, p12

    :goto_99
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_af

    .line 74
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "context.applicationContext.resources"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v15, v0

    goto :goto_b1

    :cond_af
    move-object/from16 v15, p13

    :goto_b1
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v13, v1

    invoke-direct/range {v2 .. v15}, Lcom/stripe/android/StripePaymentController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/stripe/android/networking/StripeRepository;ZLcom/stripe/android/stripe3ds2/transaction/MessageVersionRegistry;Lcom/stripe/android/PaymentAuthConfig;Lcom/stripe/android/stripe3ds2/service/StripeThreeDs2Service;Lcom/stripe/android/networking/AnalyticsRequestExecutor;Lcom/stripe/android/networking/AnalyticsDataFactory;Lcom/stripe/android/StripePaymentController$ChallengeProgressActivityStarter;Lcom/stripe/android/networking/AlipayRepository;Lkotlin/coroutines/CoroutineContext;Landroid/content/res/Resources;)V

    return-void
.end method

.method public static final synthetic access$createPaymentIntentCallback(Lcom/stripe/android/StripePaymentController;Lcom/stripe/android/networking/ApiRequest$Options;ILjava/lang/String;ZLcom/stripe/android/ApiResultCallback;)Lcom/stripe/android/ApiResultCallback;
    .registers 6

    .line 55
    invoke-direct/range {p0 .. p5}, Lcom/stripe/android/StripePaymentController;->createPaymentIntentCallback(Lcom/stripe/android/networking/ApiRequest$Options;ILjava/lang/String;ZLcom/stripe/android/ApiResultCallback;)Lcom/stripe/android/ApiResultCallback;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createSetupIntentCallback(Lcom/stripe/android/StripePaymentController;Lcom/stripe/android/networking/ApiRequest$Options;ILjava/lang/String;ZLcom/stripe/android/ApiResultCallback;)Lcom/stripe/android/ApiResultCallback;
    .registers 6

    .line 55
    invoke-direct/range {p0 .. p5}, Lcom/stripe/android/StripePaymentController;->createSetupIntentCallback(Lcom/stripe/android/networking/ApiRequest$Options;ILjava/lang/String;ZLcom/stripe/android/ApiResultCallback;)Lcom/stripe/android/ApiResultCallback;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAlipayRepository$p(Lcom/stripe/android/StripePaymentController;)Lcom/stripe/android/networking/AlipayRepository;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/stripe/android/StripePaymentController;->alipayRepository:Lcom/stripe/android/networking/AlipayRepository;

    return-object p0
.end method

.method public static final synthetic access$getAnalyticsDataFactory$p(Lcom/stripe/android/StripePaymentController;)Lcom/stripe/android/networking/AnalyticsDataFactory;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/stripe/android/StripePaymentController;->analyticsDataFactory:Lcom/stripe/android/networking/AnalyticsDataFactory;

    return-object p0
.end method

.method public static final synthetic access$getAnalyticsRequestExecutor$p(Lcom/stripe/android/StripePaymentController;)Lcom/stripe/android/networking/AnalyticsRequestExecutor;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/stripe/android/StripePaymentController;->analyticsRequestExecutor:Lcom/stripe/android/networking/AnalyticsRequestExecutor;

    return-object p0
.end method

.method public static final synthetic access$getAnalyticsRequestFactory$p(Lcom/stripe/android/StripePaymentController;)Lcom/stripe/android/networking/AnalyticsRequest$Factory;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/stripe/android/StripePaymentController;->analyticsRequestFactory:Lcom/stripe/android/networking/AnalyticsRequest$Factory;

    return-object p0
.end method

.method public static final synthetic access$getCHALLENGE_DELAY$cp()J
    .registers 2

    .line 55
    sget-wide v0, Lcom/stripe/android/StripePaymentController;->CHALLENGE_DELAY:J

    return-wide v0
.end method

.method public static final synthetic access$getConfig$p(Lcom/stripe/android/StripePaymentController;)Lcom/stripe/android/PaymentAuthConfig;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/stripe/android/StripePaymentController;->config:Lcom/stripe/android/PaymentAuthConfig;

    return-object p0
.end method

.method public static final synthetic access$getEXPAND_PAYMENT_METHOD$cp()Ljava/util/List;
    .registers 1

    .line 55
    sget-object v0, Lcom/stripe/android/StripePaymentController;->EXPAND_PAYMENT_METHOD:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getEnableLogging$p(Lcom/stripe/android/StripePaymentController;)Z
    .registers 1

    .line 55
    iget-boolean p0, p0, Lcom/stripe/android/StripePaymentController;->enableLogging:Z

    return p0
.end method

.method public static final synthetic access$getFailureMessage(Lcom/stripe/android/StripePaymentController;Lcom/stripe/android/model/StripeIntent;I)Ljava/lang/String;
    .registers 3

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/stripe/android/StripePaymentController;->getFailureMessage(Lcom/stripe/android/model/StripeIntent;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lcom/stripe/android/StripePaymentController;)Lcom/stripe/android/Logger;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/stripe/android/StripePaymentController;->logger:Lcom/stripe/android/Logger;

    return-object p0
.end method

.method public static final synthetic access$getStripeRepository$p(Lcom/stripe/android/StripePaymentController;)Lcom/stripe/android/networking/StripeRepository;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/stripe/android/StripePaymentController;->stripeRepository:Lcom/stripe/android/networking/StripeRepository;

    return-object p0
.end method

.method public static final synthetic access$getWorkContext$p(Lcom/stripe/android/StripePaymentController;)Lkotlin/coroutines/CoroutineContext;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/stripe/android/StripePaymentController;->workContext:Lkotlin/coroutines/CoroutineContext;

    return-object p0
.end method

.method public static final synthetic access$onSourceRetrieved(Lcom/stripe/android/StripePaymentController;Lcom/stripe/android/view/AuthActivityStarter$Host;Lcom/stripe/android/model/Source;Lcom/stripe/android/networking/ApiRequest$Options;)V
    .registers 4

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/android/StripePaymentController;->onSourceRetrieved(Lcom/stripe/android/view/AuthActivityStarter$Host;Lcom/stripe/android/model/Source;Lcom/stripe/android/networking/ApiRequest$Options;)V

    return-void
.end method

.method private final begin3ds2Auth(Lcom/stripe/android/view/AuthActivityStarter$Host;Lcom/stripe/android/model/StripeIntent;Lcom/stripe/android/model/Stripe3ds2Fingerprint;Lcom/stripe/android/networking/ApiRequest$Options;)V
    .registers 24

    move-object/from16 v8, p0

    .line 804
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/android/view/AuthActivityStarter$Host;->getActivity$stripe_release()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_a9

    .line 806
    iget-object v9, v8, Lcom/stripe/android/StripePaymentController;->threeDs2Service:Lcom/stripe/android/stripe3ds2/service/StripeThreeDs2Service;

    .line 807
    invoke-virtual/range {p3 .. p3}, Lcom/stripe/android/model/Stripe3ds2Fingerprint;->getDirectoryServerEncryption()Lcom/stripe/android/model/Stripe3ds2Fingerprint$DirectoryServerEncryption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/android/model/Stripe3ds2Fingerprint$DirectoryServerEncryption;->getDirectoryServerId()Ljava/lang/String;

    move-result-object v10

    .line 808
    iget-object v1, v8, Lcom/stripe/android/StripePaymentController;->messageVersionRegistry:Lcom/stripe/android/stripe3ds2/transaction/MessageVersionRegistry;

    invoke-virtual {v1}, Lcom/stripe/android/stripe3ds2/transaction/MessageVersionRegistry;->getCurrent()Ljava/lang/String;

    move-result-object v11

    invoke-interface/range {p2 .. p2}, Lcom/stripe/android/model/StripeIntent;->isLiveMode()Z

    move-result v12

    .line 809
    invoke-virtual/range {p3 .. p3}, Lcom/stripe/android/model/Stripe3ds2Fingerprint;->getDirectoryServerName()Ljava/lang/String;

    move-result-object v13

    .line 810
    invoke-virtual/range {p3 .. p3}, Lcom/stripe/android/model/Stripe3ds2Fingerprint;->getDirectoryServerEncryption()Lcom/stripe/android/model/Stripe3ds2Fingerprint$DirectoryServerEncryption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/android/model/Stripe3ds2Fingerprint$DirectoryServerEncryption;->getRootCerts()Ljava/util/List;

    move-result-object v14

    .line 811
    invoke-virtual/range {p3 .. p3}, Lcom/stripe/android/model/Stripe3ds2Fingerprint;->getDirectoryServerEncryption()Lcom/stripe/android/model/Stripe3ds2Fingerprint$DirectoryServerEncryption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/android/model/Stripe3ds2Fingerprint$DirectoryServerEncryption;->getDirectoryServerPublicKey()Ljava/security/PublicKey;

    move-result-object v15

    .line 812
    invoke-virtual/range {p3 .. p3}, Lcom/stripe/android/model/Stripe3ds2Fingerprint;->getDirectoryServerEncryption()Lcom/stripe/android/model/Stripe3ds2Fingerprint$DirectoryServerEncryption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/android/model/Stripe3ds2Fingerprint$DirectoryServerEncryption;->getKeyId()Ljava/lang/String;

    move-result-object v16

    .line 813
    new-instance v1, Landroid/content/Intent;

    move-object v3, v0

    check-cast v3, Landroid/content/Context;

    const-class v0, Lcom/stripe/android/view/Stripe3ds2CompletionActivity;

    invoke-direct {v1, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 816
    invoke-interface/range {p2 .. p2}, Lcom/stripe/android/model/StripeIntent;->getClientSecret()Ljava/lang/String;

    move-result-object v0

    const-string v2, "extra_client_secret"

    .line 814
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 820
    invoke-virtual/range {p4 .. p4}, Lcom/stripe/android/networking/ApiRequest$Options;->getStripeAccount$stripe_release()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_stripe_account"

    .line 818
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x2000000

    .line 822
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v17

    .line 823
    sget-object v0, Lcom/stripe/android/StripePaymentController;->Companion:Lcom/stripe/android/StripePaymentController$Companion;

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/stripe/android/StripePaymentController$Companion;->getRequestCode$stripe_release(Lcom/stripe/android/model/StripeIntent;)I

    move-result v18

    .line 806
    invoke-interface/range {v9 .. v18}, Lcom/stripe/android/stripe3ds2/service/StripeThreeDs2Service;->createTransaction(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;Ljava/security/PublicKey;Ljava/lang/String;Landroid/content/Intent;I)Lcom/stripe/android/stripe3ds2/transaction/Transaction;

    move-result-object v9

    .line 826
    iget-object v2, v8, Lcom/stripe/android/StripePaymentController;->challengeProgressActivityStarter:Lcom/stripe/android/StripePaymentController$ChallengeProgressActivityStarter;

    .line 828
    invoke-virtual/range {p3 .. p3}, Lcom/stripe/android/model/Stripe3ds2Fingerprint;->getDirectoryServerName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 830
    iget-object v0, v8, Lcom/stripe/android/StripePaymentController;->config:Lcom/stripe/android/PaymentAuthConfig;

    invoke-virtual {v0}, Lcom/stripe/android/PaymentAuthConfig;->getStripe3ds2Config$stripe_release()Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2Config;->getUiCustomization$stripe_release()Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2UiCustomization;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2UiCustomization;->getUiCustomization()Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;

    move-result-object v6

    .line 831
    invoke-interface {v9}, Lcom/stripe/android/stripe3ds2/transaction/Transaction;->getSdkTransactionId()Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;

    move-result-object v7

    .line 826
    invoke-interface/range {v2 .. v7}, Lcom/stripe/android/StripePaymentController$ChallengeProgressActivityStarter;->start(Landroid/content/Context;Ljava/lang/String;ZLcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;)V

    .line 834
    iget-object v0, v8, Lcom/stripe/android/StripePaymentController;->workContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    new-instance v13, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;

    const/4 v7, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v9

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;-><init>(Lcom/stripe/android/StripePaymentController;Lcom/stripe/android/stripe3ds2/transaction/Transaction;Lcom/stripe/android/model/Stripe3ds2Fingerprint;Lcom/stripe/android/model/StripeIntent;Lcom/stripe/android/networking/ApiRequest$Options;Lcom/stripe/android/view/AuthActivityStarter$Host;Lkotlin/coroutines/Continuation;)V

    move-object v4, v13

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, v10

    move-object v2, v11

    move-object v3, v12

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_a9
    return-void
.end method

.method private final bypassAuth(Lcom/stripe/android/view/AuthActivityStarter$Host;Lcom/stripe/android/model/Source;Ljava/lang/String;)V
    .registers 6

    .line 794
    sget-object v0, Lcom/stripe/android/PaymentRelayStarter;->Companion:Lcom/stripe/android/PaymentRelayStarter$Companion;

    const v1, 0xc352

    invoke-virtual {v0, p1, v1}, Lcom/stripe/android/PaymentRelayStarter$Companion;->create$stripe_release(Lcom/stripe/android/view/AuthActivityStarter$Host;I)Lcom/stripe/android/PaymentRelayStarter;

    move-result-object p1

    .line 795
    sget-object v0, Lcom/stripe/android/PaymentRelayStarter$Args;->Companion:Lcom/stripe/android/PaymentRelayStarter$Args$Companion;

    invoke-virtual {v0, p2, p3}, Lcom/stripe/android/PaymentRelayStarter$Args$Companion;->create$stripe_release(Lcom/stripe/android/model/Source;Ljava/lang/String;)Lcom/stripe/android/PaymentRelayStarter$Args;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/stripe/android/PaymentRelayStarter;->start(Ljava/lang/Object;)V

    return-void
.end method

.method private final bypassAuth(Lcom/stripe/android/view/AuthActivityStarter$Host;Lcom/stripe/android/model/StripeIntent;Ljava/lang/String;)V
    .registers 6

    .line 785
    sget-object v0, Lcom/stripe/android/PaymentRelayStarter;->Companion:Lcom/stripe/android/PaymentRelayStarter$Companion;

    sget-object v1, Lcom/stripe/android/StripePaymentController;->Companion:Lcom/stripe/android/StripePaymentController$Companion;

    invoke-virtual {v1, p2}, Lcom/stripe/android/StripePaymentController$Companion;->getRequestCode$stripe_release(Lcom/stripe/android/model/StripeIntent;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/stripe/android/PaymentRelayStarter$Companion;->create$stripe_release(Lcom/stripe/android/view/AuthActivityStarter$Host;I)Lcom/stripe/android/PaymentRelayStarter;

    move-result-object p1

    .line 786
    sget-object v0, Lcom/stripe/android/PaymentRelayStarter$Args;->Companion:Lcom/stripe/android/PaymentRelayStarter$Args$Companion;

    invoke-virtual {v0, p2, p3}, Lcom/stripe/android/PaymentRelayStarter$Args$Companion;->create$stripe_release(Lcom/stripe/android/model/StripeIntent;Ljava/lang/String;)Lcom/stripe/android/PaymentRelayStarter$Args;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/stripe/android/PaymentRelayStarter;->start(Ljava/lang/Object;)V

    return-void
.end method

.method public static final create(Landroid/content/Context;Ljava/lang/String;Lcom/stripe/android/networking/StripeRepository;)Lcom/stripe/android/PaymentController;
    .registers 10
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/networking/StripeRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/stripe/android/StripePaymentController;->Companion:Lcom/stripe/android/StripePaymentController$Companion;

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v6}, Lcom/stripe/android/StripePaymentController$Companion;->create$default(Lcom/stripe/android/StripePaymentController$Companion;Landroid/content/Context;Ljava/lang/String;Lcom/stripe/android/networking/StripeRepository;ZILjava/lang/Object;)Lcom/stripe/android/PaymentController;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Landroid/content/Context;Ljava/lang/String;Lcom/stripe/android/networking/StripeRepository;Z)Lcom/stripe/android/PaymentController;
    .registers 5
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/networking/StripeRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/stripe/android/StripePaymentController;->Companion:Lcom/stripe/android/StripePaymentController$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/stripe/android/StripePaymentController$Companion;->create(Landroid/content/Context;Ljava/lang/String;Lcom/stripe/android/networking/StripeRepository;Z)Lcom/stripe/android/PaymentController;

    move-result-object p0

    return-object p0
.end method

.method private final createPaymentIntentCallback(Lcom/stripe/android/networking/ApiRequest$Options;ILjava/lang/String;ZLcom/stripe/android/ApiResultCallback;)Lcom/stripe/android/ApiResultCallback;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/networking/ApiRequest$Options;",
            "I",
            "Ljava/lang/String;",
            "Z",
            "Lcom/stripe/android/ApiResultCallback<",
            "-",
            "Lcom/stripe/android/PaymentIntentResult;",
            ">;)",
            "Lcom/stripe/android/ApiResultCallback<",
            "Lcom/stripe/android/model/PaymentIntent;",
            ">;"
        }
    .end annotation

    .line 494
    new-instance v7, Lcom/stripe/android/StripePaymentController$createPaymentIntentCallback$1;

    move-object v0, v7

    move-object v1, p0

    move v2, p4

    move-object v3, p3

    move-object v4, p1

    move v5, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/stripe/android/StripePaymentController$createPaymentIntentCallback$1;-><init>(Lcom/stripe/android/StripePaymentController;ZLjava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;ILcom/stripe/android/ApiResultCallback;)V

    check-cast v7, Lcom/stripe/android/ApiResultCallback;

    return-object v7
.end method

.method static synthetic createPaymentIntentCallback$default(Lcom/stripe/android/StripePaymentController;Lcom/stripe/android/networking/ApiRequest$Options;ILjava/lang/String;ZLcom/stripe/android/ApiResultCallback;ILjava/lang/Object;)Lcom/stripe/android/ApiResultCallback;
    .registers 14

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_5

    const/4 p4, 0x0

    :cond_5
    move v4, p4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p5

    .line 491
    invoke-direct/range {v0 .. v5}, Lcom/stripe/android/StripePaymentController;->createPaymentIntentCallback(Lcom/stripe/android/networking/ApiRequest$Options;ILjava/lang/String;ZLcom/stripe/android/ApiResultCallback;)Lcom/stripe/android/ApiResultCallback;

    move-result-object p0

    return-object p0
.end method

.method private final createSetupIntentCallback(Lcom/stripe/android/networking/ApiRequest$Options;ILjava/lang/String;ZLcom/stripe/android/ApiResultCallback;)Lcom/stripe/android/ApiResultCallback;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/networking/ApiRequest$Options;",
            "I",
            "Ljava/lang/String;",
            "Z",
            "Lcom/stripe/android/ApiResultCallback<",
            "-",
            "Lcom/stripe/android/SetupIntentResult;",
            ">;)",
            "Lcom/stripe/android/ApiResultCallback<",
            "Lcom/stripe/android/model/SetupIntent;",
            ">;"
        }
    .end annotation

    .line 600
    new-instance v7, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1;

    move-object v0, v7

    move-object v1, p0

    move v2, p4

    move-object v3, p3

    move-object v4, p1

    move v5, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1;-><init>(Lcom/stripe/android/StripePaymentController;ZLjava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;ILcom/stripe/android/ApiResultCallback;)V

    check-cast v7, Lcom/stripe/android/ApiResultCallback;

    return-object v7
.end method

.method static synthetic createSetupIntentCallback$default(Lcom/stripe/android/StripePaymentController;Lcom/stripe/android/networking/ApiRequest$Options;ILjava/lang/String;ZLcom/stripe/android/ApiResultCallback;ILjava/lang/Object;)Lcom/stripe/android/ApiResultCallback;
    .registers 14

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_5

    const/4 p4, 0x0

    :cond_5
    move v4, p4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p5

    .line 597
    invoke-direct/range {v0 .. v5}, Lcom/stripe/android/StripePaymentController;->createSetupIntentCallback(Lcom/stripe/android/networking/ApiRequest$Options;ILjava/lang/String;ZLcom/stripe/android/ApiResultCallback;)Lcom/stripe/android/ApiResultCallback;

    move-result-object p0

    return-object p0
.end method

.method private final getFailureMessage(Lcom/stripe/android/model/StripeIntent;I)Ljava/lang/String;
    .registers 6

    .line 553
    invoke-interface {p1}, Lcom/stripe/android/model/StripeIntent;->getStatus()Lcom/stripe/android/model/StripeIntent$Status;

    move-result-object v0

    sget-object v1, Lcom/stripe/android/model/StripeIntent$Status;->RequiresPaymentMethod:Lcom/stripe/android/model/StripeIntent$Status;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_7f

    .line 555
    instance-of p2, p1, Lcom/stripe/android/model/PaymentIntent;

    const-string v0, "payment_intent_authentication_failure"

    if-eqz p2, :cond_45

    .line 557
    check-cast p1, Lcom/stripe/android/model/PaymentIntent;

    invoke-virtual {p1}, Lcom/stripe/android/model/PaymentIntent;->getLastPaymentError()Lcom/stripe/android/model/PaymentIntent$Error;

    move-result-object p2

    if-eqz p2, :cond_1c

    invoke-virtual {p2}, Lcom/stripe/android/model/PaymentIntent$Error;->getCode()Ljava/lang/String;

    move-result-object p2

    goto :goto_1d

    :cond_1c
    move-object p2, v2

    :goto_1d
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2c

    .line 558
    iget-object p1, p0, Lcom/stripe/android/StripePaymentController;->resources:Landroid/content/res/Resources;

    sget p2, Lcom/stripe/android/R$string;->stripe_failure_reason_authentication:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_8a

    .line 560
    :cond_2c
    invoke-virtual {p1}, Lcom/stripe/android/model/PaymentIntent;->getLastPaymentError()Lcom/stripe/android/model/PaymentIntent$Error;

    move-result-object p2

    if-eqz p2, :cond_37

    invoke-virtual {p2}, Lcom/stripe/android/model/PaymentIntent$Error;->getType()Lcom/stripe/android/model/PaymentIntent$Error$Type;

    move-result-object p2

    goto :goto_38

    :cond_37
    move-object p2, v2

    :goto_38
    sget-object v0, Lcom/stripe/android/model/PaymentIntent$Error$Type;->CardError:Lcom/stripe/android/model/PaymentIntent$Error$Type;

    if-ne p2, v0, :cond_8a

    .line 561
    invoke-virtual {p1}, Lcom/stripe/android/model/PaymentIntent;->getLastPaymentError()Lcom/stripe/android/model/PaymentIntent$Error;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/android/model/PaymentIntent$Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_8a

    .line 568
    :cond_45
    instance-of p2, p1, Lcom/stripe/android/model/SetupIntent;

    if-eqz p2, :cond_8a

    .line 570
    check-cast p1, Lcom/stripe/android/model/SetupIntent;

    invoke-virtual {p1}, Lcom/stripe/android/model/SetupIntent;->getLastSetupError()Lcom/stripe/android/model/SetupIntent$Error;

    move-result-object p2

    if-eqz p2, :cond_56

    invoke-virtual {p2}, Lcom/stripe/android/model/SetupIntent$Error;->getCode()Ljava/lang/String;

    move-result-object p2

    goto :goto_57

    :cond_56
    move-object p2, v2

    :goto_57
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_66

    .line 571
    iget-object p1, p0, Lcom/stripe/android/StripePaymentController;->resources:Landroid/content/res/Resources;

    sget p2, Lcom/stripe/android/R$string;->stripe_failure_reason_authentication:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_8a

    .line 573
    :cond_66
    invoke-virtual {p1}, Lcom/stripe/android/model/SetupIntent;->getLastSetupError()Lcom/stripe/android/model/SetupIntent$Error;

    move-result-object p2

    if-eqz p2, :cond_71

    invoke-virtual {p2}, Lcom/stripe/android/model/SetupIntent$Error;->getType()Lcom/stripe/android/model/SetupIntent$Error$Type;

    move-result-object p2

    goto :goto_72

    :cond_71
    move-object p2, v2

    :goto_72
    sget-object v0, Lcom/stripe/android/model/SetupIntent$Error$Type;->CardError:Lcom/stripe/android/model/SetupIntent$Error$Type;

    if-ne p2, v0, :cond_8a

    .line 574
    invoke-virtual {p1}, Lcom/stripe/android/model/SetupIntent;->getLastSetupError()Lcom/stripe/android/model/SetupIntent$Error;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/android/model/SetupIntent$Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_8a

    :cond_7f
    const/4 p1, 0x4

    if-ne p2, p1, :cond_8a

    .line 585
    iget-object p1, p0, Lcom/stripe/android/StripePaymentController;->resources:Landroid/content/res/Resources;

    sget p2, Lcom/stripe/android/R$string;->stripe_failure_reason_timed_out:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_8a
    :goto_8a
    return-object v2
.end method

.method private final onSourceRetrieved(Lcom/stripe/android/view/AuthActivityStarter$Host;Lcom/stripe/android/model/Source;Lcom/stripe/android/networking/ApiRequest$Options;)V
    .registers 19

    move-object v0, p0

    move-object/from16 v1, p1

    .line 228
    invoke-virtual/range {p2 .. p2}, Lcom/stripe/android/model/Source;->getFlow()Lcom/stripe/android/model/Source$Flow;

    move-result-object v2

    sget-object v3, Lcom/stripe/android/model/Source$Flow;->Redirect:Lcom/stripe/android/model/Source$Flow;

    if-ne v2, v3, :cond_6a

    .line 229
    iget-object v2, v0, Lcom/stripe/android/StripePaymentController;->analyticsRequestExecutor:Lcom/stripe/android/networking/AnalyticsRequestExecutor;

    .line 230
    iget-object v3, v0, Lcom/stripe/android/StripePaymentController;->analyticsRequestFactory:Lcom/stripe/android/networking/AnalyticsRequest$Factory;

    .line 231
    iget-object v4, v0, Lcom/stripe/android/StripePaymentController;->analyticsDataFactory:Lcom/stripe/android/networking/AnalyticsDataFactory;

    .line 232
    sget-object v5, Lcom/stripe/android/AnalyticsEvent;->AuthSourceRedirect:Lcom/stripe/android/AnalyticsEvent;

    .line 233
    invoke-virtual/range {p2 .. p2}, Lcom/stripe/android/model/Source;->getId()Ljava/lang/String;

    move-result-object v6

    .line 231
    invoke-virtual {v4, v5, v6}, Lcom/stripe/android/networking/AnalyticsDataFactory;->createAuthSourceParams$stripe_release(Lcom/stripe/android/AnalyticsEvent;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 230
    invoke-virtual {v3, v4}, Lcom/stripe/android/networking/AnalyticsRequest$Factory;->create$stripe_release(Ljava/util/Map;)Lcom/stripe/android/networking/AnalyticsRequest;

    move-result-object v3

    .line 229
    invoke-interface {v2, v3}, Lcom/stripe/android/networking/AnalyticsRequestExecutor;->executeAsync(Lcom/stripe/android/networking/AnalyticsRequest;)V

    .line 238
    new-instance v2, Lcom/stripe/android/PaymentAuthWebViewStarter;

    const v3, 0xc352

    invoke-direct {v2, v1, v3}, Lcom/stripe/android/PaymentAuthWebViewStarter;-><init>(Lcom/stripe/android/view/AuthActivityStarter$Host;I)V

    .line 242
    new-instance v1, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;

    .line 243
    invoke-virtual/range {p2 .. p2}, Lcom/stripe/android/model/Source;->getClientSecret()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-eqz v3, :cond_36

    move-object v5, v3

    goto :goto_37

    :cond_36
    move-object v5, v4

    .line 244
    :goto_37
    invoke-virtual/range {p2 .. p2}, Lcom/stripe/android/model/Source;->getRedirect()Lcom/stripe/android/model/Source$Redirect;

    move-result-object v3

    const/4 v6, 0x0

    if-eqz v3, :cond_43

    invoke-virtual {v3}, Lcom/stripe/android/model/Source$Redirect;->getUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_44

    :cond_43
    move-object v3, v6

    :goto_44
    if-eqz v3, :cond_47

    goto :goto_48

    :cond_47
    move-object v3, v4

    .line 245
    :goto_48
    invoke-virtual/range {p2 .. p2}, Lcom/stripe/android/model/Source;->getRedirect()Lcom/stripe/android/model/Source$Redirect;

    move-result-object v4

    if-eqz v4, :cond_54

    invoke-virtual {v4}, Lcom/stripe/android/model/Source$Redirect;->getReturnUrl()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    goto :goto_55

    :cond_54
    move-object v7, v6

    .line 246
    :goto_55
    iget-boolean v8, v0, Lcom/stripe/android/StripePaymentController;->enableLogging:Z

    const/4 v9, 0x0

    .line 247
    invoke-virtual/range {p3 .. p3}, Lcom/stripe/android/networking/ApiRequest$Options;->getStripeAccount$stripe_release()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xd0

    const/4 v14, 0x0

    move-object v4, v1

    move-object v6, v3

    .line 242
    invoke-direct/range {v4 .. v14}, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/stripe/android/stripe3ds2/init/ui/StripeToolbarCustomization;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 241
    invoke-virtual {v2, v1}, Lcom/stripe/android/PaymentAuthWebViewStarter;->start(Lcom/stripe/android/PaymentAuthWebViewStarter$Args;)V

    goto :goto_73

    .line 251
    :cond_6a
    invoke-virtual/range {p3 .. p3}, Lcom/stripe/android/networking/ApiRequest$Options;->getStripeAccount$stripe_release()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-direct {p0, v1, v3, v2}, Lcom/stripe/android/StripePaymentController;->bypassAuth(Lcom/stripe/android/view/AuthActivityStarter$Host;Lcom/stripe/android/model/Source;Ljava/lang/String;)V

    :goto_73
    return-void
.end method


# virtual methods
.method public authenticateAlipay(Lcom/stripe/android/model/StripeIntent;Ljava/lang/String;Lcom/stripe/android/AlipayAuthenticator;Lcom/stripe/android/ApiResultCallback;)V
    .registers 14
    .param p1    # Lcom/stripe/android/model/StripeIntent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/AlipayAuthenticator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/stripe/android/ApiResultCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/model/StripeIntent;",
            "Ljava/lang/String;",
            "Lcom/stripe/android/AlipayAuthenticator;",
            "Lcom/stripe/android/ApiResultCallback<",
            "-",
            "Lcom/stripe/android/PaymentIntentResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authenticator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    new-instance v0, Lcom/stripe/android/networking/ApiRequest$Options;

    .line 454
    iget-object v2, p0, Lcom/stripe/android/StripePaymentController;->publishableKey:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    move-object v3, p2

    .line 453
    invoke-direct/range {v1 .. v6}, Lcom/stripe/android/networking/ApiRequest$Options;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 458
    iget-object p2, p0, Lcom/stripe/android/StripePaymentController;->workContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {p2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p2

    new-instance v8, Lcom/stripe/android/StripePaymentController$authenticateAlipay$1;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, v0

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/stripe/android/StripePaymentController$authenticateAlipay$1;-><init>(Lcom/stripe/android/StripePaymentController;Lcom/stripe/android/model/StripeIntent;Lcom/stripe/android/AlipayAuthenticator;Lcom/stripe/android/networking/ApiRequest$Options;Lcom/stripe/android/ApiResultCallback;Lkotlin/coroutines/Continuation;)V

    move-object v4, v8

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public handleNextAction(Lcom/stripe/android/view/AuthActivityStarter$Host;Lcom/stripe/android/model/StripeIntent;Lcom/stripe/android/networking/ApiRequest$Options;)V
    .registers 19
    .param p1    # Lcom/stripe/android/view/AuthActivityStarter$Host;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/model/StripeIntent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/networking/ApiRequest$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    const-string v4, "host"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "stripeIntent"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "requestOptions"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 667
    invoke-interface/range {p2 .. p2}, Lcom/stripe/android/model/StripeIntent;->requiresAction()Z

    move-result v4

    if-eqz v4, :cond_1b8

    .line 668
    invoke-interface/range {p2 .. p2}, Lcom/stripe/android/model/StripeIntent;->getNextActionData()Lcom/stripe/android/model/StripeIntent$NextActionData;

    move-result-object v4

    .line 669
    instance-of v5, v4, Lcom/stripe/android/model/StripeIntent$NextActionData$SdkData$Use3DS2;

    const-string v6, ""

    if-eqz v5, :cond_5e

    .line 670
    iget-object v5, v1, Lcom/stripe/android/StripePaymentController;->analyticsRequestExecutor:Lcom/stripe/android/networking/AnalyticsRequestExecutor;

    .line 671
    iget-object v7, v1, Lcom/stripe/android/StripePaymentController;->analyticsRequestFactory:Lcom/stripe/android/networking/AnalyticsRequest$Factory;

    .line 672
    iget-object v8, v1, Lcom/stripe/android/StripePaymentController;->analyticsDataFactory:Lcom/stripe/android/networking/AnalyticsDataFactory;

    .line 673
    sget-object v9, Lcom/stripe/android/AnalyticsEvent;->Auth3ds2Fingerprint:Lcom/stripe/android/AnalyticsEvent;

    .line 674
    invoke-interface/range {p2 .. p2}, Lcom/stripe/android/model/StripeIntent;->getId()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_35

    goto :goto_36

    :cond_35
    move-object v10, v6

    :goto_36
    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    .line 672
    invoke-static/range {v8 .. v13}, Lcom/stripe/android/networking/AnalyticsDataFactory;->createAuthParams$stripe_release$default(Lcom/stripe/android/networking/AnalyticsDataFactory;Lcom/stripe/android/AnalyticsEvent;Ljava/lang/String;Lcom/stripe/android/networking/RequestId;ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    .line 671
    invoke-virtual {v7, v6}, Lcom/stripe/android/networking/AnalyticsRequest$Factory;->create$stripe_release(Ljava/util/Map;)Lcom/stripe/android/networking/AnalyticsRequest;

    move-result-object v6

    .line 670
    invoke-interface {v5, v6}, Lcom/stripe/android/networking/AnalyticsRequestExecutor;->executeAsync(Lcom/stripe/android/networking/AnalyticsRequest;)V

    .line 682
    :try_start_44
    new-instance v5, Lcom/stripe/android/model/Stripe3ds2Fingerprint;

    check-cast v4, Lcom/stripe/android/model/StripeIntent$NextActionData$SdkData$Use3DS2;

    invoke-direct {v5, v4}, Lcom/stripe/android/model/Stripe3ds2Fingerprint;-><init>(Lcom/stripe/android/model/StripeIntent$NextActionData$SdkData$Use3DS2;)V

    .line 679
    invoke-direct {p0, v3, v2, v5, v0}, Lcom/stripe/android/StripePaymentController;->begin3ds2Auth(Lcom/stripe/android/view/AuthActivityStarter$Host;Lcom/stripe/android/model/StripeIntent;Lcom/stripe/android/model/Stripe3ds2Fingerprint;Lcom/stripe/android/networking/ApiRequest$Options;)V
    :try_end_4e
    .catch Ljava/security/cert/CertificateException; {:try_start_44 .. :try_end_4e} :catch_50

    goto/16 :goto_1bf

    :catch_50
    move-exception v0

    .line 686
    sget-object v4, Lcom/stripe/android/StripePaymentController;->Companion:Lcom/stripe/android/StripePaymentController$Companion;

    invoke-virtual {v4, v2}, Lcom/stripe/android/StripePaymentController$Companion;->getRequestCode$stripe_release(Lcom/stripe/android/model/StripeIntent;)I

    move-result v2

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v4, v3, v2, v0}, Lcom/stripe/android/StripePaymentController$Companion;->access$handleError(Lcom/stripe/android/StripePaymentController$Companion;Lcom/stripe/android/view/AuthActivityStarter$Host;ILjava/lang/Throwable;)V

    goto/16 :goto_1bf

    .line 689
    :cond_5e
    instance-of v5, v4, Lcom/stripe/android/model/StripeIntent$NextActionData$SdkData$Use3DS1;

    if-eqz v5, :cond_b1

    .line 690
    iget-object v5, v1, Lcom/stripe/android/StripePaymentController;->analyticsRequestExecutor:Lcom/stripe/android/networking/AnalyticsRequestExecutor;

    .line 691
    iget-object v7, v1, Lcom/stripe/android/StripePaymentController;->analyticsRequestFactory:Lcom/stripe/android/networking/AnalyticsRequest$Factory;

    .line 692
    iget-object v8, v1, Lcom/stripe/android/StripePaymentController;->analyticsDataFactory:Lcom/stripe/android/networking/AnalyticsDataFactory;

    .line 693
    sget-object v9, Lcom/stripe/android/AnalyticsEvent;->Auth3ds1Sdk:Lcom/stripe/android/AnalyticsEvent;

    .line 694
    invoke-interface/range {p2 .. p2}, Lcom/stripe/android/model/StripeIntent;->getId()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_71

    goto :goto_72

    :cond_71
    move-object v10, v6

    :goto_72
    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    .line 692
    invoke-static/range {v8 .. v13}, Lcom/stripe/android/networking/AnalyticsDataFactory;->createAuthParams$stripe_release$default(Lcom/stripe/android/networking/AnalyticsDataFactory;Lcom/stripe/android/AnalyticsEvent;Ljava/lang/String;Lcom/stripe/android/networking/RequestId;ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v8

    .line 691
    invoke-virtual {v7, v8}, Lcom/stripe/android/networking/AnalyticsRequest$Factory;->create$stripe_release(Ljava/util/Map;)Lcom/stripe/android/networking/AnalyticsRequest;

    move-result-object v7

    .line 690
    invoke-interface {v5, v7}, Lcom/stripe/android/networking/AnalyticsRequestExecutor;->executeAsync(Lcom/stripe/android/networking/AnalyticsRequest;)V

    .line 698
    sget-object v5, Lcom/stripe/android/StripePaymentController;->Companion:Lcom/stripe/android/StripePaymentController$Companion;

    .line 700
    invoke-virtual {v5, v2}, Lcom/stripe/android/StripePaymentController$Companion;->getRequestCode$stripe_release(Lcom/stripe/android/model/StripeIntent;)I

    move-result v7

    .line 701
    invoke-interface/range {p2 .. p2}, Lcom/stripe/android/model/StripeIntent;->getClientSecret()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8d

    move-object v6, v2

    .line 702
    :cond_8d
    check-cast v4, Lcom/stripe/android/model/StripeIntent$NextActionData$SdkData$Use3DS1;

    invoke-virtual {v4}, Lcom/stripe/android/model/StripeIntent$NextActionData$SdkData$Use3DS1;->getUrl()Ljava/lang/String;

    move-result-object v8

    .line 703
    invoke-virtual/range {p3 .. p3}, Lcom/stripe/android/networking/ApiRequest$Options;->getStripeAccount$stripe_release()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    .line 704
    iget-boolean v10, v1, Lcom/stripe/android/StripePaymentController;->enableLogging:Z

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/16 v13, 0x120

    const/4 v14, 0x0

    move-object v2, v5

    move-object/from16 v3, p1

    move v4, v7

    move-object v5, v6

    move-object v6, v8

    move-object v7, v0

    move-object v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move-object v13, v14

    .line 698
    invoke-static/range {v2 .. v13}, Lcom/stripe/android/StripePaymentController$Companion;->beginWebAuth$default(Lcom/stripe/android/StripePaymentController$Companion;Lcom/stripe/android/view/AuthActivityStarter$Host;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/Object;)V

    goto/16 :goto_1bf

    .line 709
    :cond_b1
    instance-of v5, v4, Lcom/stripe/android/model/StripeIntent$NextActionData$RedirectToUrl;

    if-eqz v5, :cond_110

    .line 710
    iget-object v5, v1, Lcom/stripe/android/StripePaymentController;->analyticsRequestExecutor:Lcom/stripe/android/networking/AnalyticsRequestExecutor;

    .line 711
    iget-object v7, v1, Lcom/stripe/android/StripePaymentController;->analyticsRequestFactory:Lcom/stripe/android/networking/AnalyticsRequest$Factory;

    .line 712
    iget-object v8, v1, Lcom/stripe/android/StripePaymentController;->analyticsDataFactory:Lcom/stripe/android/networking/AnalyticsDataFactory;

    .line 713
    sget-object v9, Lcom/stripe/android/AnalyticsEvent;->AuthRedirect:Lcom/stripe/android/AnalyticsEvent;

    .line 714
    invoke-interface/range {p2 .. p2}, Lcom/stripe/android/model/StripeIntent;->getId()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_c4

    goto :goto_c5

    :cond_c4
    move-object v10, v6

    :goto_c5
    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    .line 712
    invoke-static/range {v8 .. v13}, Lcom/stripe/android/networking/AnalyticsDataFactory;->createAuthParams$stripe_release$default(Lcom/stripe/android/networking/AnalyticsDataFactory;Lcom/stripe/android/AnalyticsEvent;Ljava/lang/String;Lcom/stripe/android/networking/RequestId;ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v8

    .line 711
    invoke-virtual {v7, v8}, Lcom/stripe/android/networking/AnalyticsRequest$Factory;->create$stripe_release(Ljava/util/Map;)Lcom/stripe/android/networking/AnalyticsRequest;

    move-result-object v7

    .line 710
    invoke-interface {v5, v7}, Lcom/stripe/android/networking/AnalyticsRequestExecutor;->executeAsync(Lcom/stripe/android/networking/AnalyticsRequest;)V

    .line 719
    sget-object v5, Lcom/stripe/android/StripePaymentController;->Companion:Lcom/stripe/android/StripePaymentController$Companion;

    .line 721
    invoke-virtual {v5, v2}, Lcom/stripe/android/StripePaymentController$Companion;->getRequestCode$stripe_release(Lcom/stripe/android/model/StripeIntent;)I

    move-result v7

    .line 722
    invoke-interface/range {p2 .. p2}, Lcom/stripe/android/model/StripeIntent;->getClientSecret()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e0

    move-object v6, v2

    .line 723
    :cond_e0
    check-cast v4, Lcom/stripe/android/model/StripeIntent$NextActionData$RedirectToUrl;

    invoke-virtual {v4}, Lcom/stripe/android/model/StripeIntent$NextActionData$RedirectToUrl;->getUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v2, "nextActionData.url.toString()"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 724
    invoke-virtual/range {p3 .. p3}, Lcom/stripe/android/networking/ApiRequest$Options;->getStripeAccount$stripe_release()Ljava/lang/String;

    move-result-object v0

    .line 725
    invoke-virtual {v4}, Lcom/stripe/android/model/StripeIntent$NextActionData$RedirectToUrl;->getReturnUrl()Ljava/lang/String;

    move-result-object v9

    .line 726
    iget-boolean v10, v1, Lcom/stripe/android/StripePaymentController;->enableLogging:Z

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x180

    const/4 v14, 0x0

    move-object v2, v5

    move-object/from16 v3, p1

    move v4, v7

    move-object v5, v6

    move-object v6, v8

    move-object v7, v0

    move-object v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move-object v13, v14

    .line 719
    invoke-static/range {v2 .. v13}, Lcom/stripe/android/StripePaymentController$Companion;->beginWebAuth$default(Lcom/stripe/android/StripePaymentController$Companion;Lcom/stripe/android/view/AuthActivityStarter$Host;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/Object;)V

    goto/16 :goto_1bf

    .line 735
    :cond_110
    instance-of v5, v4, Lcom/stripe/android/model/StripeIntent$NextActionData$AlipayRedirect;

    if-eqz v5, :cond_16e

    .line 736
    iget-object v5, v1, Lcom/stripe/android/StripePaymentController;->analyticsRequestExecutor:Lcom/stripe/android/networking/AnalyticsRequestExecutor;

    .line 737
    iget-object v7, v1, Lcom/stripe/android/StripePaymentController;->analyticsRequestFactory:Lcom/stripe/android/networking/AnalyticsRequest$Factory;

    .line 738
    iget-object v8, v1, Lcom/stripe/android/StripePaymentController;->analyticsDataFactory:Lcom/stripe/android/networking/AnalyticsDataFactory;

    .line 739
    sget-object v9, Lcom/stripe/android/AnalyticsEvent;->AuthRedirect:Lcom/stripe/android/AnalyticsEvent;

    .line 740
    invoke-interface/range {p2 .. p2}, Lcom/stripe/android/model/StripeIntent;->getId()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_123

    goto :goto_124

    :cond_123
    move-object v10, v6

    :goto_124
    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    .line 738
    invoke-static/range {v8 .. v13}, Lcom/stripe/android/networking/AnalyticsDataFactory;->createAuthParams$stripe_release$default(Lcom/stripe/android/networking/AnalyticsDataFactory;Lcom/stripe/android/AnalyticsEvent;Ljava/lang/String;Lcom/stripe/android/networking/RequestId;ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v8

    .line 737
    invoke-virtual {v7, v8}, Lcom/stripe/android/networking/AnalyticsRequest$Factory;->create$stripe_release(Ljava/util/Map;)Lcom/stripe/android/networking/AnalyticsRequest;

    move-result-object v7

    .line 736
    invoke-interface {v5, v7}, Lcom/stripe/android/networking/AnalyticsRequestExecutor;->executeAsync(Lcom/stripe/android/networking/AnalyticsRequest;)V

    .line 745
    sget-object v5, Lcom/stripe/android/StripePaymentController;->Companion:Lcom/stripe/android/StripePaymentController$Companion;

    .line 747
    invoke-virtual {v5, v2}, Lcom/stripe/android/StripePaymentController$Companion;->getRequestCode$stripe_release(Lcom/stripe/android/model/StripeIntent;)I

    move-result v7

    .line 748
    invoke-interface/range {p2 .. p2}, Lcom/stripe/android/model/StripeIntent;->getClientSecret()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13f

    move-object v6, v2

    .line 749
    :cond_13f
    check-cast v4, Lcom/stripe/android/model/StripeIntent$NextActionData$AlipayRedirect;

    invoke-virtual {v4}, Lcom/stripe/android/model/StripeIntent$NextActionData$AlipayRedirect;->getWebViewUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v2, "nextActionData.webViewUrl.toString()"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 750
    invoke-virtual/range {p3 .. p3}, Lcom/stripe/android/networking/ApiRequest$Options;->getStripeAccount$stripe_release()Ljava/lang/String;

    move-result-object v0

    .line 751
    invoke-virtual {v4}, Lcom/stripe/android/model/StripeIntent$NextActionData$AlipayRedirect;->getReturnUrl()Ljava/lang/String;

    move-result-object v9

    .line 752
    iget-boolean v10, v1, Lcom/stripe/android/StripePaymentController;->enableLogging:Z

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x180

    const/4 v14, 0x0

    move-object v2, v5

    move-object/from16 v3, p1

    move v4, v7

    move-object v5, v6

    move-object v6, v8

    move-object v7, v0

    move-object v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move-object v13, v14

    .line 745
    invoke-static/range {v2 .. v13}, Lcom/stripe/android/StripePaymentController$Companion;->beginWebAuth$default(Lcom/stripe/android/StripePaymentController$Companion;Lcom/stripe/android/view/AuthActivityStarter$Host;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/Object;)V

    goto :goto_1bf

    .line 755
    :cond_16e
    instance-of v5, v4, Lcom/stripe/android/model/StripeIntent$NextActionData$DisplayOxxoDetails;

    if-eqz v5, :cond_1b0

    .line 757
    check-cast v4, Lcom/stripe/android/model/StripeIntent$NextActionData$DisplayOxxoDetails;

    invoke-virtual {v4}, Lcom/stripe/android/model/StripeIntent$NextActionData$DisplayOxxoDetails;->getHostedVoucherUrl()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1a8

    .line 758
    sget-object v5, Lcom/stripe/android/StripePaymentController;->Companion:Lcom/stripe/android/StripePaymentController$Companion;

    .line 760
    invoke-virtual {v5, v2}, Lcom/stripe/android/StripePaymentController$Companion;->getRequestCode$stripe_release(Lcom/stripe/android/model/StripeIntent;)I

    move-result v7

    .line 761
    invoke-interface/range {p2 .. p2}, Lcom/stripe/android/model/StripeIntent;->getClientSecret()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_187

    move-object v6, v2

    .line 762
    :cond_187
    invoke-virtual {v4}, Lcom/stripe/android/model/StripeIntent$NextActionData$DisplayOxxoDetails;->getHostedVoucherUrl()Ljava/lang/String;

    move-result-object v8

    .line 763
    invoke-virtual/range {p3 .. p3}, Lcom/stripe/android/networking/ApiRequest$Options;->getStripeAccount$stripe_release()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    .line 764
    iget-boolean v10, v1, Lcom/stripe/android/StripePaymentController;->enableLogging:Z

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xa0

    const/4 v14, 0x0

    move-object v2, v5

    move-object/from16 v3, p1

    move v4, v7

    move-object v5, v6

    move-object v6, v8

    move-object v7, v0

    move-object v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move-object v13, v14

    .line 758
    invoke-static/range {v2 .. v13}, Lcom/stripe/android/StripePaymentController$Companion;->beginWebAuth$default(Lcom/stripe/android/StripePaymentController$Companion;Lcom/stripe/android/view/AuthActivityStarter$Host;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/Object;)V

    goto :goto_1bf

    .line 769
    :cond_1a8
    invoke-virtual/range {p3 .. p3}, Lcom/stripe/android/networking/ApiRequest$Options;->getStripeAccount$stripe_release()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v2, v0}, Lcom/stripe/android/StripePaymentController;->bypassAuth(Lcom/stripe/android/view/AuthActivityStarter$Host;Lcom/stripe/android/model/StripeIntent;Ljava/lang/String;)V

    goto :goto_1bf

    .line 772
    :cond_1b0
    invoke-virtual/range {p3 .. p3}, Lcom/stripe/android/networking/ApiRequest$Options;->getStripeAccount$stripe_release()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v2, v0}, Lcom/stripe/android/StripePaymentController;->bypassAuth(Lcom/stripe/android/view/AuthActivityStarter$Host;Lcom/stripe/android/model/StripeIntent;Ljava/lang/String;)V

    goto :goto_1bf

    .line 776
    :cond_1b8
    invoke-virtual/range {p3 .. p3}, Lcom/stripe/android/networking/ApiRequest$Options;->getStripeAccount$stripe_release()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v2, v0}, Lcom/stripe/android/StripePaymentController;->bypassAuth(Lcom/stripe/android/view/AuthActivityStarter$Host;Lcom/stripe/android/model/StripeIntent;Ljava/lang/String;)V

    :goto_1bf
    return-void
.end method

.method public handlePaymentResult(Landroid/content/Intent;Lcom/stripe/android/ApiResultCallback;)V
    .registers 23
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/ApiResultCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lcom/stripe/android/ApiResultCallback<",
            "-",
            "Lcom/stripe/android/PaymentIntentResult;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-object/from16 v7, p2

    const-string v1, "data"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "callback"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    sget-object v1, Lcom/stripe/android/PaymentController$Result;->Companion:Lcom/stripe/android/PaymentController$Result$Companion;

    invoke-virtual {v1, v0}, Lcom/stripe/android/PaymentController$Result$Companion;->fromIntent$stripe_release(Landroid/content/Intent;)Lcom/stripe/android/PaymentController$Result;

    move-result-object v1

    if-eqz v1, :cond_19

    goto :goto_2c

    :cond_19
    new-instance v1, Lcom/stripe/android/PaymentController$Result;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x7f

    const/16 v19, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v19}, Lcom/stripe/android/PaymentController$Result;-><init>(Ljava/lang/String;ILcom/stripe/android/exception/StripeException;ZLjava/lang/String;Lcom/stripe/android/model/Source;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 287
    :goto_2c
    invoke-virtual {v1}, Lcom/stripe/android/PaymentController$Result;->getException$stripe_release()Lcom/stripe/android/exception/StripeException;

    move-result-object v2

    .line 288
    instance-of v3, v2, Ljava/lang/Exception;

    if-eqz v3, :cond_3a

    .line 289
    check-cast v2, Ljava/lang/Exception;

    invoke-interface {v7, v2}, Lcom/stripe/android/ApiResultCallback;->onError(Ljava/lang/Exception;)V

    return-void

    .line 293
    :cond_3a
    sget-object v2, Lcom/stripe/android/StripePaymentController;->Companion:Lcom/stripe/android/StripePaymentController$Companion;

    invoke-virtual {v2, v0}, Lcom/stripe/android/StripePaymentController$Companion;->getClientSecret$stripe_release(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 294
    move-object v0, v2

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_4e

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4c

    goto :goto_4e

    :cond_4c
    const/4 v0, 0x0

    goto :goto_4f

    :cond_4e
    :goto_4e
    const/4 v0, 0x1

    :goto_4f
    if-eqz v0, :cond_5e

    .line 295
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid client_secret value in result Intent."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Exception;

    invoke-interface {v7, v0}, Lcom/stripe/android/ApiResultCallback;->onError(Ljava/lang/Exception;)V

    return-void

    .line 299
    :cond_5e
    new-instance v6, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    invoke-virtual {v1}, Lcom/stripe/android/PaymentController$Result;->getShouldCancelSource$stripe_release()Z

    move-result v0

    iput-boolean v0, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 300
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {v1}, Lcom/stripe/android/PaymentController$Result;->getSourceId$stripe_release()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_75

    goto :goto_77

    :cond_75
    const-string v0, ""

    :goto_77
    iput-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 301
    new-instance v4, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    invoke-virtual {v1}, Lcom/stripe/android/PaymentController$Result;->getFlowOutcome$stripe_release()I

    move-result v0

    iput v0, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 303
    new-instance v3, Lcom/stripe/android/networking/ApiRequest$Options;

    .line 304
    iget-object v11, v9, Lcom/stripe/android/StripePaymentController;->publishableKey:Ljava/lang/String;

    .line 305
    invoke-virtual {v1}, Lcom/stripe/android/PaymentController$Result;->getStripeAccountId$stripe_release()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x4

    const/4 v15, 0x0

    move-object v10, v3

    .line 303
    invoke-direct/range {v10 .. v15}, Lcom/stripe/android/networking/ApiRequest$Options;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 308
    iget-object v0, v9, Lcom/stripe/android/StripePaymentController;->workContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    new-instance v13, Lcom/stripe/android/StripePaymentController$handlePaymentResult$1;

    const/4 v8, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/stripe/android/StripePaymentController$handlePaymentResult$1;-><init>(Lcom/stripe/android/StripePaymentController;Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/stripe/android/ApiResultCallback;Lkotlin/coroutines/Continuation;)V

    check-cast v13, Lkotlin/jvm/functions/Function2;

    const/4 v14, 0x3

    invoke-static/range {v10 .. v15}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public handleSetupResult(Landroid/content/Intent;Lcom/stripe/android/ApiResultCallback;)V
    .registers 23
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/ApiResultCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lcom/stripe/android/ApiResultCallback<",
            "-",
            "Lcom/stripe/android/SetupIntentResult;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-object/from16 v7, p2

    const-string v1, "data"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "callback"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    sget-object v1, Lcom/stripe/android/PaymentController$Result;->Companion:Lcom/stripe/android/PaymentController$Result$Companion;

    invoke-virtual {v1, v0}, Lcom/stripe/android/PaymentController$Result$Companion;->fromIntent$stripe_release(Landroid/content/Intent;)Lcom/stripe/android/PaymentController$Result;

    move-result-object v1

    if-eqz v1, :cond_19

    goto :goto_2c

    :cond_19
    new-instance v1, Lcom/stripe/android/PaymentController$Result;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x7f

    const/16 v19, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v19}, Lcom/stripe/android/PaymentController$Result;-><init>(Ljava/lang/String;ILcom/stripe/android/exception/StripeException;ZLjava/lang/String;Lcom/stripe/android/model/Source;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 354
    :goto_2c
    invoke-virtual {v1}, Lcom/stripe/android/PaymentController$Result;->getException$stripe_release()Lcom/stripe/android/exception/StripeException;

    move-result-object v2

    .line 355
    instance-of v3, v2, Ljava/lang/Exception;

    if-eqz v3, :cond_3a

    .line 356
    check-cast v2, Ljava/lang/Exception;

    invoke-interface {v7, v2}, Lcom/stripe/android/ApiResultCallback;->onError(Ljava/lang/Exception;)V

    return-void

    .line 360
    :cond_3a
    sget-object v2, Lcom/stripe/android/StripePaymentController;->Companion:Lcom/stripe/android/StripePaymentController$Companion;

    invoke-virtual {v2, v0}, Lcom/stripe/android/StripePaymentController$Companion;->getClientSecret$stripe_release(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 361
    move-object v0, v2

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_4e

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4c

    goto :goto_4e

    :cond_4c
    const/4 v0, 0x0

    goto :goto_4f

    :cond_4e
    :goto_4e
    const/4 v0, 0x1

    :goto_4f
    if-eqz v0, :cond_5e

    .line 362
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid client_secret value in result Intent."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Exception;

    invoke-interface {v7, v0}, Lcom/stripe/android/ApiResultCallback;->onError(Ljava/lang/Exception;)V

    return-void

    .line 366
    :cond_5e
    new-instance v6, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    invoke-virtual {v1}, Lcom/stripe/android/PaymentController$Result;->getShouldCancelSource$stripe_release()Z

    move-result v0

    iput-boolean v0, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 367
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {v1}, Lcom/stripe/android/PaymentController$Result;->getSourceId$stripe_release()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_75

    goto :goto_77

    :cond_75
    const-string v0, ""

    :goto_77
    iput-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 368
    new-instance v4, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    invoke-virtual {v1}, Lcom/stripe/android/PaymentController$Result;->getFlowOutcome$stripe_release()I

    move-result v0

    iput v0, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 370
    new-instance v3, Lcom/stripe/android/networking/ApiRequest$Options;

    .line 371
    iget-object v11, v9, Lcom/stripe/android/StripePaymentController;->publishableKey:Ljava/lang/String;

    .line 372
    invoke-virtual {v1}, Lcom/stripe/android/PaymentController$Result;->getStripeAccountId$stripe_release()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x4

    const/4 v15, 0x0

    move-object v10, v3

    .line 370
    invoke-direct/range {v10 .. v15}, Lcom/stripe/android/networking/ApiRequest$Options;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 375
    iget-object v0, v9, Lcom/stripe/android/StripePaymentController;->workContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    new-instance v13, Lcom/stripe/android/StripePaymentController$handleSetupResult$1;

    const/4 v8, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/stripe/android/StripePaymentController$handleSetupResult$1;-><init>(Lcom/stripe/android/StripePaymentController;Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/stripe/android/ApiResultCallback;Lkotlin/coroutines/Continuation;)V

    check-cast v13, Lkotlin/jvm/functions/Function2;

    const/4 v14, 0x3

    invoke-static/range {v10 .. v15}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public handleSourceResult(Landroid/content/Intent;Lcom/stripe/android/ApiResultCallback;)V
    .registers 16
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/ApiResultCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lcom/stripe/android/ApiResultCallback<",
            "-",
            "Lcom/stripe/android/model/Source;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    sget-object v0, Lcom/stripe/android/PaymentController$Result;->Companion:Lcom/stripe/android/PaymentController$Result$Companion;

    invoke-virtual {v0, p1}, Lcom/stripe/android/PaymentController$Result$Companion;->fromIntent$stripe_release(Landroid/content/Intent;)Lcom/stripe/android/PaymentController$Result;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_18

    .line 412
    invoke-virtual {p1}, Lcom/stripe/android/PaymentController$Result;->getSourceId$stripe_release()Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    :cond_18
    move-object v1, v0

    :goto_19
    const-string v2, ""

    if-eqz v1, :cond_1f

    move-object v5, v1

    goto :goto_20

    :cond_1f
    move-object v5, v2

    :goto_20
    if-eqz p1, :cond_27

    .line 413
    invoke-virtual {p1}, Lcom/stripe/android/PaymentController$Result;->getClientSecret$stripe_release()Ljava/lang/String;

    move-result-object v1

    goto :goto_28

    :cond_27
    move-object v1, v0

    :goto_28
    if-eqz v1, :cond_2c

    move-object v6, v1

    goto :goto_2d

    :cond_2c
    move-object v6, v2

    .line 415
    :goto_2d
    new-instance v1, Lcom/stripe/android/networking/ApiRequest$Options;

    .line 416
    iget-object v8, p0, Lcom/stripe/android/StripePaymentController;->publishableKey:Ljava/lang/String;

    if-eqz p1, :cond_37

    .line 417
    invoke-virtual {p1}, Lcom/stripe/android/PaymentController$Result;->getStripeAccountId$stripe_release()Ljava/lang/String;

    move-result-object v0

    :cond_37
    move-object v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object v7, v1

    .line 415
    invoke-direct/range {v7 .. v12}, Lcom/stripe/android/networking/ApiRequest$Options;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 420
    iget-object p1, p0, Lcom/stripe/android/StripePaymentController;->analyticsRequestExecutor:Lcom/stripe/android/networking/AnalyticsRequestExecutor;

    .line 421
    iget-object v0, p0, Lcom/stripe/android/StripePaymentController;->analyticsRequestFactory:Lcom/stripe/android/networking/AnalyticsRequest$Factory;

    .line 422
    iget-object v2, p0, Lcom/stripe/android/StripePaymentController;->analyticsDataFactory:Lcom/stripe/android/networking/AnalyticsDataFactory;

    .line 423
    sget-object v3, Lcom/stripe/android/AnalyticsEvent;->AuthSourceResult:Lcom/stripe/android/AnalyticsEvent;

    .line 422
    invoke-virtual {v2, v3, v5}, Lcom/stripe/android/networking/AnalyticsDataFactory;->createAuthSourceParams$stripe_release(Lcom/stripe/android/AnalyticsEvent;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 421
    invoke-virtual {v0, v2}, Lcom/stripe/android/networking/AnalyticsRequest$Factory;->create$stripe_release(Ljava/util/Map;)Lcom/stripe/android/networking/AnalyticsRequest;

    move-result-object v0

    .line 420
    invoke-interface {p1, v0}, Lcom/stripe/android/networking/AnalyticsRequestExecutor;->executeAsync(Lcom/stripe/android/networking/AnalyticsRequest;)V

    .line 429
    iget-object p1, p0, Lcom/stripe/android/StripePaymentController;->workContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    new-instance v10, Lcom/stripe/android/StripePaymentController$handleSourceResult$1;

    const/4 v9, 0x0

    move-object v3, v10

    move-object v4, p0

    move-object v8, p2

    invoke-direct/range {v3 .. v9}, Lcom/stripe/android/StripePaymentController$handleSourceResult$1;-><init>(Lcom/stripe/android/StripePaymentController;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Lcom/stripe/android/ApiResultCallback;Lkotlin/coroutines/Continuation;)V

    check-cast v10, Lkotlin/jvm/functions/Function2;

    const/4 v11, 0x3

    move-object v7, p1

    move-object v8, v0

    move-object v9, v2

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method final synthetic on3ds2AuthFailure(Ljava/lang/Throwable;Lcom/stripe/android/PaymentRelayStarter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lcom/stripe/android/PaymentRelayStarter;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1030
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/stripe/android/StripePaymentController$on3ds2AuthFailure$2;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p1, v2}, Lcom/stripe/android/StripePaymentController$on3ds2AuthFailure$2;-><init>(Lcom/stripe/android/PaymentRelayStarter;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)V

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

.method public final on3ds2AuthSuccess$stripe_release(Lcom/stripe/android/model/Stripe3ds2AuthResult;Lcom/stripe/android/stripe3ds2/transaction/Transaction;Ljava/lang/String;ILcom/stripe/android/PaymentRelayStarter;Lcom/stripe/android/view/AuthActivityStarter$Host;Lcom/stripe/android/model/StripeIntent;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 23
    .param p1    # Lcom/stripe/android/model/Stripe3ds2AuthResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/stripe3ds2/transaction/Transaction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/stripe/android/PaymentRelayStarter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/stripe/android/view/AuthActivityStarter$Host;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/stripe/android/model/StripeIntent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/stripe/android/networking/ApiRequest$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/model/Stripe3ds2AuthResult;",
            "Lcom/stripe/android/stripe3ds2/transaction/Transaction;",
            "Ljava/lang/String;",
            "I",
            "Lcom/stripe/android/PaymentRelayStarter;",
            "Lcom/stripe/android/view/AuthActivityStarter$Host;",
            "Lcom/stripe/android/model/StripeIntent;",
            "Lcom/stripe/android/networking/ApiRequest$Options;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 897
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v12, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;

    const/4 v11, 0x0

    move-object v1, v12

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v11}, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;-><init>(Lcom/stripe/android/StripePaymentController;Lcom/stripe/android/model/Stripe3ds2AuthResult;Lcom/stripe/android/stripe3ds2/transaction/Transaction;Ljava/lang/String;ILcom/stripe/android/PaymentRelayStarter;Lcom/stripe/android/view/AuthActivityStarter$Host;Lcom/stripe/android/model/StripeIntent;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)V

    check-cast v12, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, p9

    invoke-static {v0, v12, v1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_2b

    return-object v0

    :cond_2b
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public shouldHandlePaymentResult(ILandroid/content/Intent;)Z
    .registers 4
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v0, 0xc350

    if-ne p1, v0, :cond_9

    if-eqz p2, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public shouldHandleSetupResult(ILandroid/content/Intent;)Z
    .registers 4
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v0, 0xc351

    if-ne p1, v0, :cond_9

    if-eqz p2, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public shouldHandleSourceResult(ILandroid/content/Intent;)Z
    .registers 4
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v0, 0xc352

    if-ne p1, v0, :cond_9

    if-eqz p2, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public startAuth(Lcom/stripe/android/view/AuthActivityStarter$Host;Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Lcom/stripe/android/PaymentController$StripeIntentType;)V
    .registers 14
    .param p1    # Lcom/stripe/android/view/AuthActivityStarter$Host;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/networking/ApiRequest$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/stripe/android/PaymentController$StripeIntentType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientSecret"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestOptions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/stripe/android/StripePaymentController;->workContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/stripe/android/StripePaymentController$startAuth$1;

    const/4 v8, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p4

    move-object v5, p2

    move-object v6, p3

    move-object v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/stripe/android/StripePaymentController$startAuth$1;-><init>(Lcom/stripe/android/StripePaymentController;Lcom/stripe/android/PaymentController$StripeIntentType;Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Lcom/stripe/android/view/AuthActivityStarter$Host;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public startAuthenticateSource(Lcom/stripe/android/view/AuthActivityStarter$Host;Lcom/stripe/android/model/Source;Lcom/stripe/android/networking/ApiRequest$Options;)V
    .registers 12
    .param p1    # Lcom/stripe/android/view/AuthActivityStarter$Host;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/model/Source;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/networking/ApiRequest$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestOptions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/stripe/android/StripePaymentController;->analyticsRequestExecutor:Lcom/stripe/android/networking/AnalyticsRequestExecutor;

    .line 191
    iget-object v1, p0, Lcom/stripe/android/StripePaymentController;->analyticsRequestFactory:Lcom/stripe/android/networking/AnalyticsRequest$Factory;

    .line 192
    iget-object v2, p0, Lcom/stripe/android/StripePaymentController;->analyticsDataFactory:Lcom/stripe/android/networking/AnalyticsDataFactory;

    .line 193
    sget-object v3, Lcom/stripe/android/AnalyticsEvent;->AuthSourceStart:Lcom/stripe/android/AnalyticsEvent;

    .line 194
    invoke-virtual {p2}, Lcom/stripe/android/model/Source;->getId()Ljava/lang/String;

    move-result-object v4

    .line 192
    invoke-virtual {v2, v3, v4}, Lcom/stripe/android/networking/AnalyticsDataFactory;->createAuthSourceParams$stripe_release(Lcom/stripe/android/AnalyticsEvent;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 191
    invoke-virtual {v1, v2}, Lcom/stripe/android/networking/AnalyticsRequest$Factory;->create$stripe_release(Ljava/util/Map;)Lcom/stripe/android/networking/AnalyticsRequest;

    move-result-object v1

    .line 190
    invoke-interface {v0, v1}, Lcom/stripe/android/networking/AnalyticsRequestExecutor;->executeAsync(Lcom/stripe/android/networking/AnalyticsRequest;)V

    .line 199
    iget-object v0, p0, Lcom/stripe/android/StripePaymentController;->workContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/stripe/android/StripePaymentController$startAuthenticateSource$1;

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/stripe/android/StripePaymentController$startAuthenticateSource$1;-><init>(Lcom/stripe/android/StripePaymentController;Lcom/stripe/android/model/Source;Lcom/stripe/android/networking/ApiRequest$Options;Lcom/stripe/android/view/AuthActivityStarter$Host;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final startChallengeFlow$stripe_release(Lcom/stripe/android/model/Stripe3ds2AuthResult$Ares;Lcom/stripe/android/stripe3ds2/transaction/Transaction;Ljava/lang/String;ILcom/stripe/android/PaymentRelayStarter;Lcom/stripe/android/view/AuthActivityStarter$Host;Lcom/stripe/android/model/StripeIntent;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 24
    .param p1    # Lcom/stripe/android/model/Stripe3ds2AuthResult$Ares;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/stripe3ds2/transaction/Transaction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/stripe/android/PaymentRelayStarter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/stripe/android/view/AuthActivityStarter$Host;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/stripe/android/model/StripeIntent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/stripe/android/networking/ApiRequest$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/model/Stripe3ds2AuthResult$Ares;",
            "Lcom/stripe/android/stripe3ds2/transaction/Transaction;",
            "Ljava/lang/String;",
            "I",
            "Lcom/stripe/android/PaymentRelayStarter;",
            "Lcom/stripe/android/view/AuthActivityStarter$Host;",
            "Lcom/stripe/android/model/StripeIntent;",
            "Lcom/stripe/android/networking/ApiRequest$Options;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object v11, p0

    .line 982
    iget-object v12, v11, Lcom/stripe/android/StripePaymentController;->workContext:Lkotlin/coroutines/CoroutineContext;

    new-instance v13, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;

    const/4 v10, 0x0

    move-object v0, v13

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p2

    move-object v4, p1

    move-object/from16 v5, p7

    move-object/from16 v6, p3

    move-object/from16 v7, p8

    move/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v10}, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;-><init>(Lcom/stripe/android/StripePaymentController;Lcom/stripe/android/view/AuthActivityStarter$Host;Lcom/stripe/android/stripe3ds2/transaction/Transaction;Lcom/stripe/android/model/Stripe3ds2AuthResult$Ares;Lcom/stripe/android/model/StripeIntent;Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;ILcom/stripe/android/PaymentRelayStarter;Lkotlin/coroutines/Continuation;)V

    check-cast v13, Lkotlin/jvm/functions/Function2;

    move-object/from16 v0, p9

    invoke-static {v12, v13, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_29

    return-object v0

    :cond_29
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public startConfirm(Lcom/stripe/android/model/ConfirmStripeIntentParams;Lcom/stripe/android/networking/ApiRequest$Options;Lcom/stripe/android/ApiResultCallback;)V
    .registers 12
    .param p1    # Lcom/stripe/android/model/ConfirmStripeIntentParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/networking/ApiRequest$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/ApiResultCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/model/ConfirmStripeIntentParams;",
            "Lcom/stripe/android/networking/ApiRequest$Options;",
            "Lcom/stripe/android/ApiResultCallback<",
            "-",
            "Lcom/stripe/android/model/StripeIntent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "confirmStripeIntentParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestOptions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/stripe/android/StripePaymentController;->workContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/stripe/android/StripePaymentController$startConfirm$1;

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/stripe/android/StripePaymentController$startConfirm$1;-><init>(Lcom/stripe/android/StripePaymentController;Lcom/stripe/android/model/ConfirmStripeIntentParams;Lcom/stripe/android/networking/ApiRequest$Options;Lcom/stripe/android/ApiResultCallback;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public startConfirmAndAuth(Lcom/stripe/android/view/AuthActivityStarter$Host;Lcom/stripe/android/model/ConfirmStripeIntentParams;Lcom/stripe/android/networking/ApiRequest$Options;)V
    .registers 7
    .param p1    # Lcom/stripe/android/view/AuthActivityStarter$Host;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/model/ConfirmStripeIntentParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/networking/ApiRequest$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "confirmStripeIntentParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestOptions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    new-instance v0, Lcom/stripe/android/StripePaymentController$ConfirmStripeIntentCallback;

    .line 99
    move-object v1, p0

    check-cast v1, Lcom/stripe/android/PaymentController;

    .line 100
    sget-object v2, Lcom/stripe/android/StripePaymentController;->Companion:Lcom/stripe/android/StripePaymentController$Companion;

    invoke-virtual {v2, p2}, Lcom/stripe/android/StripePaymentController$Companion;->getRequestCode$stripe_release(Lcom/stripe/android/model/ConfirmStripeIntentParams;)I

    move-result v2

    .line 96
    invoke-direct {v0, p1, p3, v1, v2}, Lcom/stripe/android/StripePaymentController$ConfirmStripeIntentCallback;-><init>(Lcom/stripe/android/view/AuthActivityStarter$Host;Lcom/stripe/android/networking/ApiRequest$Options;Lcom/stripe/android/PaymentController;I)V

    check-cast v0, Lcom/stripe/android/ApiResultCallback;

    .line 93
    invoke-virtual {p0, p2, p3, v0}, Lcom/stripe/android/StripePaymentController;->startConfirm(Lcom/stripe/android/model/ConfirmStripeIntentParams;Lcom/stripe/android/networking/ApiRequest$Options;Lcom/stripe/android/ApiResultCallback;)V

    return-void
.end method

.method final synthetic startFrictionlessFlow(Lcom/stripe/android/PaymentRelayStarter;Lcom/stripe/android/model/StripeIntent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/PaymentRelayStarter;",
            "Lcom/stripe/android/model/StripeIntent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 960
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/stripe/android/StripePaymentController$startFrictionlessFlow$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p1, v2}, Lcom/stripe/android/StripePaymentController$startFrictionlessFlow$2;-><init>(Lcom/stripe/android/StripePaymentController;Lcom/stripe/android/model/StripeIntent;Lcom/stripe/android/PaymentRelayStarter;Lkotlin/coroutines/Continuation;)V

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

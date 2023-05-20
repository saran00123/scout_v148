.class public final Lcom/stripe/android/cards/DefaultCardAccountRangeRepositoryFactory;
.super Ljava/lang/Object;
.source "DefaultCardAccountRangeRepositoryFactory.kt"

# interfaces
.implements Lcom/stripe/android/cards/CardAccountRangeRepository$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/cards/DefaultCardAccountRangeRepositoryFactory$NullCardAccountRangeSource;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u0016B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0002J\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \u000b*\u0004\u0018\u00010\u00030\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/android/cards/DefaultCardAccountRangeRepositoryFactory;",
        "Lcom/stripe/android/cards/CardAccountRangeRepository$Factory;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "analyticsRequestExecutor",
        "Lcom/stripe/android/networking/AnalyticsRequestExecutor;",
        "analyticsRequestFactory",
        "Lcom/stripe/android/networking/AnalyticsRequest$Factory;",
        "(Landroid/content/Context;Lcom/stripe/android/networking/AnalyticsRequestExecutor;Lcom/stripe/android/networking/AnalyticsRequest$Factory;)V",
        "appContext",
        "kotlin.jvm.PlatformType",
        "create",
        "Lcom/stripe/android/cards/CardAccountRangeRepository;",
        "createRemoteCardAccountRangeSource",
        "Lcom/stripe/android/cards/CardAccountRangeSource;",
        "fireAnalyticsEvent",
        "",
        "publishableKey",
        "",
        "event",
        "Lcom/stripe/android/AnalyticsEvent;",
        "NullCardAccountRangeSource",
        "stripe_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final analyticsRequestExecutor:Lcom/stripe/android/networking/AnalyticsRequestExecutor;

.field private final analyticsRequestFactory:Lcom/stripe/android/networking/AnalyticsRequest$Factory;

.field private final appContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/stripe/android/networking/AnalyticsRequestExecutor$Default;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v1, v2, v1}, Lcom/stripe/android/networking/AnalyticsRequestExecutor$Default;-><init>(Lcom/stripe/android/Logger;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/stripe/android/networking/AnalyticsRequestExecutor;

    .line 30
    new-instance v2, Lcom/stripe/android/networking/AnalyticsRequest$Factory;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3, v1}, Lcom/stripe/android/networking/AnalyticsRequest$Factory;-><init>(Lcom/stripe/android/Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 27
    invoke-direct {p0, p1, v0, v2}, Lcom/stripe/android/cards/DefaultCardAccountRangeRepositoryFactory;-><init>(Landroid/content/Context;Lcom/stripe/android/networking/AnalyticsRequestExecutor;Lcom/stripe/android/networking/AnalyticsRequest$Factory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/stripe/android/networking/AnalyticsRequestExecutor;Lcom/stripe/android/networking/AnalyticsRequest$Factory;)V
    .registers 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/networking/AnalyticsRequestExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/networking/AnalyticsRequest$Factory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsRequestExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsRequestFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/stripe/android/cards/DefaultCardAccountRangeRepositoryFactory;->analyticsRequestExecutor:Lcom/stripe/android/networking/AnalyticsRequestExecutor;

    iput-object p3, p0, Lcom/stripe/android/cards/DefaultCardAccountRangeRepositoryFactory;->analyticsRequestFactory:Lcom/stripe/android/networking/AnalyticsRequest$Factory;

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/android/cards/DefaultCardAccountRangeRepositoryFactory;->appContext:Landroid/content/Context;

    return-void
.end method

.method private final createRemoteCardAccountRangeSource()Lcom/stripe/android/cards/CardAccountRangeSource;
    .registers 20

    move-object/from16 v1, p0

    const-string v2, "appContext"

    .line 45
    :try_start_4
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/stripe/android/cards/DefaultCardAccountRangeRepositoryFactory;

    .line 46
    sget-object v3, Lcom/stripe/android/PaymentConfiguration;->Companion:Lcom/stripe/android/PaymentConfiguration$Companion;

    .line 47
    iget-object v0, v0, Lcom/stripe/android/cards/DefaultCardAccountRangeRepositoryFactory;->appContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v3, v0}, Lcom/stripe/android/PaymentConfiguration$Companion;->getInstance(Landroid/content/Context;)Lcom/stripe/android/PaymentConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/android/PaymentConfiguration;->getPublishableKey()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_1c} :catch_1d

    goto :goto_28

    :catch_1d
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 49
    :goto_28
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 52
    sget-object v4, Lcom/stripe/android/AnalyticsEvent;->CardMetadataPublishableKeyAvailable:Lcom/stripe/android/AnalyticsEvent;

    .line 50
    invoke-direct {v1, v3, v4}, Lcom/stripe/android/cards/DefaultCardAccountRangeRepositoryFactory;->fireAnalyticsEvent(Ljava/lang/String;Lcom/stripe/android/AnalyticsEvent;)V

    .line 54
    :cond_36
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_43

    .line 57
    sget-object v3, Lcom/stripe/android/AnalyticsEvent;->CardMetadataPublishableKeyUnavailable:Lcom/stripe/android/AnalyticsEvent;

    const-string v4, "pk_undefined"

    .line 55
    invoke-direct {v1, v4, v3}, Lcom/stripe/android/cards/DefaultCardAccountRangeRepositoryFactory;->fireAnalyticsEvent(Ljava/lang/String;Lcom/stripe/android/AnalyticsEvent;)V

    .line 59
    :cond_43
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_a3

    check-cast v0, Ljava/lang/String;

    .line 61
    new-instance v18, Lcom/stripe/android/cards/RemoteCardAccountRangeSource;

    .line 62
    new-instance v3, Lcom/stripe/android/networking/StripeApiRepository;

    .line 63
    iget-object v5, v1, Lcom/stripe/android/cards/DefaultCardAccountRangeRepositoryFactory;->appContext:Landroid/content/Context;

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x7fc

    const/16 v17, 0x0

    move-object v4, v3

    move-object v6, v0

    .line 62
    invoke-direct/range {v4 .. v17}, Lcom/stripe/android/networking/StripeApiRepository;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/stripe/android/AppInfo;Lcom/stripe/android/Logger;Lcom/stripe/android/networking/ApiRequestExecutor;Lcom/stripe/android/networking/AnalyticsRequestExecutor;Lcom/stripe/android/FingerprintDataRepository;Lcom/stripe/android/networking/AnalyticsDataFactory;Lcom/stripe/android/networking/FingerprintParamsUtils;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v10, v3

    check-cast v10, Lcom/stripe/android/networking/StripeRepository;

    .line 66
    new-instance v11, Lcom/stripe/android/networking/ApiRequest$Options;

    const/4 v6, 0x0

    const/4 v8, 0x6

    move-object v4, v11

    move-object v5, v0

    invoke-direct/range {v4 .. v9}, Lcom/stripe/android/networking/ApiRequest$Options;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 69
    new-instance v3, Lcom/stripe/android/cards/DefaultCardAccountRangeStore;

    iget-object v4, v1, Lcom/stripe/android/cards/DefaultCardAccountRangeRepositoryFactory;->appContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/stripe/android/cards/DefaultCardAccountRangeStore;-><init>(Landroid/content/Context;)V

    move-object v6, v3

    check-cast v6, Lcom/stripe/android/cards/CardAccountRangeStore;

    .line 70
    new-instance v3, Lcom/stripe/android/networking/AnalyticsRequestExecutor$Default;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-direct {v3, v5, v5, v4, v5}, Lcom/stripe/android/networking/AnalyticsRequestExecutor$Default;-><init>(Lcom/stripe/android/Logger;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v7, v3

    check-cast v7, Lcom/stripe/android/networking/AnalyticsRequestExecutor;

    .line 71
    new-instance v8, Lcom/stripe/android/networking/AnalyticsRequest$Factory;

    const/4 v3, 0x1

    invoke-direct {v8, v5, v3, v5}, Lcom/stripe/android/networking/AnalyticsRequest$Factory;-><init>(Lcom/stripe/android/Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 72
    new-instance v9, Lcom/stripe/android/networking/AnalyticsDataFactory;

    iget-object v3, v1, Lcom/stripe/android/cards/DefaultCardAccountRangeRepositoryFactory;->appContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v3, v0}, Lcom/stripe/android/networking/AnalyticsDataFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v3, v18

    move-object v4, v10

    move-object v5, v11

    .line 61
    invoke-direct/range {v3 .. v9}, Lcom/stripe/android/cards/RemoteCardAccountRangeSource;-><init>(Lcom/stripe/android/networking/StripeRepository;Lcom/stripe/android/networking/ApiRequest$Options;Lcom/stripe/android/cards/CardAccountRangeStore;Lcom/stripe/android/networking/AnalyticsRequestExecutor;Lcom/stripe/android/networking/AnalyticsRequest$Factory;Lcom/stripe/android/networking/AnalyticsDataFactory;)V

    check-cast v18, Lcom/stripe/android/cards/CardAccountRangeSource;

    goto :goto_ac

    .line 76
    :cond_a3
    new-instance v0, Lcom/stripe/android/cards/DefaultCardAccountRangeRepositoryFactory$NullCardAccountRangeSource;

    invoke-direct {v0}, Lcom/stripe/android/cards/DefaultCardAccountRangeRepositoryFactory$NullCardAccountRangeSource;-><init>()V

    move-object/from16 v18, v0

    check-cast v18, Lcom/stripe/android/cards/CardAccountRangeSource;

    :goto_ac
    return-object v18
.end method

.method private final fireAnalyticsEvent(Ljava/lang/String;Lcom/stripe/android/AnalyticsEvent;)V
    .registers 8

    .line 85
    iget-object v0, p0, Lcom/stripe/android/cards/DefaultCardAccountRangeRepositoryFactory;->analyticsRequestExecutor:Lcom/stripe/android/networking/AnalyticsRequestExecutor;

    .line 86
    iget-object v1, p0, Lcom/stripe/android/cards/DefaultCardAccountRangeRepositoryFactory;->analyticsRequestFactory:Lcom/stripe/android/networking/AnalyticsRequest$Factory;

    .line 87
    new-instance v2, Lcom/stripe/android/networking/AnalyticsDataFactory;

    .line 88
    iget-object v3, p0, Lcom/stripe/android/cards/DefaultCardAccountRangeRepositoryFactory;->appContext:Landroid/content/Context;

    const-string v4, "appContext"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-direct {v2, v3, p1}, Lcom/stripe/android/networking/AnalyticsDataFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v2, p2}, Lcom/stripe/android/networking/AnalyticsDataFactory;->createParams$stripe_release(Lcom/stripe/android/AnalyticsEvent;)Ljava/util/Map;

    move-result-object p1

    .line 86
    invoke-virtual {v1, p1}, Lcom/stripe/android/networking/AnalyticsRequest$Factory;->create$stripe_release(Ljava/util/Map;)Lcom/stripe/android/networking/AnalyticsRequest;

    move-result-object p1

    .line 85
    invoke-interface {v0, p1}, Lcom/stripe/android/networking/AnalyticsRequestExecutor;->executeAsync(Lcom/stripe/android/networking/AnalyticsRequest;)V

    return-void
.end method


# virtual methods
.method public create()Lcom/stripe/android/cards/CardAccountRangeRepository;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 35
    new-instance v0, Lcom/stripe/android/cards/DefaultCardAccountRangeStore;

    iget-object v1, p0, Lcom/stripe/android/cards/DefaultCardAccountRangeRepositoryFactory;->appContext:Landroid/content/Context;

    const-string v2, "appContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/stripe/android/cards/DefaultCardAccountRangeStore;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v1, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository;

    .line 37
    new-instance v2, Lcom/stripe/android/cards/InMemoryCardAccountRangeSource;

    check-cast v0, Lcom/stripe/android/cards/CardAccountRangeStore;

    invoke-direct {v2, v0}, Lcom/stripe/android/cards/InMemoryCardAccountRangeSource;-><init>(Lcom/stripe/android/cards/CardAccountRangeStore;)V

    check-cast v2, Lcom/stripe/android/cards/CardAccountRangeSource;

    .line 38
    invoke-direct {p0}, Lcom/stripe/android/cards/DefaultCardAccountRangeRepositoryFactory;->createRemoteCardAccountRangeSource()Lcom/stripe/android/cards/CardAccountRangeSource;

    move-result-object v3

    .line 39
    new-instance v4, Lcom/stripe/android/cards/StaticCardAccountRangeSource;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6, v5}, Lcom/stripe/android/cards/StaticCardAccountRangeSource;-><init>(Lcom/stripe/android/cards/StaticCardAccountRanges;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v4, Lcom/stripe/android/cards/CardAccountRangeSource;

    .line 36
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository;-><init>(Lcom/stripe/android/cards/CardAccountRangeSource;Lcom/stripe/android/cards/CardAccountRangeSource;Lcom/stripe/android/cards/CardAccountRangeSource;Lcom/stripe/android/cards/CardAccountRangeStore;)V

    check-cast v1, Lcom/stripe/android/cards/CardAccountRangeRepository;

    return-object v1
.end method

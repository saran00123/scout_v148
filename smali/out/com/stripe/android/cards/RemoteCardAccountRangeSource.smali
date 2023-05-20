.class public final Lcom/stripe/android/cards/RemoteCardAccountRangeSource;
.super Ljava/lang/Object;
.source "RemoteCardAccountRangeSource.kt"

# interfaces
.implements Lcom/stripe/android/cards/CardAccountRangeSource;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRemoteCardAccountRangeSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoteCardAccountRangeSource.kt\ncom/stripe/android/cards/RemoteCardAccountRangeSource\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,64:1\n256#2,2:65\n*E\n*S KotlinDebug\n*F\n+ 1 RemoteCardAccountRangeSource.kt\ncom/stripe/android/cards/RemoteCardAccountRangeSource\n*L\n41#1,2:65\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJ\u001b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001aJ\u0008\u0010\u001b\u001a\u00020\u001cH\u0002R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/stripe/android/cards/RemoteCardAccountRangeSource;",
        "Lcom/stripe/android/cards/CardAccountRangeSource;",
        "stripeRepository",
        "Lcom/stripe/android/networking/StripeRepository;",
        "requestOptions",
        "Lcom/stripe/android/networking/ApiRequest$Options;",
        "cardAccountRangeStore",
        "Lcom/stripe/android/cards/CardAccountRangeStore;",
        "analyticsRequestExecutor",
        "Lcom/stripe/android/networking/AnalyticsRequestExecutor;",
        "analyticsRequestFactory",
        "Lcom/stripe/android/networking/AnalyticsRequest$Factory;",
        "analyticsDataFactory",
        "Lcom/stripe/android/networking/AnalyticsDataFactory;",
        "(Lcom/stripe/android/networking/StripeRepository;Lcom/stripe/android/networking/ApiRequest$Options;Lcom/stripe/android/cards/CardAccountRangeStore;Lcom/stripe/android/networking/AnalyticsRequestExecutor;Lcom/stripe/android/networking/AnalyticsRequest$Factory;Lcom/stripe/android/networking/AnalyticsDataFactory;)V",
        "loading",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
        "getLoading",
        "()Lkotlinx/coroutines/flow/Flow;",
        "mutableLoading",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "getAccountRange",
        "Lcom/stripe/android/model/AccountRange;",
        "cardNumber",
        "Lcom/stripe/android/cards/CardNumber$Unvalidated;",
        "(Lcom/stripe/android/cards/CardNumber$Unvalidated;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onCardMetadataMissingRange",
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


# instance fields
.field private final analyticsDataFactory:Lcom/stripe/android/networking/AnalyticsDataFactory;

.field private final analyticsRequestExecutor:Lcom/stripe/android/networking/AnalyticsRequestExecutor;

.field private final analyticsRequestFactory:Lcom/stripe/android/networking/AnalyticsRequest$Factory;

.field private final cardAccountRangeStore:Lcom/stripe/android/cards/CardAccountRangeStore;

.field private final mutableLoading:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final requestOptions:Lcom/stripe/android/networking/ApiRequest$Options;

.field private final stripeRepository:Lcom/stripe/android/networking/StripeRepository;


# direct methods
.method public constructor <init>(Lcom/stripe/android/networking/StripeRepository;Lcom/stripe/android/networking/ApiRequest$Options;Lcom/stripe/android/cards/CardAccountRangeStore;Lcom/stripe/android/networking/AnalyticsRequestExecutor;Lcom/stripe/android/networking/AnalyticsRequest$Factory;Lcom/stripe/android/networking/AnalyticsDataFactory;)V
    .registers 8
    .param p1    # Lcom/stripe/android/networking/StripeRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/networking/ApiRequest$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/cards/CardAccountRangeStore;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/stripe/android/networking/AnalyticsRequestExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/stripe/android/networking/AnalyticsRequest$Factory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/stripe/android/networking/AnalyticsDataFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "stripeRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestOptions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardAccountRangeStore"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsRequestExecutor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsRequestFactory"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsDataFactory"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/cards/RemoteCardAccountRangeSource;->stripeRepository:Lcom/stripe/android/networking/StripeRepository;

    iput-object p2, p0, Lcom/stripe/android/cards/RemoteCardAccountRangeSource;->requestOptions:Lcom/stripe/android/networking/ApiRequest$Options;

    iput-object p3, p0, Lcom/stripe/android/cards/RemoteCardAccountRangeSource;->cardAccountRangeStore:Lcom/stripe/android/cards/CardAccountRangeStore;

    iput-object p4, p0, Lcom/stripe/android/cards/RemoteCardAccountRangeSource;->analyticsRequestExecutor:Lcom/stripe/android/networking/AnalyticsRequestExecutor;

    iput-object p5, p0, Lcom/stripe/android/cards/RemoteCardAccountRangeSource;->analyticsRequestFactory:Lcom/stripe/android/networking/AnalyticsRequest$Factory;

    iput-object p6, p0, Lcom/stripe/android/cards/RemoteCardAccountRangeSource;->analyticsDataFactory:Lcom/stripe/android/networking/AnalyticsDataFactory;

    const/4 p1, 0x0

    .line 22
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/android/cards/RemoteCardAccountRangeSource;->mutableLoading:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-void
.end method

.method private final onCardMetadataMissingRange()V
    .registers 5

    .line 57
    iget-object v0, p0, Lcom/stripe/android/cards/RemoteCardAccountRangeSource;->analyticsRequestExecutor:Lcom/stripe/android/networking/AnalyticsRequestExecutor;

    .line 58
    iget-object v1, p0, Lcom/stripe/android/cards/RemoteCardAccountRangeSource;->analyticsRequestFactory:Lcom/stripe/android/networking/AnalyticsRequest$Factory;

    .line 59
    iget-object v2, p0, Lcom/stripe/android/cards/RemoteCardAccountRangeSource;->analyticsDataFactory:Lcom/stripe/android/networking/AnalyticsDataFactory;

    sget-object v3, Lcom/stripe/android/AnalyticsEvent;->CardMetadataMissingRange:Lcom/stripe/android/AnalyticsEvent;

    invoke-virtual {v2, v3}, Lcom/stripe/android/networking/AnalyticsDataFactory;->createParams$stripe_release(Lcom/stripe/android/AnalyticsEvent;)Ljava/util/Map;

    move-result-object v2

    .line 58
    invoke-virtual {v1, v2}, Lcom/stripe/android/networking/AnalyticsRequest$Factory;->create$stripe_release(Ljava/util/Map;)Lcom/stripe/android/networking/AnalyticsRequest;

    move-result-object v1

    .line 57
    invoke-interface {v0, v1}, Lcom/stripe/android/networking/AnalyticsRequestExecutor;->executeAsync(Lcom/stripe/android/networking/AnalyticsRequest;)V

    return-void
.end method


# virtual methods
.method public getAccountRange(Lcom/stripe/android/cards/CardNumber$Unvalidated;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9
    .param p1    # Lcom/stripe/android/cards/CardNumber$Unvalidated;
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
            "Lcom/stripe/android/cards/CardNumber$Unvalidated;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/android/model/AccountRange;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, Lcom/stripe/android/cards/RemoteCardAccountRangeSource$getAccountRange$1;

    if-eqz v0, :cond_14

    move-object v0, p2

    check-cast v0, Lcom/stripe/android/cards/RemoteCardAccountRangeSource$getAccountRange$1;

    iget v1, v0, Lcom/stripe/android/cards/RemoteCardAccountRangeSource$getAccountRange$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p2, v0, Lcom/stripe/android/cards/RemoteCardAccountRangeSource$getAccountRange$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/stripe/android/cards/RemoteCardAccountRangeSource$getAccountRange$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Lcom/stripe/android/cards/RemoteCardAccountRangeSource$getAccountRange$1;

    invoke-direct {v0, p0, p2}, Lcom/stripe/android/cards/RemoteCardAccountRangeSource$getAccountRange$1;-><init>(Lcom/stripe/android/cards/RemoteCardAccountRangeSource;Lkotlin/coroutines/Continuation;)V

    :goto_19
    iget-object p2, v0, Lcom/stripe/android/cards/RemoteCardAccountRangeSource$getAccountRange$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 27
    iget v2, v0, Lcom/stripe/android/cards/RemoteCardAccountRangeSource$getAccountRange$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3f

    if-ne v2, v4, :cond_37

    iget-object p1, v0, Lcom/stripe/android/cards/RemoteCardAccountRangeSource$getAccountRange$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/stripe/android/cards/Bin;

    iget-object v1, v0, Lcom/stripe/android/cards/RemoteCardAccountRangeSource$getAccountRange$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/stripe/android/cards/CardNumber$Unvalidated;

    iget-object v0, v0, Lcom/stripe/android/cards/RemoteCardAccountRangeSource$getAccountRange$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/stripe/android/cards/RemoteCardAccountRangeSource;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_68

    .line 30
    :cond_37
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_3f
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 30
    invoke-virtual {p1}, Lcom/stripe/android/cards/CardNumber$Unvalidated;->getBin()Lcom/stripe/android/cards/Bin;

    move-result-object p2

    if-eqz p2, :cond_c7

    .line 31
    iget-object v2, p0, Lcom/stripe/android/cards/RemoteCardAccountRangeSource;->mutableLoading:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 33
    iget-object v2, p0, Lcom/stripe/android/cards/RemoteCardAccountRangeSource;->stripeRepository:Lcom/stripe/android/networking/StripeRepository;

    iget-object v5, p0, Lcom/stripe/android/cards/RemoteCardAccountRangeSource;->requestOptions:Lcom/stripe/android/networking/ApiRequest$Options;

    iput-object p0, v0, Lcom/stripe/android/cards/RemoteCardAccountRangeSource$getAccountRange$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/stripe/android/cards/RemoteCardAccountRangeSource$getAccountRange$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/stripe/android/cards/RemoteCardAccountRangeSource$getAccountRange$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/stripe/android/cards/RemoteCardAccountRangeSource$getAccountRange$1;->label:I

    invoke-interface {v2, p2, v5, v0}, Lcom/stripe/android/networking/StripeRepository;->getCardMetadata(Lcom/stripe/android/cards/Bin;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_64

    return-object v1

    :cond_64
    move-object v1, p1

    move-object p1, p2

    move-object p2, v0

    move-object v0, p0

    :goto_68
    check-cast p2, Lcom/stripe/android/model/CardMetadata;

    if-eqz p2, :cond_71

    invoke-virtual {p2}, Lcom/stripe/android/model/CardMetadata;->getAccountRanges()Ljava/util/List;

    move-result-object p2

    goto :goto_72

    :cond_71
    move-object p2, v3

    :goto_72
    if-eqz p2, :cond_75

    goto :goto_79

    :cond_75
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 34
    :goto_79
    iget-object v2, v0, Lcom/stripe/android/cards/RemoteCardAccountRangeSource;->cardAccountRangeStore:Lcom/stripe/android/cards/CardAccountRangeStore;

    invoke-interface {v2, p1, p2}, Lcom/stripe/android/cards/CardAccountRangeStore;->save(Lcom/stripe/android/cards/Bin;Ljava/util/List;)V

    .line 36
    iget-object p1, v0, Lcom/stripe/android/cards/RemoteCardAccountRangeSource;->mutableLoading:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v2, 0x0

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 39
    move-object p1, p2

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v4

    if-eqz p1, :cond_c7

    .line 40
    check-cast p2, Ljava/lang/Iterable;

    .line 65
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_98
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/stripe/android/model/AccountRange;

    invoke-virtual {v2}, Lcom/stripe/android/model/AccountRange;->component1()Lcom/stripe/android/model/BinRange;

    move-result-object v2

    .line 42
    invoke-virtual {v2, v1}, Lcom/stripe/android/model/BinRange;->matches$stripe_release(Lcom/stripe/android/cards/CardNumber$Unvalidated;)Z

    move-result v2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_98

    goto :goto_b9

    :cond_b8
    move-object p2, v3

    .line 40
    :goto_b9
    check-cast p2, Lcom/stripe/android/model/AccountRange;

    if-nez p2, :cond_c6

    .line 45
    invoke-virtual {v1}, Lcom/stripe/android/cards/CardNumber$Unvalidated;->isValidLuhn()Z

    move-result p1

    if-eqz p1, :cond_c6

    .line 46
    invoke-direct {v0}, Lcom/stripe/android/cards/RemoteCardAccountRangeSource;->onCardMetadataMissingRange()V

    :cond_c6
    move-object v3, p2

    :cond_c7
    return-object v3
.end method

.method public getLoading()Lkotlinx/coroutines/flow/Flow;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/stripe/android/cards/RemoteCardAccountRangeSource;->mutableLoading:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

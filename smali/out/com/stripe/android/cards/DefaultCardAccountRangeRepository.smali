.class public final Lcom/stripe/android/cards/DefaultCardAccountRangeRepository;
.super Ljava/lang/Object;
.source "DefaultCardAccountRangeRepository.kt"

# interfaces
.implements Lcom/stripe/android/cards/CardAccountRangeRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultCardAccountRangeRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultCardAccountRangeRepository.kt\ncom/stripe/android/cards/DefaultCardAccountRangeRepository\n+ 2 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,36:1\n287#2:37\n288#2:40\n37#3,2:38\n106#4:41\n*E\n*S KotlinDebug\n*F\n+ 1 DefaultCardAccountRangeRepository.kt\ncom/stripe/android/cards/DefaultCardAccountRangeRepository\n*L\n25#1:37\n25#1:40\n25#1,2:38\n25#1:41\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u001b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/stripe/android/cards/DefaultCardAccountRangeRepository;",
        "Lcom/stripe/android/cards/CardAccountRangeRepository;",
        "inMemorySource",
        "Lcom/stripe/android/cards/CardAccountRangeSource;",
        "remoteSource",
        "staticSource",
        "store",
        "Lcom/stripe/android/cards/CardAccountRangeStore;",
        "(Lcom/stripe/android/cards/CardAccountRangeSource;Lcom/stripe/android/cards/CardAccountRangeSource;Lcom/stripe/android/cards/CardAccountRangeSource;Lcom/stripe/android/cards/CardAccountRangeStore;)V",
        "loading",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
        "getLoading",
        "()Lkotlinx/coroutines/flow/Flow;",
        "getAccountRange",
        "Lcom/stripe/android/model/AccountRange;",
        "cardNumber",
        "Lcom/stripe/android/cards/CardNumber$Unvalidated;",
        "(Lcom/stripe/android/cards/CardNumber$Unvalidated;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final inMemorySource:Lcom/stripe/android/cards/CardAccountRangeSource;

.field private final loading:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final remoteSource:Lcom/stripe/android/cards/CardAccountRangeSource;

.field private final staticSource:Lcom/stripe/android/cards/CardAccountRangeSource;

.field private final store:Lcom/stripe/android/cards/CardAccountRangeStore;


# direct methods
.method public constructor <init>(Lcom/stripe/android/cards/CardAccountRangeSource;Lcom/stripe/android/cards/CardAccountRangeSource;Lcom/stripe/android/cards/CardAccountRangeSource;Lcom/stripe/android/cards/CardAccountRangeStore;)V
    .registers 6
    .param p1    # Lcom/stripe/android/cards/CardAccountRangeSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/cards/CardAccountRangeSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/cards/CardAccountRangeSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/stripe/android/cards/CardAccountRangeStore;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "inMemorySource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteSource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "staticSource"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "store"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository;->inMemorySource:Lcom/stripe/android/cards/CardAccountRangeSource;

    iput-object p2, p0, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository;->remoteSource:Lcom/stripe/android/cards/CardAccountRangeSource;

    iput-object p3, p0, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository;->staticSource:Lcom/stripe/android/cards/CardAccountRangeSource;

    iput-object p4, p0, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository;->store:Lcom/stripe/android/cards/CardAccountRangeStore;

    const/4 p1, 0x3

    .line 26
    new-array p1, p1, [Lkotlinx/coroutines/flow/Flow;

    .line 27
    iget-object p2, p0, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository;->inMemorySource:Lcom/stripe/android/cards/CardAccountRangeSource;

    invoke-interface {p2}, Lcom/stripe/android/cards/CardAccountRangeSource;->getLoading()Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p1, p3

    .line 28
    iget-object p2, p0, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository;->remoteSource:Lcom/stripe/android/cards/CardAccountRangeSource;

    invoke-interface {p2}, Lcom/stripe/android/cards/CardAccountRangeSource;->getLoading()Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    const/4 p4, 0x1

    aput-object p2, p1, p4

    .line 29
    iget-object p2, p0, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository;->staticSource:Lcom/stripe/android/cards/CardAccountRangeSource;

    invoke-interface {p2}, Lcom/stripe/android/cards/CardAccountRangeSource;->getLoading()Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    const/4 p4, 0x2

    aput-object p2, p1, p4

    .line 26
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 37
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    .line 39
    new-array p2, p3, [Lkotlinx/coroutines/flow/Flow;

    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5d

    .line 37
    check-cast p1, [Lkotlinx/coroutines/flow/Flow;

    .line 41
    new-instance p2, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository$$special$$inlined$combine$1;

    invoke-direct {p2, p1}, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository$$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    check-cast p2, Lkotlinx/coroutines/flow/Flow;

    .line 40
    iput-object p2, p0, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository;->loading:Lkotlinx/coroutines/flow/Flow;

    return-void

    .line 39
    :cond_5d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAccountRange(Lcom/stripe/android/cards/CardNumber$Unvalidated;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11
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

    instance-of v0, p2, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository$getAccountRange$1;

    if-eqz v0, :cond_14

    move-object v0, p2

    check-cast v0, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository$getAccountRange$1;

    iget v1, v0, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository$getAccountRange$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p2, v0, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository$getAccountRange$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository$getAccountRange$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository$getAccountRange$1;

    invoke-direct {v0, p0, p2}, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository$getAccountRange$1;-><init>(Lcom/stripe/android/cards/DefaultCardAccountRangeRepository;Lkotlin/coroutines/Continuation;)V

    :goto_19
    iget-object p2, v0, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository$getAccountRange$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 13
    iget v2, v0, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository$getAccountRange$1;->label:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_61

    if-eq v2, v6, :cond_55

    if-eq v2, v5, :cond_49

    if-eq v2, v4, :cond_3d

    if-ne v2, v3, :cond_35

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_b7

    .line 16
    :cond_35
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_3d
    iget-object p1, v0, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository$getAccountRange$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/stripe/android/cards/CardNumber$Unvalidated;

    iget-object v2, v0, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository$getAccountRange$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_a3

    :cond_49
    iget-object p1, v0, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository$getAccountRange$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/stripe/android/cards/CardNumber$Unvalidated;

    iget-object v2, v0, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository$getAccountRange$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_91

    :cond_55
    iget-object p1, v0, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository$getAccountRange$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/stripe/android/cards/CardNumber$Unvalidated;

    iget-object v2, v0, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository$getAccountRange$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_7a

    :cond_61
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p1}, Lcom/stripe/android/cards/CardNumber$Unvalidated;->getBin()Lcom/stripe/android/cards/Bin;

    move-result-object p2

    if-eqz p2, :cond_ba

    .line 17
    iget-object v2, p0, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository;->store:Lcom/stripe/android/cards/CardAccountRangeStore;

    iput-object p0, v0, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository$getAccountRange$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository$getAccountRange$1;->L$1:Ljava/lang/Object;

    iput v6, v0, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository$getAccountRange$1;->label:I

    invoke-interface {v2, p2, v0}, Lcom/stripe/android/cards/CardAccountRangeStore;->contains(Lcom/stripe/android/cards/Bin;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_79

    return-object v1

    :cond_79
    move-object v2, p0

    :goto_7a
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_94

    .line 18
    iget-object p2, v2, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository;->inMemorySource:Lcom/stripe/android/cards/CardAccountRangeSource;

    iput-object v2, v0, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository$getAccountRange$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository$getAccountRange$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository$getAccountRange$1;->label:I

    invoke-interface {p2, p1, v0}, Lcom/stripe/android/cards/CardAccountRangeSource;->getAccountRange(Lcom/stripe/android/cards/CardNumber$Unvalidated;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_91

    return-object v1

    :cond_91
    :goto_91
    check-cast p2, Lcom/stripe/android/model/AccountRange;

    goto :goto_a5

    .line 20
    :cond_94
    iget-object p2, v2, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository;->remoteSource:Lcom/stripe/android/cards/CardAccountRangeSource;

    iput-object v2, v0, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository$getAccountRange$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository$getAccountRange$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository$getAccountRange$1;->label:I

    invoke-interface {p2, p1, v0}, Lcom/stripe/android/cards/CardAccountRangeSource;->getAccountRange(Lcom/stripe/android/cards/CardNumber$Unvalidated;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_a3

    return-object v1

    .line 13
    :cond_a3
    :goto_a3
    check-cast p2, Lcom/stripe/android/model/AccountRange;

    :goto_a5
    if-eqz p2, :cond_a8

    goto :goto_b9

    .line 21
    :cond_a8
    iget-object p2, v2, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository;->staticSource:Lcom/stripe/android/cards/CardAccountRangeSource;

    iput-object v7, v0, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository$getAccountRange$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository$getAccountRange$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository$getAccountRange$1;->label:I

    invoke-interface {p2, p1, v0}, Lcom/stripe/android/cards/CardAccountRangeSource;->getAccountRange(Lcom/stripe/android/cards/CardNumber$Unvalidated;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_b7

    return-object v1

    :cond_b7
    :goto_b7
    check-cast p2, Lcom/stripe/android/model/AccountRange;

    :goto_b9
    move-object v7, p2

    :cond_ba
    return-object v7
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
    iget-object v0, p0, Lcom/stripe/android/cards/DefaultCardAccountRangeRepository;->loading:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

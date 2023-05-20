.class public final Lcom/stripe/android/cards/InMemoryCardAccountRangeSource;
.super Ljava/lang/Object;
.source "InMemoryCardAccountRangeSource.kt"

# interfaces
.implements Lcom/stripe/android/cards/CardAccountRangeSource;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInMemoryCardAccountRangeSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InMemoryCardAccountRangeSource.kt\ncom/stripe/android/cards/InMemoryCardAccountRangeSource\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,23:1\n256#2,2:24\n*E\n*S KotlinDebug\n*F\n+ 1 InMemoryCardAccountRangeSource.kt\ncom/stripe/android/cards/InMemoryCardAccountRangeSource\n*L\n17#1,2:24\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001b\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000eR\u001a\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/android/cards/InMemoryCardAccountRangeSource;",
        "Lcom/stripe/android/cards/CardAccountRangeSource;",
        "store",
        "Lcom/stripe/android/cards/CardAccountRangeStore;",
        "(Lcom/stripe/android/cards/CardAccountRangeStore;)V",
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

.field private final store:Lcom/stripe/android/cards/CardAccountRangeStore;


# direct methods
.method public constructor <init>(Lcom/stripe/android/cards/CardAccountRangeStore;)V
    .registers 3
    .param p1    # Lcom/stripe/android/cards/CardAccountRangeStore;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "store"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/cards/InMemoryCardAccountRangeSource;->store:Lcom/stripe/android/cards/CardAccountRangeStore;

    const/4 p1, 0x0

    .line 10
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->flowOf(Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/android/cards/InMemoryCardAccountRangeSource;->loading:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method


# virtual methods
.method public getAccountRange(Lcom/stripe/android/cards/CardNumber$Unvalidated;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8
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

    instance-of v0, p2, Lcom/stripe/android/cards/InMemoryCardAccountRangeSource$getAccountRange$1;

    if-eqz v0, :cond_14

    move-object v0, p2

    check-cast v0, Lcom/stripe/android/cards/InMemoryCardAccountRangeSource$getAccountRange$1;

    iget v1, v0, Lcom/stripe/android/cards/InMemoryCardAccountRangeSource$getAccountRange$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p2, v0, Lcom/stripe/android/cards/InMemoryCardAccountRangeSource$getAccountRange$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/stripe/android/cards/InMemoryCardAccountRangeSource$getAccountRange$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Lcom/stripe/android/cards/InMemoryCardAccountRangeSource$getAccountRange$1;

    invoke-direct {v0, p0, p2}, Lcom/stripe/android/cards/InMemoryCardAccountRangeSource$getAccountRange$1;-><init>(Lcom/stripe/android/cards/InMemoryCardAccountRangeSource;Lkotlin/coroutines/Continuation;)V

    :goto_19
    iget-object p2, v0, Lcom/stripe/android/cards/InMemoryCardAccountRangeSource$getAccountRange$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 12
    iget v2, v0, Lcom/stripe/android/cards/InMemoryCardAccountRangeSource$getAccountRange$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_37

    if-ne v2, v4, :cond_2f

    iget-object p1, v0, Lcom/stripe/android/cards/InMemoryCardAccountRangeSource$getAccountRange$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/stripe/android/cards/CardNumber$Unvalidated;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4d

    .line 15
    :cond_2f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_37
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 15
    invoke-virtual {p1}, Lcom/stripe/android/cards/CardNumber$Unvalidated;->getBin()Lcom/stripe/android/cards/Bin;

    move-result-object p2

    if-eqz p2, :cond_77

    .line 16
    iget-object v2, p0, Lcom/stripe/android/cards/InMemoryCardAccountRangeSource;->store:Lcom/stripe/android/cards/CardAccountRangeStore;

    iput-object p1, v0, Lcom/stripe/android/cards/InMemoryCardAccountRangeSource$getAccountRange$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/stripe/android/cards/InMemoryCardAccountRangeSource$getAccountRange$1;->label:I

    invoke-interface {v2, p2, v0}, Lcom/stripe/android/cards/CardAccountRangeStore;->get(Lcom/stripe/android/cards/Bin;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4d

    return-object v1

    .line 12
    :cond_4d
    :goto_4d
    check-cast p2, Ljava/lang/Iterable;

    .line 24
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_53
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/android/model/AccountRange;

    invoke-virtual {v1}, Lcom/stripe/android/model/AccountRange;->component1()Lcom/stripe/android/model/BinRange;

    move-result-object v1

    .line 18
    invoke-virtual {v1, p1}, Lcom/stripe/android/model/BinRange;->matches$stripe_release(Lcom/stripe/android/cards/CardNumber$Unvalidated;)Z

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_53

    goto :goto_74

    :cond_73
    move-object v0, v3

    .line 25
    :goto_74
    move-object v3, v0

    check-cast v3, Lcom/stripe/android/model/AccountRange;

    :cond_77
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

    .line 10
    iget-object v0, p0, Lcom/stripe/android/cards/InMemoryCardAccountRangeSource;->loading:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.class public final Lcom/stripe/android/cards/CardWidgetViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "CardWidgetViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0016\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f2\u0006\u0010\u0011\u001a\u00020\u0012R\u001b\u0010\u0008\u001a\u00020\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/stripe/android/cards/CardWidgetViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "application",
        "Landroid/app/Application;",
        "(Landroid/app/Application;)V",
        "cardAccountRangeRepositoryFactory",
        "Lcom/stripe/android/cards/CardAccountRangeRepository$Factory;",
        "(Landroid/app/Application;Lcom/stripe/android/cards/CardAccountRangeRepository$Factory;)V",
        "cardAccountRangeRepository",
        "Lcom/stripe/android/cards/CardAccountRangeRepository;",
        "getCardAccountRangeRepository",
        "()Lcom/stripe/android/cards/CardAccountRangeRepository;",
        "cardAccountRangeRepository$delegate",
        "Lkotlin/Lazy;",
        "getAccountRange",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/stripe/android/model/AccountRange;",
        "cardNumber",
        "Lcom/stripe/android/cards/CardNumber$Unvalidated;",
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
.field private final cardAccountRangeRepository$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .registers 4
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v0, Lcom/stripe/android/cards/DefaultCardAccountRangeRepositoryFactory;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/stripe/android/cards/DefaultCardAccountRangeRepositoryFactory;-><init>(Landroid/content/Context;)V

    check-cast v0, Lcom/stripe/android/cards/CardAccountRangeRepository$Factory;

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/stripe/android/cards/CardWidgetViewModel;-><init>(Landroid/app/Application;Lcom/stripe/android/cards/CardAccountRangeRepository$Factory;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lcom/stripe/android/cards/CardAccountRangeRepository$Factory;)V
    .registers 4
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/cards/CardAccountRangeRepository$Factory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardAccountRangeRepositoryFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 24
    new-instance p1, Lcom/stripe/android/cards/CardWidgetViewModel$cardAccountRangeRepository$2;

    invoke-direct {p1, p2}, Lcom/stripe/android/cards/CardWidgetViewModel$cardAccountRangeRepository$2;-><init>(Lcom/stripe/android/cards/CardAccountRangeRepository$Factory;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/android/cards/CardWidgetViewModel;->cardAccountRangeRepository$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getCardAccountRangeRepository$p(Lcom/stripe/android/cards/CardWidgetViewModel;)Lcom/stripe/android/cards/CardAccountRangeRepository;
    .registers 1

    .line 12
    invoke-direct {p0}, Lcom/stripe/android/cards/CardWidgetViewModel;->getCardAccountRangeRepository()Lcom/stripe/android/cards/CardAccountRangeRepository;

    move-result-object p0

    return-object p0
.end method

.method private final getCardAccountRangeRepository()Lcom/stripe/android/cards/CardAccountRangeRepository;
    .registers 2

    iget-object v0, p0, Lcom/stripe/android/cards/CardWidgetViewModel;->cardAccountRangeRepository$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/android/cards/CardAccountRangeRepository;

    return-object v0
.end method


# virtual methods
.method public final getAccountRange(Lcom/stripe/android/cards/CardNumber$Unvalidated;)Landroidx/lifecycle/LiveData;
    .registers 10
    .param p1    # Lcom/stripe/android/cards/CardNumber$Unvalidated;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/cards/CardNumber$Unvalidated;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/stripe/android/model/AccountRange;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "cardNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lcom/stripe/android/cards/CardWidgetViewModel$getAccountRange$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/stripe/android/cards/CardWidgetViewModel$getAccountRange$1;-><init>(Lcom/stripe/android/cards/CardWidgetViewModel;Lcom/stripe/android/cards/CardNumber$Unvalidated;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/lifecycle/CoroutineLiveDataKt;->liveData$default(Lkotlin/coroutines/CoroutineContext;JLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

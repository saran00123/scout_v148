.class public abstract Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SheetViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TransitionTargetType:",
        "Ljava/lang/Object;",
        "ViewStateType:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/ViewModel;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSheetViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SheetViewModel.kt\ncom/stripe/android/paymentsheet/viewmodels/SheetViewModel\n+ 2 Transformations.kt\nandroidx/lifecycle/TransformationsKt\n*L\n1#1,56:1\n87#2:57\n87#2:58\n87#2:59\n*E\n*S KotlinDebug\n*F\n+ 1 SheetViewModel.kt\ncom/stripe/android/paymentsheet/viewmodels/SheetViewModel\n*L\n30#1:57\n33#1:58\n36#1:59\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0008 \u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u00020\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020\tJ\u0013\u00101\u001a\u00020/2\u0006\u00102\u001a\u00028\u0000\u00a2\u0006\u0002\u00103J\u000e\u00104\u001a\u00020/2\u0006\u00105\u001a\u00020\u001bJ\u0010\u00106\u001a\u00020/2\u0008\u0010#\u001a\u0004\u0018\u00010\u0019R\u001a\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u00110\u000fX\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\"\u0010\u0015\u001a\u0010\u0012\u000c\u0012\n \u0016*\u0004\u0018\u00010\u00050\u00050\u000fX\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0014R\u0016\u0010\u0018\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u000fX\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0014R \u0010\u001f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u00110\u0008X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u000bR\u001f\u0010!\u001a\u0010\u0012\u000c\u0012\n \u0016*\u0004\u0018\u00010\u00050\u00050\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u000bR\u001c\u0010#\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0008X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u000bR\u0017\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\u000bR\u001a\u0010\'\u001a\u00020\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\r\"\u0004\u0008)\u0010\u0006R\u001a\u0010*\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010\u000bR\u001a\u0010,\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0008X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010\u000b\u00a8\u00067"
    }
    d2 = {
        "Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;",
        "TransitionTargetType",
        "ViewStateType",
        "Landroidx/lifecycle/ViewModel;",
        "isGuestMode",
        "",
        "(Z)V",
        "error",
        "Landroidx/lifecycle/LiveData;",
        "",
        "getError$stripe_release",
        "()Landroidx/lifecycle/LiveData;",
        "isGuestMode$stripe_release",
        "()Z",
        "mutableError",
        "Landroidx/lifecycle/MutableLiveData;",
        "mutablePaymentMethods",
        "",
        "Lcom/stripe/android/model/PaymentMethod;",
        "getMutablePaymentMethods",
        "()Landroidx/lifecycle/MutableLiveData;",
        "mutableProcessing",
        "kotlin.jvm.PlatformType",
        "getMutableProcessing",
        "mutableSelection",
        "Lcom/stripe/android/paymentsheet/model/PaymentSelection;",
        "mutableSheetMode",
        "Lcom/stripe/android/paymentsheet/ui/SheetMode;",
        "mutableTransition",
        "mutableViewState",
        "getMutableViewState",
        "paymentMethods",
        "getPaymentMethods$stripe_release",
        "processing",
        "getProcessing",
        "selection",
        "getSelection$stripe_release",
        "sheetMode",
        "getSheetMode",
        "shouldSavePaymentMethod",
        "getShouldSavePaymentMethod$stripe_release",
        "setShouldSavePaymentMethod$stripe_release",
        "transition",
        "getTransition$stripe_release",
        "viewState",
        "getViewState$stripe_release",
        "onError",
        "",
        "throwable",
        "transitionTo",
        "target",
        "(Ljava/lang/Object;)V",
        "updateMode",
        "mode",
        "updateSelection",
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
.field private final error:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isGuestMode:Z

.field private final mutableError:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final mutablePaymentMethods:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/stripe/android/model/PaymentMethod;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mutableProcessing:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mutableSelection:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/stripe/android/paymentsheet/model/PaymentSelection;",
            ">;"
        }
    .end annotation
.end field

.field private final mutableSheetMode:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/stripe/android/paymentsheet/ui/SheetMode;",
            ">;"
        }
    .end annotation
.end field

.field private final mutableTransition:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "TTransitionTargetType;>;"
        }
    .end annotation
.end field

.field private final mutableViewState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "TViewStateType;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final paymentMethods:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/stripe/android/model/PaymentMethod;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final processing:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final selection:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/stripe/android/paymentsheet/model/PaymentSelection;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sheetMode:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/stripe/android/paymentsheet/ui/SheetMode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private shouldSavePaymentMethod:Z

.field private final transition:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "TTransitionTargetType;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewState:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "TViewStateType;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .registers 4

    .line 16
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-boolean p1, p0, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->isGuestMode:Z

    .line 17
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->mutableError:Landroidx/lifecycle/MutableLiveData;

    .line 18
    iget-object p1, p0, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->mutableError:Landroidx/lifecycle/MutableLiveData;

    check-cast p1, Landroidx/lifecycle/LiveData;

    iput-object p1, p0, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->error:Landroidx/lifecycle/LiveData;

    .line 20
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->mutablePaymentMethods:Landroidx/lifecycle/MutableLiveData;

    .line 21
    iget-object p1, p0, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->mutablePaymentMethods:Landroidx/lifecycle/MutableLiveData;

    check-cast p1, Landroidx/lifecycle/LiveData;

    iput-object p1, p0, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->paymentMethods:Landroidx/lifecycle/LiveData;

    .line 23
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->mutableTransition:Landroidx/lifecycle/MutableLiveData;

    .line 24
    iget-object p1, p0, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->mutableTransition:Landroidx/lifecycle/MutableLiveData;

    check-cast p1, Landroidx/lifecycle/LiveData;

    iput-object p1, p0, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->transition:Landroidx/lifecycle/LiveData;

    .line 26
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->mutableSelection:Landroidx/lifecycle/MutableLiveData;

    .line 27
    iget-object p1, p0, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->mutableSelection:Landroidx/lifecycle/MutableLiveData;

    check-cast p1, Landroidx/lifecycle/LiveData;

    iput-object p1, p0, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->selection:Landroidx/lifecycle/LiveData;

    .line 29
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->mutableSheetMode:Landroidx/lifecycle/MutableLiveData;

    .line 30
    iget-object p1, p0, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->mutableSheetMode:Landroidx/lifecycle/MutableLiveData;

    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 57
    invoke-static {p1}, Landroidx/lifecycle/Transformations;->distinctUntilChanged(Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    const-string v0, "Transformations.distinctUntilChanged(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->sheetMode:Landroidx/lifecycle/LiveData;

    .line 32
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->mutableProcessing:Landroidx/lifecycle/MutableLiveData;

    .line 33
    iget-object p1, p0, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->mutableProcessing:Landroidx/lifecycle/MutableLiveData;

    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 58
    invoke-static {p1}, Landroidx/lifecycle/Transformations;->distinctUntilChanged(Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->processing:Landroidx/lifecycle/LiveData;

    .line 35
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->mutableViewState:Landroidx/lifecycle/MutableLiveData;

    .line 36
    iget-object p1, p0, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->mutableViewState:Landroidx/lifecycle/MutableLiveData;

    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 59
    invoke-static {p1}, Landroidx/lifecycle/Transformations;->distinctUntilChanged(Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->viewState:Landroidx/lifecycle/LiveData;

    return-void
.end method


# virtual methods
.method public final getError$stripe_release()Landroidx/lifecycle/LiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->error:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method protected final getMutablePaymentMethods()Landroidx/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/stripe/android/model/PaymentMethod;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->mutablePaymentMethods:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method protected final getMutableProcessing()Landroidx/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->mutableProcessing:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method protected final getMutableViewState()Landroidx/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "TViewStateType;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->mutableViewState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getPaymentMethods$stripe_release()Landroidx/lifecycle/LiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/stripe/android/model/PaymentMethod;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->paymentMethods:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getProcessing()Landroidx/lifecycle/LiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->processing:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getSelection$stripe_release()Landroidx/lifecycle/LiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/stripe/android/paymentsheet/model/PaymentSelection;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->selection:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getSheetMode()Landroidx/lifecycle/LiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/stripe/android/paymentsheet/ui/SheetMode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->sheetMode:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getShouldSavePaymentMethod$stripe_release()Z
    .registers 2

    .line 38
    iget-boolean v0, p0, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->shouldSavePaymentMethod:Z

    return v0
.end method

.method public final getTransition$stripe_release()Landroidx/lifecycle/LiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "TTransitionTargetType;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->transition:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getViewState$stripe_release()Landroidx/lifecycle/LiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "TViewStateType;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->viewState:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final isGuestMode$stripe_release()Z
    .registers 2

    .line 15
    iget-boolean v0, p0, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->isGuestMode:Z

    return v0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->mutableError:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setShouldSavePaymentMethod$stripe_release(Z)V
    .registers 2

    .line 38
    iput-boolean p1, p0, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->shouldSavePaymentMethod:Z

    return-void
.end method

.method public final transitionTo(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTransitionTargetType;)V"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->mutableTransition:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final updateMode(Lcom/stripe/android/paymentsheet/ui/SheetMode;)V
    .registers 3
    .param p1    # Lcom/stripe/android/paymentsheet/ui/SheetMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->mutableSheetMode:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final updateSelection(Lcom/stripe/android/paymentsheet/model/PaymentSelection;)V
    .registers 3
    .param p1    # Lcom/stripe/android/paymentsheet/model/PaymentSelection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 53
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->mutableSelection:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

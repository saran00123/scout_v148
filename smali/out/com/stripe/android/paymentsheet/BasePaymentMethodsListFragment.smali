.class public abstract Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment;
.super Landroidx/fragment/app/Fragment;
.source "BasePaymentMethodsListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment$PaymentMethodsViewModel;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBasePaymentMethodsListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BasePaymentMethodsListFragment.kt\ncom/stripe/android/paymentsheet/BasePaymentMethodsListFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,63:1\n56#2,3:64\n*E\n*S KotlinDebug\n*F\n+ 1 BasePaymentMethodsListFragment.kt\ncom/stripe/android/paymentsheet/BasePaymentMethodsListFragment\n*L\n20#1,3:64\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008 \u0018\u00002\u00020\u0001:\u0001\u0019B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\u0013H&R\u001b\u0010\u0003\u001a\u00020\u00048DX\u0084\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u0008\u001a\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u000e\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u000fX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "adapter",
        "Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter;",
        "getAdapter",
        "()Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter;",
        "adapter$delegate",
        "Lkotlin/Lazy;",
        "fragmentViewModel",
        "Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment$PaymentMethodsViewModel;",
        "getFragmentViewModel",
        "()Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment$PaymentMethodsViewModel;",
        "fragmentViewModel$delegate",
        "sheetViewModel",
        "Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;",
        "getSheetViewModel",
        "()Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;",
        "onViewCreated",
        "",
        "view",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "transitionToAddPaymentMethod",
        "PaymentMethodsViewModel",
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
.field private final adapter$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fragmentViewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 16
    sget v0, Lcom/stripe/android/R$layout;->fragment_paymentsheet_payment_methods_list:I

    .line 15
    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;-><init>(I)V

    .line 64
    new-instance v0, Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment$$special$$inlined$viewModels$1;

    invoke-direct {v0, p0}, Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment$$special$$inlined$viewModels$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const/4 v1, 0x0

    .line 65
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 66
    const-class v2, Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment$PaymentMethodsViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment$$special$$inlined$viewModels$2;

    invoke-direct {v3, v0}, Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment$$special$$inlined$viewModels$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {p0, v2, v3, v1}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment;->fragmentViewModel$delegate:Lkotlin/Lazy;

    .line 22
    new-instance v0, Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment$adapter$2;

    invoke-direct {v0, p0}, Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment$adapter$2;-><init>(Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment;->adapter$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getFragmentViewModel$p(Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment;)Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment$PaymentMethodsViewModel;
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment;->getFragmentViewModel()Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment$PaymentMethodsViewModel;

    move-result-object p0

    return-object p0
.end method

.method private final getFragmentViewModel()Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment$PaymentMethodsViewModel;
    .registers 2

    iget-object v0, p0, Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment;->fragmentViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment$PaymentMethodsViewModel;

    return-object v0
.end method


# virtual methods
.method protected final getAdapter()Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment;->adapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter;

    return-object v0
.end method

.method public abstract getSheetViewModel()Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel<",
            "**>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 7
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment;->getSheetViewModel()Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;

    move-result-object p2

    invoke-direct {p0}, Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment;->getFragmentViewModel()Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment$PaymentMethodsViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment$PaymentMethodsViewModel;->getSelectedPaymentMethod$stripe_release()Lcom/stripe/android/paymentsheet/model/PaymentSelection;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->updateSelection(Lcom/stripe/android/paymentsheet/model/PaymentSelection;)V

    .line 44
    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment;->getSheetViewModel()Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;

    move-result-object p2

    sget-object v0, Lcom/stripe/android/paymentsheet/ui/SheetMode;->Wrapped:Lcom/stripe/android/paymentsheet/ui/SheetMode;

    invoke-virtual {p2, v0}, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->updateMode(Lcom/stripe/android/paymentsheet/ui/SheetMode;)V

    .line 46
    invoke-static {p1}, Lcom/stripe/android/databinding/FragmentPaymentsheetPaymentMethodsListBinding;->bind(Landroid/view/View;)Lcom/stripe/android/databinding/FragmentPaymentsheetPaymentMethodsListBinding;

    move-result-object p1

    const-string p2, "FragmentPaymentsheetPaym\u2026odsListBinding.bind(view)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object p2, p1, Lcom/stripe/android/databinding/FragmentPaymentsheetPaymentMethodsListBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "binding.recycler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 48
    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const/4 v3, 0x0

    .line 47
    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 52
    iget-object p1, p1, Lcom/stripe/android/databinding/FragmentPaymentsheetPaymentMethodsListBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment;->getAdapter()Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 54
    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment;->getSheetViewModel()Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->getPaymentMethods$stripe_release()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment$onViewCreated$1;

    invoke-direct {v0, p0}, Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment$onViewCreated$1;-><init>(Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment;)V

    check-cast v0, Landroidx/lifecycle/Observer;

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public abstract transitionToAddPaymentMethod()V
.end method

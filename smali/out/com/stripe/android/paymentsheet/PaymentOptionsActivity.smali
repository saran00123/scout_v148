.class public final Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;
.super Lcom/stripe/android/paymentsheet/ui/BasePaymentSheetActivity;
.source "PaymentOptionsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/android/paymentsheet/ui/BasePaymentSheetActivity<",
        "Lcom/stripe/android/paymentsheet/PaymentOptionResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaymentOptionsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentOptionsActivity.kt\ncom/stripe/android/paymentsheet/PaymentOptionsActivity\n+ 2 FragmentManager.kt\nandroidx/fragment/app/FragmentManagerKt\n*L\n1#1,242:1\n27#2,11:243\n*E\n*S KotlinDebug\n*F\n+ 1 PaymentOptionsActivity.kt\ncom/stripe/android/paymentsheet/PaymentOptionsActivity\n*L\n173#1,11:243\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 ?2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001?B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010-\u001a\u00020.H\u0016J\u0010\u0010/\u001a\u00020.2\u0006\u00100\u001a\u000201H\u0002J\u0012\u00102\u001a\u00020.2\u0008\u00103\u001a\u0004\u0018\u000104H\u0014J\u0018\u00105\u001a\u00020.2\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u000204H\u0002J\u0008\u00109\u001a\u00020.H\u0016J\u0010\u0010:\u001a\u00020.2\u0006\u0010;\u001a\u00020\u0002H\u0016J\u0010\u0010<\u001a\u00020.2\u0006\u0010=\u001a\u00020>H\u0002R/\u0010\u0004\u001a\u0010\u0012\u000c\u0012\n \u0007*\u0004\u0018\u00010\u00060\u00060\u00058@X\u0081\u0084\u0002\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u0012\u0004\u0008\u0008\u0010\u0003\u001a\u0004\u0008\t\u0010\nR\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u000c\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0012\u001a\u00020\u00138CX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u001d\u0010\u0016\u001a\u0004\u0018\u00010\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u000c\u001a\u0004\u0008\u0018\u0010\u0019R!\u0010\u001b\u001a\u00020\u001c8@X\u0081\u0084\u0002\u00a2\u0006\u0012\n\u0004\u0008 \u0010\u000c\u0012\u0004\u0008\u001d\u0010\u0003\u001a\u0004\u0008\u001e\u0010\u001fR\u001b\u0010!\u001a\u00020\"8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008%\u0010\u000c\u001a\u0004\u0008#\u0010$R$\u0010&\u001a\u00020\'8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008(\u0010\u0003\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,\u00a8\u0006@"
    }
    d2 = {
        "Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;",
        "Lcom/stripe/android/paymentsheet/ui/BasePaymentSheetActivity;",
        "Lcom/stripe/android/paymentsheet/PaymentOptionResult;",
        "()V",
        "bottomSheetBehavior",
        "Lcom/google/android/material/bottomsheet/BottomSheetBehavior;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "kotlin.jvm.PlatformType",
        "getBottomSheetBehavior$stripe_release$annotations",
        "getBottomSheetBehavior$stripe_release",
        "()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;",
        "bottomSheetBehavior$delegate",
        "Lkotlin/Lazy;",
        "bottomSheetController",
        "Lcom/stripe/android/paymentsheet/BottomSheetController;",
        "getBottomSheetController",
        "()Lcom/stripe/android/paymentsheet/BottomSheetController;",
        "bottomSheetController$delegate",
        "fragmentContainerId",
        "",
        "getFragmentContainerId",
        "()I",
        "starterArgs",
        "Lcom/stripe/android/paymentsheet/PaymentOptionsActivityStarter$Args;",
        "getStarterArgs",
        "()Lcom/stripe/android/paymentsheet/PaymentOptionsActivityStarter$Args;",
        "starterArgs$delegate",
        "viewBinding",
        "Lcom/stripe/android/databinding/StripeActivityPaymentOptionsBinding;",
        "getViewBinding$stripe_release$annotations",
        "getViewBinding$stripe_release",
        "()Lcom/stripe/android/databinding/StripeActivityPaymentOptionsBinding;",
        "viewBinding$delegate",
        "viewModel",
        "Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel;",
        "getViewModel",
        "()Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel;",
        "viewModel$delegate",
        "viewModelFactory",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
        "getViewModelFactory$stripe_release$annotations",
        "getViewModelFactory$stripe_release",
        "()Landroidx/lifecycle/ViewModelProvider$Factory;",
        "setViewModelFactory$stripe_release",
        "(Landroidx/lifecycle/ViewModelProvider$Factory;)V",
        "hideSheet",
        "",
        "onActionCompleted",
        "paymentSelection",
        "Lcom/stripe/android/paymentsheet/model/PaymentSelection;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onTransitionTarget",
        "transitionTarget",
        "Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;",
        "fragmentArgs",
        "onUserCancel",
        "setActivityResult",
        "result",
        "setupAddButton",
        "addButton",
        "Lcom/stripe/android/paymentsheet/AddButton;",
        "Companion",
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
.field public static final Companion:Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EXTRA_STARTER_ARGS:Ljava/lang/String; = "com.stripe.android.paymentsheet.extra_starter_args"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final bottomSheetBehavior$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final bottomSheetController$delegate:Lkotlin/Lazy;

.field private final starterArgs$delegate:Lkotlin/Lazy;

.field private final viewBinding$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewModel$delegate:Lkotlin/Lazy;

.field private viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->Companion:Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 22
    invoke-direct {p0}, Lcom/stripe/android/paymentsheet/ui/BasePaymentSheetActivity;-><init>()V

    .line 24
    new-instance v0, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$viewBinding$2;

    invoke-direct {v0, p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$viewBinding$2;-><init>(Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->viewBinding$delegate:Lkotlin/Lazy;

    .line 30
    new-instance v0, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$Factory;

    .line 31
    new-instance v1, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$viewModelFactory$1;

    invoke-direct {v1, p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$viewModelFactory$1;-><init>(Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 32
    new-instance v2, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$viewModelFactory$2;

    invoke-direct {v2, p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$viewModelFactory$2;-><init>(Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 30
    invoke-direct {v0, v1, v2}, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$Factory;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;

    iput-object v0, p0, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 35
    new-instance v0, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$viewModel$2;

    invoke-direct {v0, p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$viewModel$2;-><init>(Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->viewModel$delegate:Lkotlin/Lazy;

    .line 42
    new-instance v0, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$starterArgs$2;

    invoke-direct {v0, p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$starterArgs$2;-><init>(Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->starterArgs$delegate:Lkotlin/Lazy;

    .line 47
    new-instance v0, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$bottomSheetBehavior$2;

    invoke-direct {v0, p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$bottomSheetBehavior$2;-><init>(Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->bottomSheetBehavior$delegate:Lkotlin/Lazy;

    .line 51
    new-instance v0, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$bottomSheetController$2;

    invoke-direct {v0, p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$bottomSheetController$2;-><init>(Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->bottomSheetController$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$animateOut(Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;Lcom/stripe/android/paymentsheet/PaymentOptionResult;)V
    .registers 2

    .line 22
    invoke-virtual {p0, p1}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->animateOut(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getBottomSheetController$p(Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;)Lcom/stripe/android/paymentsheet/BottomSheetController;
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->getBottomSheetController()Lcom/stripe/android/paymentsheet/BottomSheetController;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getStarterArgs$p(Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;)Lcom/stripe/android/paymentsheet/PaymentOptionsActivityStarter$Args;
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->getStarterArgs()Lcom/stripe/android/paymentsheet/PaymentOptionsActivityStarter$Args;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getViewModel$p(Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;)Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel;
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->getViewModel()Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onActionCompleted(Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;Lcom/stripe/android/paymentsheet/model/PaymentSelection;)V
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->onActionCompleted(Lcom/stripe/android/paymentsheet/model/PaymentSelection;)V

    return-void
.end method

.method public static final synthetic access$onTransitionTarget(Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;Landroid/os/Bundle;)V
    .registers 3

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->onTransitionTarget(Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic getBottomSheetBehavior$stripe_release$annotations()V
    .registers 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private final getBottomSheetController()Lcom/stripe/android/paymentsheet/BottomSheetController;
    .registers 2

    iget-object v0, p0, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->bottomSheetController$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/android/paymentsheet/BottomSheetController;

    return-object v0
.end method

.method private final getFragmentContainerId()I
    .registers 3
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    .line 61
    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/StripeActivityPaymentOptionsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/stripe/android/databinding/StripeActivityPaymentOptionsBinding;->fragmentContainer:Landroidx/fragment/app/FragmentContainerView;

    const-string v1, "viewBinding.fragmentContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentContainerView;->getId()I

    move-result v0

    return v0
.end method

.method private final getStarterArgs()Lcom/stripe/android/paymentsheet/PaymentOptionsActivityStarter$Args;
    .registers 2

    iget-object v0, p0, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->starterArgs$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/android/paymentsheet/PaymentOptionsActivityStarter$Args;

    return-object v0
.end method

.method public static synthetic getViewBinding$stripe_release$annotations()V
    .registers 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private final getViewModel()Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel;
    .registers 2

    iget-object v0, p0, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel;

    return-object v0
.end method

.method public static synthetic getViewModelFactory$stripe_release$annotations()V
    .registers 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private final onActionCompleted(Lcom/stripe/android/paymentsheet/model/PaymentSelection;)V
    .registers 3

    .line 214
    new-instance v0, Lcom/stripe/android/paymentsheet/PaymentOptionResult$Succeeded;

    invoke-direct {v0, p1}, Lcom/stripe/android/paymentsheet/PaymentOptionResult$Succeeded;-><init>(Lcom/stripe/android/paymentsheet/model/PaymentSelection;)V

    .line 213
    invoke-virtual {p0, v0}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->animateOut(Ljava/lang/Object;)V

    return-void
.end method

.method private final onTransitionTarget(Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;Landroid/os/Bundle;)V
    .registers 8

    .line 173
    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "supportFragmentManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "beginTransaction()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    sget-object v1, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p1}, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4c

    const/4 v2, 0x2

    if-eq v1, v2, :cond_38

    const/4 v2, 0x3

    if-eq v1, v2, :cond_24

    goto :goto_7e

    .line 201
    :cond_24
    invoke-direct {p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->getFragmentContainerId()I

    move-result v1

    .line 202
    new-instance v2, Lcom/stripe/android/paymentsheet/PaymentOptionsAddCardFragment;

    invoke-direct {v2}, Lcom/stripe/android/paymentsheet/PaymentOptionsAddCardFragment;-><init>()V

    .line 203
    invoke-virtual {v2, p2}, Lcom/stripe/android/paymentsheet/PaymentOptionsAddCardFragment;->setArguments(Landroid/os/Bundle;)V

    .line 204
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 202
    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 200
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_7e

    .line 193
    :cond_38
    invoke-direct {p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->getFragmentContainerId()I

    move-result v1

    .line 194
    new-instance v2, Lcom/stripe/android/paymentsheet/PaymentOptionsListFragment;

    invoke-direct {v2}, Lcom/stripe/android/paymentsheet/PaymentOptionsListFragment;-><init>()V

    .line 195
    invoke-virtual {v2, p2}, Lcom/stripe/android/paymentsheet/PaymentOptionsListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 196
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 194
    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 192
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_7e

    .line 177
    :cond_4c
    sget-object v1, Lcom/stripe/android/paymentsheet/ui/AnimationConstants;->INSTANCE:Lcom/stripe/android/paymentsheet/ui/AnimationConstants;

    invoke-virtual {v1}, Lcom/stripe/android/paymentsheet/ui/AnimationConstants;->getFADE_IN()I

    move-result v1

    .line 178
    sget-object v2, Lcom/stripe/android/paymentsheet/ui/AnimationConstants;->INSTANCE:Lcom/stripe/android/paymentsheet/ui/AnimationConstants;

    invoke-virtual {v2}, Lcom/stripe/android/paymentsheet/ui/AnimationConstants;->getFADE_OUT()I

    move-result v2

    .line 179
    sget-object v3, Lcom/stripe/android/paymentsheet/ui/AnimationConstants;->INSTANCE:Lcom/stripe/android/paymentsheet/ui/AnimationConstants;

    invoke-virtual {v3}, Lcom/stripe/android/paymentsheet/ui/AnimationConstants;->getFADE_IN()I

    move-result v3

    .line 180
    sget-object v4, Lcom/stripe/android/paymentsheet/ui/AnimationConstants;->INSTANCE:Lcom/stripe/android/paymentsheet/ui/AnimationConstants;

    invoke-virtual {v4}, Lcom/stripe/android/paymentsheet/ui/AnimationConstants;->getFADE_OUT()I

    move-result v4

    .line 176
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    const/4 v1, 0x0

    .line 182
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 185
    invoke-direct {p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->getFragmentContainerId()I

    move-result v1

    .line 186
    new-instance v2, Lcom/stripe/android/paymentsheet/PaymentOptionsAddCardFragment;

    invoke-direct {v2}, Lcom/stripe/android/paymentsheet/PaymentOptionsAddCardFragment;-><init>()V

    .line 187
    invoke-virtual {v2, p2}, Lcom/stripe/android/paymentsheet/PaymentOptionsAddCardFragment;->setArguments(Landroid/os/Bundle;)V

    .line 188
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 186
    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 184
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 251
    :goto_7e
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 209
    invoke-direct {p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->getViewModel()Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel;

    move-result-object p2

    invoke-virtual {p1}, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;->getSheetMode()Lcom/stripe/android/paymentsheet/ui/SheetMode;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel;->updateMode(Lcom/stripe/android/paymentsheet/ui/SheetMode;)V

    return-void
.end method

.method private final setupAddButton(Lcom/stripe/android/paymentsheet/AddButton;)V
    .registers 5

    .line 144
    invoke-virtual {p1}, Lcom/stripe/android/paymentsheet/AddButton;->getCompletedAnimation$stripe_release()Landroidx/lifecycle/LiveData;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$setupAddButton$1;

    invoke-direct {v2, p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$setupAddButton$1;-><init>(Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;)V

    check-cast v2, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 148
    invoke-direct {p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->getViewModel()Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel;->getViewState$stripe_release()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$setupAddButton$2;

    invoke-direct {v2, p1}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$setupAddButton$2;-><init>(Lcom/stripe/android/paymentsheet/AddButton;)V

    check-cast v2, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 154
    invoke-direct {p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->getViewModel()Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel;->getSelection$stripe_release()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$setupAddButton$3;

    invoke-direct {v2, p1}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$setupAddButton$3;-><init>(Lcom/stripe/android/paymentsheet/AddButton;)V

    check-cast v2, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 158
    new-instance v0, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$setupAddButton$4;

    invoke-direct {v0, p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$setupAddButton$4;-><init>(Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/stripe/android/paymentsheet/AddButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    invoke-direct {p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->getViewModel()Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel;->getProcessing()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$setupAddButton$5;

    invoke-direct {v2, p0, p1}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$setupAddButton$5;-><init>(Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;Lcom/stripe/android/paymentsheet/AddButton;)V

    check-cast v2, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public final getBottomSheetBehavior$stripe_release()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Landroidx/constraintlayout/widget/ConstraintLayout;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->bottomSheetBehavior$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    return-object v0
.end method

.method public final getViewBinding$stripe_release()Lcom/stripe/android/databinding/StripeActivityPaymentOptionsBinding;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->viewBinding$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/android/databinding/StripeActivityPaymentOptionsBinding;

    return-object v0
.end method

.method public final getViewModelFactory$stripe_release()Landroidx/lifecycle/ViewModelProvider$Factory;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    return-object v0
.end method

.method public hideSheet()V
    .registers 2

    .line 235
    invoke-direct {p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->getBottomSheetController()Lcom/stripe/android/paymentsheet/BottomSheetController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/android/paymentsheet/BottomSheetController;->hide()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 64
    invoke-super {p0, p1}, Lcom/stripe/android/paymentsheet/ui/BasePaymentSheetActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-direct {p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->getStarterArgs()Lcom/stripe/android/paymentsheet/PaymentOptionsActivityStarter$Args;

    move-result-object p1

    if-nez p1, :cond_d

    .line 68
    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->finish()V

    return-void

    :cond_d
    const/4 v0, 0x1

    .line 71
    new-array v0, v0, [Lkotlin/Pair;

    const/4 v1, 0x0

    const-string v2, "com.stripe.android.paymentsheet.extra_starter_args"

    invoke-static {v2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/StripeActivityPaymentOptionsBinding;

    move-result-object v1

    const-string v2, "viewBinding"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/stripe/android/databinding/StripeActivityPaymentOptionsBinding;->getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->setContentView(Landroid/view/View;)V

    .line 76
    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/StripeActivityPaymentOptionsBinding;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/stripe/android/databinding/StripeActivityPaymentOptionsBinding;->getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v1

    new-instance v2, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$onCreate$1;

    invoke-direct {v2, p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$onCreate$1;-><init>(Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-direct {p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->getViewModel()Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel;->getError$stripe_release()Landroidx/lifecycle/LiveData;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    new-instance v3, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$onCreate$2;

    invoke-direct {v3, p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$onCreate$2;-><init>(Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;)V

    check-cast v3, Landroidx/lifecycle/Observer;

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 84
    invoke-direct {p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->getViewModel()Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel;->getSheetMode()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v3, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$onCreate$3;

    invoke-direct {v3, p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$onCreate$3;-><init>(Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;)V

    check-cast v3, Landroidx/lifecycle/Observer;

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 104
    invoke-direct {p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->getBottomSheetController()Lcom/stripe/android/paymentsheet/BottomSheetController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/android/paymentsheet/BottomSheetController;->getShouldFinish$stripe_release()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v3, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$onCreate$4;

    invoke-direct {v3, p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$onCreate$4;-><init>(Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;)V

    check-cast v3, Landroidx/lifecycle/Observer;

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 109
    invoke-direct {p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->getBottomSheetController()Lcom/stripe/android/paymentsheet/BottomSheetController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/android/paymentsheet/BottomSheetController;->setup()V

    .line 111
    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/StripeActivityPaymentOptionsBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/stripe/android/databinding/StripeActivityPaymentOptionsBinding;->addButton:Lcom/stripe/android/paymentsheet/AddButton;

    const-string v3, "viewBinding.addButton"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->setupAddButton(Lcom/stripe/android/paymentsheet/AddButton;)V

    .line 113
    invoke-direct {p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->getViewModel()Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel;->getTransition$stripe_release()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v3, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$onCreate$5;

    invoke-direct {v3, p0, v0}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$onCreate$5;-><init>(Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;Landroid/os/Bundle;)V

    check-cast v3, Landroidx/lifecycle/Observer;

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 119
    invoke-direct {p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->getViewModel()Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel;

    move-result-object v0

    .line 120
    invoke-virtual {p1}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivityStarter$Args;->getPaymentMethods()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b5

    .line 121
    sget-object p1, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;->AddPaymentMethodSheet:Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;

    goto :goto_b7

    .line 123
    :cond_b5
    sget-object p1, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;->SelectSavedPaymentMethod:Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;

    .line 119
    :goto_b7
    invoke-virtual {v0, p1}, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel;->transitionTo(Ljava/lang/Object;)V

    .line 127
    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/StripeActivityPaymentOptionsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/stripe/android/databinding/StripeActivityPaymentOptionsBinding;->toolbar:Lcom/stripe/android/paymentsheet/ui/Toolbar;

    invoke-virtual {p1}, Lcom/stripe/android/paymentsheet/ui/Toolbar;->getAction$stripe_release()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$onCreate$6;

    invoke-direct {v0, p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$onCreate$6;-><init>(Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;)V

    check-cast v0, Landroidx/lifecycle/Observer;

    invoke-virtual {p1, v2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onUserCancel()V
    .registers 3

    .line 228
    new-instance v0, Lcom/stripe/android/paymentsheet/PaymentOptionResult$Cancelled;

    .line 229
    invoke-direct {p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->getViewModel()Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel;->getError$stripe_release()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 228
    invoke-direct {v0, v1}, Lcom/stripe/android/paymentsheet/PaymentOptionResult$Cancelled;-><init>(Ljava/lang/Throwable;)V

    .line 227
    invoke-virtual {p0, v0}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->animateOut(Ljava/lang/Object;)V

    return-void
.end method

.method public setActivityResult(Lcom/stripe/android/paymentsheet/PaymentOptionResult;)V
    .registers 4
    .param p1    # Lcom/stripe/android/paymentsheet/PaymentOptionResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p1}, Lcom/stripe/android/paymentsheet/PaymentOptionResult;->getResultCode()I

    move-result v0

    .line 221
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 222
    invoke-virtual {p1}, Lcom/stripe/android/paymentsheet/PaymentOptionResult;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 219
    invoke-virtual {p0, v0, p1}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic setActivityResult(Ljava/lang/Object;)V
    .registers 2

    .line 22
    check-cast p1, Lcom/stripe/android/paymentsheet/PaymentOptionResult;

    invoke-virtual {p0, p1}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->setActivityResult(Lcom/stripe/android/paymentsheet/PaymentOptionResult;)V

    return-void
.end method

.method public final setViewModelFactory$stripe_release(Landroidx/lifecycle/ViewModelProvider$Factory;)V
    .registers 3
    .param p1    # Landroidx/lifecycle/ViewModelProvider$Factory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    return-void
.end method

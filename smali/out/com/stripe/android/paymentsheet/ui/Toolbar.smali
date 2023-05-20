.class public final Lcom/stripe/android/paymentsheet/ui/Toolbar;
.super Landroid/widget/FrameLayout;
.source "Toolbar.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/paymentsheet/ui/Toolbar$Action;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nToolbar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Toolbar.kt\ncom/stripe/android/paymentsheet/ui/Toolbar\n+ 2 Transformations.kt\nandroidx/lifecycle/TransformationsKt\n*L\n1#1,53:1\n87#2:54\n*E\n*S KotlinDebug\n*F\n+ 1 Toolbar.kt\ncom/stripe/android/paymentsheet/ui/Toolbar\n*L\n19#1:54\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u001fB%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0006\u0010\u0019\u001a\u00020\u001aJ\u0006\u0010\u001b\u001a\u00020\u001aJ\u000e\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001eR\"\u0010\t\u001a\u0010\u0012\u000c\u0012\n \u000c*\u0004\u0018\u00010\u000b0\u000b0\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u0010X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u0010X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0012R\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/stripe/android/paymentsheet/ui/Toolbar;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "action",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/stripe/android/paymentsheet/ui/Toolbar$Action;",
        "kotlin.jvm.PlatformType",
        "getAction$stripe_release",
        "()Landroidx/lifecycle/LiveData;",
        "backButton",
        "Landroid/widget/ImageView;",
        "getBackButton$stripe_release",
        "()Landroid/widget/ImageView;",
        "closeButton",
        "getCloseButton$stripe_release",
        "mutableAction",
        "Landroidx/lifecycle/MutableLiveData;",
        "viewBinding",
        "Lcom/stripe/android/databinding/StripePaymentSheetToolbarBinding;",
        "showBack",
        "",
        "showClose",
        "updateProcessing",
        "isProcessing",
        "",
        "Action",
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
.field private final action:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/stripe/android/paymentsheet/ui/Toolbar$Action;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final backButton:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final closeButton:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mutableAction:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/stripe/android/paymentsheet/ui/Toolbar$Action;",
            ">;"
        }
    .end annotation
.end field

.field private final viewBinding:Lcom/stripe/android/databinding/StripePaymentSheetToolbarBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/stripe/android/paymentsheet/ui/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/stripe/android/paymentsheet/ui/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p2, p0, Lcom/stripe/android/paymentsheet/ui/Toolbar;->mutableAction:Landroidx/lifecycle/MutableLiveData;

    .line 19
    iget-object p2, p0, Lcom/stripe/android/paymentsheet/ui/Toolbar;->mutableAction:Landroidx/lifecycle/MutableLiveData;

    check-cast p2, Landroidx/lifecycle/LiveData;

    .line 54
    invoke-static {p2}, Landroidx/lifecycle/Transformations;->distinctUntilChanged(Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;

    move-result-object p2

    const-string p3, "Transformations.distinctUntilChanged(this)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/stripe/android/paymentsheet/ui/Toolbar;->action:Landroidx/lifecycle/LiveData;

    .line 22
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 23
    move-object p2, p0

    check-cast p2, Landroid/view/ViewGroup;

    .line 21
    invoke-static {p1, p2}, Lcom/stripe/android/databinding/StripePaymentSheetToolbarBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/stripe/android/databinding/StripePaymentSheetToolbarBinding;

    move-result-object p1

    const-string p2, "StripePaymentSheetToolba\u2026text),\n        this\n    )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stripe/android/paymentsheet/ui/Toolbar;->viewBinding:Lcom/stripe/android/databinding/StripePaymentSheetToolbarBinding;

    .line 25
    iget-object p1, p0, Lcom/stripe/android/paymentsheet/ui/Toolbar;->viewBinding:Lcom/stripe/android/databinding/StripePaymentSheetToolbarBinding;

    iget-object p1, p1, Lcom/stripe/android/databinding/StripePaymentSheetToolbarBinding;->close:Landroid/widget/ImageView;

    const-string p2, "viewBinding.close"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stripe/android/paymentsheet/ui/Toolbar;->closeButton:Landroid/widget/ImageView;

    .line 26
    iget-object p1, p0, Lcom/stripe/android/paymentsheet/ui/Toolbar;->viewBinding:Lcom/stripe/android/databinding/StripePaymentSheetToolbarBinding;

    iget-object p1, p1, Lcom/stripe/android/databinding/StripePaymentSheetToolbarBinding;->back:Landroid/widget/ImageView;

    const-string p2, "viewBinding.back"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stripe/android/paymentsheet/ui/Toolbar;->backButton:Landroid/widget/ImageView;

    .line 29
    iget-object p1, p0, Lcom/stripe/android/paymentsheet/ui/Toolbar;->closeButton:Landroid/widget/ImageView;

    new-instance p2, Lcom/stripe/android/paymentsheet/ui/Toolbar$1;

    invoke-direct {p2, p0}, Lcom/stripe/android/paymentsheet/ui/Toolbar$1;-><init>(Lcom/stripe/android/paymentsheet/ui/Toolbar;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object p1, p0, Lcom/stripe/android/paymentsheet/ui/Toolbar;->backButton:Landroid/widget/ImageView;

    new-instance p2, Lcom/stripe/android/paymentsheet/ui/Toolbar$2;

    invoke-direct {p2, p0}, Lcom/stripe/android/paymentsheet/ui/Toolbar$2;-><init>(Lcom/stripe/android/paymentsheet/ui/Toolbar;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_7

    const/4 p2, 0x0

    .line 14
    check-cast p2, Landroid/util/AttributeSet;

    :cond_7
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_c

    const/4 p3, 0x0

    .line 15
    :cond_c
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/android/paymentsheet/ui/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getMutableAction$p(Lcom/stripe/android/paymentsheet/ui/Toolbar;)Landroidx/lifecycle/MutableLiveData;
    .registers 1

    .line 12
    iget-object p0, p0, Lcom/stripe/android/paymentsheet/ui/Toolbar;->mutableAction:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method


# virtual methods
.method public final getAction$stripe_release()Landroidx/lifecycle/LiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/stripe/android/paymentsheet/ui/Toolbar$Action;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/ui/Toolbar;->action:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getBackButton$stripe_release()Landroid/widget/ImageView;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/ui/Toolbar;->backButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getCloseButton$stripe_release()Landroid/widget/ImageView;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/ui/Toolbar;->closeButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final showBack()V
    .registers 3

    .line 39
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/ui/Toolbar;->closeButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/ui/Toolbar;->backButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final showClose()V
    .registers 3

    .line 34
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/ui/Toolbar;->closeButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 35
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/ui/Toolbar;->backButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final updateProcessing(Z)V
    .registers 4

    .line 44
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/ui/Toolbar;->closeButton:Landroid/widget/ImageView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 45
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/ui/Toolbar;->backButton:Landroid/widget/ImageView;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

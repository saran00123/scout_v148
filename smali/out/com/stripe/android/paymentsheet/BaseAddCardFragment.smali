.class public abstract Lcom/stripe/android/paymentsheet/BaseAddCardFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseAddCardFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008 \u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\u0010\u0010\r\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u000fH\u0002R\u001a\u0010\u0003\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/android/paymentsheet/BaseAddCardFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
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
        "setupSaveCardCheckbox",
        "saveCardCheckbox",
        "Landroid/widget/CheckBox;",
        "stripe_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    sget v0, Lcom/stripe/android/R$layout;->fragment_paymentsheet_add_card:I

    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;-><init>(I)V

    return-void
.end method

.method private final setupSaveCardCheckbox(Landroid/widget/CheckBox;)V
    .registers 6

    .line 75
    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/BaseAddCardFragment;->getSheetViewModel()Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->isGuestMode$stripe_release()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    const/16 v0, 0x8

    goto :goto_12

    :cond_f
    if-nez v0, :cond_34

    move v0, v1

    :goto_12
    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 80
    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/BaseAddCardFragment;->getSheetViewModel()Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isShown()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_26

    move v1, v2

    :cond_26
    invoke-virtual {v0, v1}, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->setShouldSavePaymentMethod$stripe_release(Z)V

    .line 81
    new-instance v0, Lcom/stripe/android/paymentsheet/BaseAddCardFragment$setupSaveCardCheckbox$1;

    invoke-direct {v0, p0}, Lcom/stripe/android/paymentsheet/BaseAddCardFragment$setupSaveCardCheckbox$1;-><init>(Lcom/stripe/android/paymentsheet/BaseAddCardFragment;)V

    check-cast v0, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    .line 77
    :cond_34
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method


# virtual methods
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
    .registers 6
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

    .line 23
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/BaseAddCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-nez p2, :cond_f

    return-void

    .line 29
    :cond_f
    invoke-static {p1}, Lcom/stripe/android/databinding/FragmentPaymentsheetAddCardBinding;->bind(Landroid/view/View;)Lcom/stripe/android/databinding/FragmentPaymentsheetAddCardBinding;

    move-result-object p1

    const-string p2, "FragmentPaymentsheetAddCardBinding.bind(view)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object p2, p1, Lcom/stripe/android/databinding/FragmentPaymentsheetAddCardBinding;->cardMultilineWidget:Lcom/stripe/android/view/CardMultilineWidget;

    const-string v0, "binding.cardMultilineWidget"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object p1, p1, Lcom/stripe/android/databinding/FragmentPaymentsheetAddCardBinding;->saveCardCheckbox:Lcom/google/android/material/checkbox/MaterialCheckBox;

    const-string v0, "binding.saveCardCheckbox"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v0, Lcom/stripe/android/paymentsheet/BaseAddCardFragment$onViewCreated$1;

    invoke-direct {v0, p0, p2}, Lcom/stripe/android/paymentsheet/BaseAddCardFragment$onViewCreated$1;-><init>(Lcom/stripe/android/paymentsheet/BaseAddCardFragment;Lcom/stripe/android/view/CardMultilineWidget;)V

    check-cast v0, Lcom/stripe/android/view/CardValidCallback;

    invoke-virtual {p2, v0}, Lcom/stripe/android/view/CardMultilineWidget;->setCardValidCallback(Lcom/stripe/android/view/CardValidCallback;)V

    .line 44
    new-instance v0, Lcom/stripe/android/paymentsheet/BaseAddCardFragment$onViewCreated$2;

    invoke-direct {v0, p0}, Lcom/stripe/android/paymentsheet/BaseAddCardFragment$onViewCreated$2;-><init>(Lcom/stripe/android/paymentsheet/BaseAddCardFragment;)V

    check-cast v0, Lcom/stripe/android/view/CardInputListener;

    invoke-virtual {p2, v0}, Lcom/stripe/android/view/CardMultilineWidget;->setCardInputListener(Lcom/stripe/android/view/CardInputListener;)V

    .line 59
    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/BaseAddCardFragment;->getSheetViewModel()Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->getSheetMode()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/android/paymentsheet/ui/SheetMode;

    sget-object v1, Lcom/stripe/android/paymentsheet/ui/SheetMode;->Full:Lcom/stripe/android/paymentsheet/ui/SheetMode;

    if-ne v0, v1, :cond_6b

    .line 60
    invoke-virtual {p2}, Lcom/stripe/android/view/CardMultilineWidget;->getCardNumberEditText$stripe_release()Lcom/stripe/android/view/CardNumberEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/android/view/CardNumberEditText;->requestFocus()Z

    .line 61
    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/BaseAddCardFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_6b

    .line 62
    invoke-virtual {p2}, Lcom/stripe/android/view/CardMultilineWidget;->getCardNumberEditText$stripe_release()Lcom/stripe/android/view/CardNumberEditText;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 66
    :cond_6b
    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/BaseAddCardFragment;->getSheetViewModel()Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->getProcessing()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/BaseAddCardFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/stripe/android/paymentsheet/BaseAddCardFragment$onViewCreated$4;

    invoke-direct {v2, p1, p2}, Lcom/stripe/android/paymentsheet/BaseAddCardFragment$onViewCreated$4;-><init>(Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/stripe/android/view/CardMultilineWidget;)V

    check-cast v2, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 71
    check-cast p1, Landroid/widget/CheckBox;

    invoke-direct {p0, p1}, Lcom/stripe/android/paymentsheet/BaseAddCardFragment;->setupSaveCardCheckbox(Landroid/widget/CheckBox;)V

    return-void
.end method

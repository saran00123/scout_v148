.class public final Lcom/stripe/android/view/BecsDebitWidget;
.super Landroid/widget/FrameLayout;
.source "BecsDebitWidget.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/view/BecsDebitWidget$ValidParamsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBecsDebitWidget.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BecsDebitWidget.kt\ncom/stripe/android/view/BecsDebitWidget\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,236:1\n1819#2:237\n1820#2:252\n1819#2:253\n1820#2:268\n58#3:238\n71#3,10:239\n93#3,3:249\n58#3:254\n71#3,10:255\n93#3,3:265\n1#4:269\n*E\n*S KotlinDebug\n*F\n+ 1 BecsDebitWidget.kt\ncom/stripe/android/view/BecsDebitWidget\n*L\n76#1:237\n76#1:252\n150#1:253\n150#1:268\n77#1:238\n77#1,10:239\n77#1,3:249\n151#1:254\n151#1,10:255\n151#1,3:265\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0001!B/\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J\u0008\u0010 \u001a\u00020\u001fH\u0002R\u0014\u0010\u000b\u001a\u00020\u000c8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\rR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001b\u0010\u0018\u001a\u00020\u00198@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\""
    }
    d2 = {
        "Lcom/stripe/android/view/BecsDebitWidget;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "companyName",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;)V",
        "isInputValid",
        "",
        "()Z",
        "params",
        "Lcom/stripe/android/model/PaymentMethodCreateParams;",
        "getParams",
        "()Lcom/stripe/android/model/PaymentMethodCreateParams;",
        "validParamsCallback",
        "Lcom/stripe/android/view/BecsDebitWidget$ValidParamsCallback;",
        "getValidParamsCallback",
        "()Lcom/stripe/android/view/BecsDebitWidget$ValidParamsCallback;",
        "setValidParamsCallback",
        "(Lcom/stripe/android/view/BecsDebitWidget$ValidParamsCallback;)V",
        "viewBinding",
        "Lcom/stripe/android/databinding/BecsDebitWidgetBinding;",
        "getViewBinding$stripe_release",
        "()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;",
        "viewBinding$delegate",
        "Lkotlin/Lazy;",
        "applyAttributes",
        "",
        "verifyCompanyName",
        "ValidParamsCallback",
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
.field private validParamsCallback:Lcom/stripe/android/view/BecsDebitWidget$ValidParamsCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewBinding$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/stripe/android/view/BecsDebitWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
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

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/stripe/android/view/BecsDebitWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11
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

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/stripe/android/view/BecsDebitWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;)V
    .registers 11
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "companyName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance p3, Lcom/stripe/android/view/BecsDebitWidget$viewBinding$2;

    invoke-direct {p3, p0, p1}, Lcom/stripe/android/view/BecsDebitWidget$viewBinding$2;-><init>(Lcom/stripe/android/view/BecsDebitWidget;Landroid/content/Context;)V

    check-cast p3, Lkotlin/jvm/functions/Function0;

    invoke-static {p3}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/android/view/BecsDebitWidget;->viewBinding$delegate:Lkotlin/Lazy;

    .line 46
    new-instance p1, Lcom/stripe/android/view/BecsDebitWidget$validParamsCallback$1;

    invoke-direct {p1}, Lcom/stripe/android/view/BecsDebitWidget$validParamsCallback$1;-><init>()V

    check-cast p1, Lcom/stripe/android/view/BecsDebitWidget$ValidParamsCallback;

    iput-object p1, p0, Lcom/stripe/android/view/BecsDebitWidget;->validParamsCallback:Lcom/stripe/android/view/BecsDebitWidget$ValidParamsCallback;

    .line 66
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p1, p3, :cond_47

    .line 67
    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitWidget;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->nameEditText:Lcom/stripe/android/view/StripeEditText;

    const-string p3, "name"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/stripe/android/view/StripeEditText;->setAutofillHints([Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitWidget;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->emailEditText:Lcom/stripe/android/view/EmailEditText;

    const-string p3, "emailAddress"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/stripe/android/view/EmailEditText;->setAutofillHints([Ljava/lang/String;)V

    :cond_47
    const/4 p1, 0x4

    .line 71
    new-array p1, p1, [Lcom/stripe/android/view/StripeEditText;

    .line 72
    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitWidget;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-result-object p3

    iget-object p3, p3, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->nameEditText:Lcom/stripe/android/view/StripeEditText;

    const/4 v0, 0x0

    aput-object p3, p1, v0

    .line 73
    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitWidget;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-result-object p3

    iget-object p3, p3, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->emailEditText:Lcom/stripe/android/view/EmailEditText;

    check-cast p3, Lcom/stripe/android/view/StripeEditText;

    const/4 v1, 0x1

    aput-object p3, p1, v1

    .line 74
    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitWidget;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-result-object p3

    iget-object p3, p3, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->bsbEditText:Lcom/stripe/android/view/BecsDebitBsbEditText;

    check-cast p3, Lcom/stripe/android/view/StripeEditText;

    const/4 v2, 0x2

    aput-object p3, p1, v2

    const/4 p3, 0x3

    .line 75
    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitWidget;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->accountNumberEditText:Lcom/stripe/android/view/BecsDebitAccountNumberEditText;

    check-cast v3, Lcom/stripe/android/view/StripeEditText;

    aput-object v3, p1, p3

    .line 71
    invoke-static {p1}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 237
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const-string v3, "field"

    if-eqz p3, :cond_9c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/stripe/android/view/StripeEditText;

    .line 77
    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/widget/TextView;

    .line 248
    new-instance v3, Lcom/stripe/android/view/BecsDebitWidget$$special$$inlined$forEach$lambda$1;

    invoke-direct {v3, p0}, Lcom/stripe/android/view/BecsDebitWidget$$special$$inlined$forEach$lambda$1;-><init>(Lcom/stripe/android/view/BecsDebitWidget;)V

    .line 249
    check-cast v3, Landroid/text/TextWatcher;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_7e

    .line 82
    :cond_9c
    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitWidget;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->bsbEditText:Lcom/stripe/android/view/BecsDebitBsbEditText;

    new-instance p3, Lcom/stripe/android/view/BecsDebitWidget$2;

    invoke-direct {p3, p0}, Lcom/stripe/android/view/BecsDebitWidget$2;-><init>(Lcom/stripe/android/view/BecsDebitWidget;)V

    check-cast p3, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, p3}, Lcom/stripe/android/view/BecsDebitBsbEditText;->setOnBankChangedCallback(Lkotlin/jvm/functions/Function1;)V

    .line 116
    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitWidget;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->bsbEditText:Lcom/stripe/android/view/BecsDebitBsbEditText;

    new-instance p3, Lcom/stripe/android/view/BecsDebitWidget$3;

    invoke-direct {p3, p0}, Lcom/stripe/android/view/BecsDebitWidget$3;-><init>(Lcom/stripe/android/view/BecsDebitWidget;)V

    check-cast p3, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, p3}, Lcom/stripe/android/view/BecsDebitBsbEditText;->setOnCompletedCallback(Lkotlin/jvm/functions/Function0;)V

    .line 121
    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitWidget;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->emailEditText:Lcom/stripe/android/view/EmailEditText;

    .line 122
    new-instance p3, Lcom/stripe/android/view/BackUpFieldDeleteListener;

    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitWidget;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->nameEditText:Lcom/stripe/android/view/StripeEditText;

    const-string v5, "viewBinding.nameEditText"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p3, v4}, Lcom/stripe/android/view/BackUpFieldDeleteListener;-><init>(Lcom/stripe/android/view/StripeEditText;)V

    check-cast p3, Lcom/stripe/android/view/StripeEditText$DeleteEmptyListener;

    .line 121
    invoke-virtual {p1, p3}, Lcom/stripe/android/view/EmailEditText;->setDeleteEmptyListener(Lcom/stripe/android/view/StripeEditText$DeleteEmptyListener;)V

    .line 124
    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitWidget;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->bsbEditText:Lcom/stripe/android/view/BecsDebitBsbEditText;

    .line 125
    new-instance p3, Lcom/stripe/android/view/BackUpFieldDeleteListener;

    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitWidget;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->emailEditText:Lcom/stripe/android/view/EmailEditText;

    const-string v5, "viewBinding.emailEditText"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/stripe/android/view/StripeEditText;

    invoke-direct {p3, v4}, Lcom/stripe/android/view/BackUpFieldDeleteListener;-><init>(Lcom/stripe/android/view/StripeEditText;)V

    check-cast p3, Lcom/stripe/android/view/StripeEditText$DeleteEmptyListener;

    .line 124
    invoke-virtual {p1, p3}, Lcom/stripe/android/view/BecsDebitBsbEditText;->setDeleteEmptyListener(Lcom/stripe/android/view/StripeEditText$DeleteEmptyListener;)V

    .line 127
    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitWidget;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->accountNumberEditText:Lcom/stripe/android/view/BecsDebitAccountNumberEditText;

    .line 128
    new-instance p3, Lcom/stripe/android/view/BackUpFieldDeleteListener;

    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitWidget;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->bsbEditText:Lcom/stripe/android/view/BecsDebitBsbEditText;

    const-string v5, "viewBinding.bsbEditText"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/stripe/android/view/StripeEditText;

    invoke-direct {p3, v4}, Lcom/stripe/android/view/BackUpFieldDeleteListener;-><init>(Lcom/stripe/android/view/StripeEditText;)V

    check-cast p3, Lcom/stripe/android/view/StripeEditText$DeleteEmptyListener;

    .line 127
    invoke-virtual {p1, p3}, Lcom/stripe/android/view/BecsDebitAccountNumberEditText;->setDeleteEmptyListener(Lcom/stripe/android/view/StripeEditText$DeleteEmptyListener;)V

    .line 131
    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitWidget;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->nameEditText:Lcom/stripe/android/view/StripeEditText;

    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitWidget;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 132
    sget v4, Lcom/stripe/android/R$string;->becs_widget_name_required:I

    .line 131
    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/stripe/android/view/StripeEditText;->setErrorMessage$stripe_release(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitWidget;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->nameEditText:Lcom/stripe/android/view/StripeEditText;

    .line 135
    new-instance p3, Lcom/stripe/android/view/ErrorListener;

    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitWidget;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->nameTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v5, "viewBinding.nameTextInputLayout"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p3, v4}, Lcom/stripe/android/view/ErrorListener;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    check-cast p3, Lcom/stripe/android/view/StripeEditText$ErrorMessageListener;

    .line 134
    invoke-virtual {p1, p3}, Lcom/stripe/android/view/StripeEditText;->setErrorMessageListener(Lcom/stripe/android/view/StripeEditText$ErrorMessageListener;)V

    .line 138
    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitWidget;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->emailEditText:Lcom/stripe/android/view/EmailEditText;

    .line 139
    new-instance p3, Lcom/stripe/android/view/ErrorListener;

    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitWidget;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->emailTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v5, "viewBinding.emailTextInputLayout"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p3, v4}, Lcom/stripe/android/view/ErrorListener;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    check-cast p3, Lcom/stripe/android/view/StripeEditText$ErrorMessageListener;

    .line 138
    invoke-virtual {p1, p3}, Lcom/stripe/android/view/EmailEditText;->setErrorMessageListener(Lcom/stripe/android/view/StripeEditText$ErrorMessageListener;)V

    .line 142
    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitWidget;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->bsbEditText:Lcom/stripe/android/view/BecsDebitBsbEditText;

    .line 143
    new-instance p3, Lcom/stripe/android/view/ErrorListener;

    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitWidget;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->bsbTextInputLayout:Lcom/stripe/android/view/IconTextInputLayout;

    const-string v5, "viewBinding.bsbTextInputLayout"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {p3, v4}, Lcom/stripe/android/view/ErrorListener;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    check-cast p3, Lcom/stripe/android/view/StripeEditText$ErrorMessageListener;

    .line 142
    invoke-virtual {p1, p3}, Lcom/stripe/android/view/BecsDebitBsbEditText;->setErrorMessageListener(Lcom/stripe/android/view/StripeEditText$ErrorMessageListener;)V

    .line 146
    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitWidget;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->accountNumberEditText:Lcom/stripe/android/view/BecsDebitAccountNumberEditText;

    .line 147
    new-instance p3, Lcom/stripe/android/view/ErrorListener;

    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitWidget;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->accountNumberTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v5, "viewBinding.accountNumberTextInputLayout"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p3, v4}, Lcom/stripe/android/view/ErrorListener;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    check-cast p3, Lcom/stripe/android/view/StripeEditText$ErrorMessageListener;

    .line 146
    invoke-virtual {p1, p3}, Lcom/stripe/android/view/BecsDebitAccountNumberEditText;->setErrorMessageListener(Lcom/stripe/android/view/StripeEditText$ErrorMessageListener;)V

    .line 150
    new-array p1, v2, [Lcom/stripe/android/view/StripeEditText;

    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitWidget;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-result-object p3

    iget-object p3, p3, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->nameEditText:Lcom/stripe/android/view/StripeEditText;

    aput-object p3, p1, v0

    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitWidget;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-result-object p3

    iget-object p3, p3, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->emailEditText:Lcom/stripe/android/view/EmailEditText;

    check-cast p3, Lcom/stripe/android/view/StripeEditText;

    aput-object p3, p1, v1

    invoke-static {p1}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 253
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1b0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1cd

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/stripe/android/view/StripeEditText;

    .line 151
    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p3

    check-cast v0, Landroid/widget/TextView;

    .line 264
    new-instance v2, Lcom/stripe/android/view/BecsDebitWidget$$special$$inlined$doAfterTextChanged$2;

    invoke-direct {v2, p3}, Lcom/stripe/android/view/BecsDebitWidget$$special$$inlined$doAfterTextChanged$2;-><init>(Lcom/stripe/android/view/StripeEditText;)V

    .line 265
    check-cast v2, Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_1b0

    .line 156
    :cond_1cd
    move-object p1, p4

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_1d8

    goto :goto_1d9

    :cond_1d8
    const/4 p4, 0x0

    :goto_1d9
    if-eqz p4, :cond_1e4

    .line 157
    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitWidget;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->mandateAcceptanceTextView:Lcom/stripe/android/view/BecsDebitMandateAcceptanceTextView;

    invoke-virtual {p1, p4}, Lcom/stripe/android/view/BecsDebitMandateAcceptanceTextView;->setCompanyName(Ljava/lang/String;)V

    :cond_1e4
    if-eqz p2, :cond_1e9

    .line 159
    invoke-direct {p0, p2}, Lcom/stripe/android/view/BecsDebitWidget;->applyAttributes(Landroid/util/AttributeSet;)V

    .line 161
    :cond_1e9
    invoke-direct {p0}, Lcom/stripe/android/view/BecsDebitWidget;->verifyCompanyName()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_7

    const/4 p2, 0x0

    .line 31
    check-cast p2, Landroid/util/AttributeSet;

    :cond_7
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_c

    const/4 p3, 0x0

    :cond_c
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_12

    const-string p4, ""

    .line 33
    :cond_12
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/android/view/BecsDebitWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$isInputValid$p(Lcom/stripe/android/view/BecsDebitWidget;)Z
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/stripe/android/view/BecsDebitWidget;->isInputValid()Z

    move-result p0

    return p0
.end method

.method private final applyAttributes(Landroid/util/AttributeSet;)V
    .registers 5

    .line 173
    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 175
    sget-object v1, Lcom/stripe/android/R$styleable;->BecsDebitWidget:[I

    const/4 v2, 0x0

    .line 173
    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string v0, "context.theme.obtainStyl\u2026,\n            0\n        )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    :try_start_19
    sget v0, Lcom/stripe/android/R$styleable;->BecsDebitWidget_companyName:I

    .line 181
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 185
    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitWidget;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->mandateAcceptanceTextView:Lcom/stripe/android/view/BecsDebitMandateAcceptanceTextView;

    invoke-virtual {v1, v0}, Lcom/stripe/android/view/BecsDebitMandateAcceptanceTextView;->setCompanyName(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_2e

    .line 188
    :cond_2a
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_2e
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private final isInputValid()Z
    .registers 7

    .line 54
    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitWidget;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->nameEditText:Lcom/stripe/android/view/StripeEditText;

    invoke-virtual {v0}, Lcom/stripe/android/view/StripeEditText;->getFieldText$stripe_release()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitWidget;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->emailEditText:Lcom/stripe/android/view/EmailEditText;

    invoke-virtual {v1}, Lcom/stripe/android/view/EmailEditText;->getEmail()Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitWidget;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->bsbEditText:Lcom/stripe/android/view/BecsDebitBsbEditText;

    invoke-virtual {v2}, Lcom/stripe/android/view/BecsDebitBsbEditText;->getBsb$stripe_release()Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitWidget;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->accountNumberEditText:Lcom/stripe/android/view/BecsDebitAccountNumberEditText;

    invoke-virtual {v3}, Lcom/stripe/android/view/BecsDebitAccountNumberEditText;->getAccountNumber()Ljava/lang/String;

    move-result-object v3

    .line 60
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_63

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_3f

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    goto :goto_3f

    :cond_3d
    move v0, v5

    goto :goto_40

    :cond_3f
    :goto_3f
    move v0, v4

    :goto_40
    if-nez v0, :cond_63

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_4f

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4d

    goto :goto_4f

    :cond_4d
    move v0, v5

    goto :goto_50

    :cond_4f
    :goto_4f
    move v0, v4

    :goto_50
    if-nez v0, :cond_63

    .line 61
    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_5f

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5d

    goto :goto_5f

    :cond_5d
    move v0, v5

    goto :goto_60

    :cond_5f
    :goto_5f
    move v0, v4

    :goto_60
    if-nez v0, :cond_63

    goto :goto_64

    :cond_63
    move v4, v5

    :goto_64
    return v4
.end method

.method private final verifyCompanyName()V
    .registers 3

    .line 165
    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitWidget;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->mandateAcceptanceTextView:Lcom/stripe/android/view/BecsDebitMandateAcceptanceTextView;

    invoke-virtual {v0}, Lcom/stripe/android/view/BecsDebitMandateAcceptanceTextView;->isValid$stripe_release()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A company name is required to render a BecsDebitWidget."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method


# virtual methods
.method public final getParams()Lcom/stripe/android/model/PaymentMethodCreateParams;
    .registers 15
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 198
    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitWidget;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->nameEditText:Lcom/stripe/android/view/StripeEditText;

    invoke-virtual {v0}, Lcom/stripe/android/view/StripeEditText;->getFieldText$stripe_release()Ljava/lang/String;

    move-result-object v4

    .line 199
    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitWidget;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->emailEditText:Lcom/stripe/android/view/EmailEditText;

    invoke-virtual {v0}, Lcom/stripe/android/view/EmailEditText;->getEmail()Ljava/lang/String;

    move-result-object v3

    .line 200
    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitWidget;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->bsbEditText:Lcom/stripe/android/view/BecsDebitBsbEditText;

    invoke-virtual {v0}, Lcom/stripe/android/view/BecsDebitBsbEditText;->getBsb$stripe_release()Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitWidget;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->accountNumberEditText:Lcom/stripe/android/view/BecsDebitAccountNumberEditText;

    invoke-virtual {v1}, Lcom/stripe/android/view/BecsDebitAccountNumberEditText;->getAccountNumber()Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitWidget;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->nameEditText:Lcom/stripe/android/view/StripeEditText;

    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-virtual {v2, v6}, Lcom/stripe/android/view/StripeEditText;->setShouldShowError(Z)V

    .line 204
    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitWidget;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->emailEditText:Lcom/stripe/android/view/EmailEditText;

    move-object v6, v3

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_4e

    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4c

    goto :goto_4e

    :cond_4c
    move v9, v7

    goto :goto_4f

    :cond_4e
    :goto_4e
    move v9, v8

    :goto_4f
    invoke-virtual {v2, v9}, Lcom/stripe/android/view/EmailEditText;->setShouldShowError(Z)V

    .line 205
    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitWidget;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->bsbEditText:Lcom/stripe/android/view/BecsDebitBsbEditText;

    move-object v9, v0

    check-cast v9, Ljava/lang/CharSequence;

    if-eqz v9, :cond_66

    invoke-static {v9}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_64

    goto :goto_66

    :cond_64
    move v10, v7

    goto :goto_67

    :cond_66
    :goto_66
    move v10, v8

    :goto_67
    invoke-virtual {v2, v10}, Lcom/stripe/android/view/BecsDebitBsbEditText;->setShouldShowError(Z)V

    .line 206
    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitWidget;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->accountNumberEditText:Lcom/stripe/android/view/BecsDebitAccountNumberEditText;

    move-object v10, v1

    check-cast v10, Ljava/lang/CharSequence;

    if-eqz v10, :cond_7e

    invoke-static {v10}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7c

    goto :goto_7e

    :cond_7c
    move v11, v7

    goto :goto_7f

    :cond_7e
    :goto_7e
    move v11, v8

    :goto_7f
    invoke-virtual {v2, v11}, Lcom/stripe/android/view/BecsDebitAccountNumberEditText;->setShouldShowError(Z)V

    .line 208
    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ca

    if-eqz v6, :cond_93

    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_91

    goto :goto_93

    :cond_91
    move v2, v7

    goto :goto_94

    :cond_93
    :goto_93
    move v2, v8

    :goto_94
    if-nez v2, :cond_ca

    if-eqz v9, :cond_a1

    invoke-static {v9}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9f

    goto :goto_a1

    :cond_9f
    move v2, v7

    goto :goto_a2

    :cond_a1
    :goto_a1
    move v2, v8

    :goto_a2
    if-nez v2, :cond_ca

    if-eqz v10, :cond_ac

    .line 209
    invoke-static {v10}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_ad

    :cond_ac
    move v7, v8

    :cond_ad
    if-eqz v7, :cond_b0

    goto :goto_ca

    .line 214
    :cond_b0
    sget-object v8, Lcom/stripe/android/model/PaymentMethodCreateParams;->Companion:Lcom/stripe/android/model/PaymentMethodCreateParams$Companion;

    .line 215
    new-instance v9, Lcom/stripe/android/model/PaymentMethodCreateParams$AuBecsDebit;

    invoke-direct {v9, v0, v1}, Lcom/stripe/android/model/PaymentMethodCreateParams$AuBecsDebit;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    new-instance v10, Lcom/stripe/android/model/PaymentMethod$BillingDetails;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x9

    const/4 v7, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v7}, Lcom/stripe/android/model/PaymentMethod$BillingDetails;-><init>(Lcom/stripe/android/model/Address;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    .line 214
    invoke-static/range {v8 .. v13}, Lcom/stripe/android/model/PaymentMethodCreateParams$Companion;->create$default(Lcom/stripe/android/model/PaymentMethodCreateParams$Companion;Lcom/stripe/android/model/PaymentMethodCreateParams$AuBecsDebit;Lcom/stripe/android/model/PaymentMethod$BillingDetails;Ljava/util/Map;ILjava/lang/Object;)Lcom/stripe/android/model/PaymentMethodCreateParams;

    move-result-object v0

    return-object v0

    :cond_ca
    :goto_ca
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getValidParamsCallback()Lcom/stripe/android/view/BecsDebitWidget$ValidParamsCallback;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/stripe/android/view/BecsDebitWidget;->validParamsCallback:Lcom/stripe/android/view/BecsDebitWidget$ValidParamsCallback;

    return-object v0
.end method

.method public final getViewBinding$stripe_release()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/view/BecsDebitWidget;->viewBinding$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    return-object v0
.end method

.method public final setValidParamsCallback(Lcom/stripe/android/view/BecsDebitWidget$ValidParamsCallback;)V
    .registers 3
    .param p1    # Lcom/stripe/android/view/BecsDebitWidget$ValidParamsCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lcom/stripe/android/view/BecsDebitWidget;->validParamsCallback:Lcom/stripe/android/view/BecsDebitWidget$ValidParamsCallback;

    return-void
.end method

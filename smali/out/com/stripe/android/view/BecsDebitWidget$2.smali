.class final Lcom/stripe/android/view/BecsDebitWidget$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BecsDebitWidget.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/view/BecsDebitWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/stripe/android/view/BecsDebitBanks$Bank;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "bank",
        "Lcom/stripe/android/view/BecsDebitBanks$Bank;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stripe/android/view/BecsDebitWidget;


# direct methods
.method constructor <init>(Lcom/stripe/android/view/BecsDebitWidget;)V
    .registers 2

    iput-object p1, p0, Lcom/stripe/android/view/BecsDebitWidget$2;->this$0:Lcom/stripe/android/view/BecsDebitWidget;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 29
    check-cast p1, Lcom/stripe/android/view/BecsDebitBanks$Bank;

    invoke-virtual {p0, p1}, Lcom/stripe/android/view/BecsDebitWidget$2;->invoke(Lcom/stripe/android/view/BecsDebitBanks$Bank;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/stripe/android/view/BecsDebitBanks$Bank;)V
    .registers 6
    .param p1    # Lcom/stripe/android/view/BecsDebitBanks$Bank;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    const-string v1, "viewBinding.bsbTextInputLayout"

    if-eqz p1, :cond_29

    .line 84
    iget-object v2, p0, Lcom/stripe/android/view/BecsDebitWidget$2;->this$0:Lcom/stripe/android/view/BecsDebitWidget;

    invoke-virtual {v2}, Lcom/stripe/android/view/BecsDebitWidget;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->bsbTextInputLayout:Lcom/stripe/android/view/IconTextInputLayout;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/stripe/android/view/BecsDebitBanks$Bank;->getName$stripe_release()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/stripe/android/view/IconTextInputLayout;->setHelperText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v2, p0, Lcom/stripe/android/view/BecsDebitWidget$2;->this$0:Lcom/stripe/android/view/BecsDebitWidget;

    invoke-virtual {v2}, Lcom/stripe/android/view/BecsDebitWidget;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->bsbTextInputLayout:Lcom/stripe/android/view/IconTextInputLayout;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lcom/stripe/android/view/IconTextInputLayout;->setHelperTextEnabled(Z)V

    goto :goto_49

    .line 87
    :cond_29
    iget-object v2, p0, Lcom/stripe/android/view/BecsDebitWidget$2;->this$0:Lcom/stripe/android/view/BecsDebitWidget;

    invoke-virtual {v2}, Lcom/stripe/android/view/BecsDebitWidget;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->bsbTextInputLayout:Lcom/stripe/android/view/IconTextInputLayout;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/stripe/android/view/IconTextInputLayout;->setHelperText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v2, p0, Lcom/stripe/android/view/BecsDebitWidget$2;->this$0:Lcom/stripe/android/view/BecsDebitWidget;

    invoke-virtual {v2}, Lcom/stripe/android/view/BecsDebitWidget;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->bsbTextInputLayout:Lcom/stripe/android/view/IconTextInputLayout;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/stripe/android/view/IconTextInputLayout;->setHelperTextEnabled(Z)V

    .line 91
    :goto_49
    iget-object v1, p0, Lcom/stripe/android/view/BecsDebitWidget$2;->this$0:Lcom/stripe/android/view/BecsDebitWidget;

    invoke-virtual {v1}, Lcom/stripe/android/view/BecsDebitWidget;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->accountNumberEditText:Lcom/stripe/android/view/BecsDebitAccountNumberEditText;

    if-eqz p1, :cond_5e

    invoke-virtual {p1}, Lcom/stripe/android/view/BecsDebitBanks$Bank;->getPrefix$stripe_release()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5e

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_5e
    const/16 p1, 0x9

    if-nez v0, :cond_64

    goto/16 :goto_c8

    :cond_64
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x600

    if-eq v2, v3, :cond_bf

    const/16 v3, 0x601

    if-eq v2, v3, :cond_b6

    const/16 v3, 0x603

    if-eq v2, v3, :cond_ac

    const/16 v3, 0x606

    if-eq v2, v3, :cond_a1

    const/16 v3, 0x608

    if-eq v2, v3, :cond_98

    const/16 p1, 0x6dc

    if-eq v2, p1, :cond_8f

    const/16 p1, 0x6f8

    if-eq v2, p1, :cond_85

    goto :goto_c8

    :cond_85
    const-string p1, "80"

    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c8

    const/4 p1, 0x4

    goto :goto_c9

    :cond_8f
    const-string p1, "73"

    .line 107
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c8

    goto :goto_b4

    :cond_98
    const-string v2, "08"

    .line 100
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c8

    goto :goto_c9

    :cond_a1
    const-string p1, "06"

    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c8

    const/16 p1, 0x8

    goto :goto_c9

    :cond_ac
    const-string p1, "03"

    .line 107
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c8

    :goto_b4
    const/4 p1, 0x6

    goto :goto_c9

    :cond_b6
    const-string v2, "01"

    .line 96
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c8

    goto :goto_c9

    :cond_bf
    const-string v2, "00"

    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c8

    goto :goto_c9

    :cond_c8
    :goto_c8
    const/4 p1, 0x5

    .line 91
    :goto_c9
    invoke-virtual {v1, p1}, Lcom/stripe/android/view/BecsDebitAccountNumberEditText;->setMinLength(I)V

    return-void
.end method

.class public final Lcom/stripe/android/view/PaymentAuthWebViewActivityViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "PaymentAuthWebViewActivityViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/view/PaymentAuthWebViewActivityViewModel$ToolbarTitleData;,
        Lcom/stripe/android/view/PaymentAuthWebViewActivityViewModel$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaymentAuthWebViewActivityViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentAuthWebViewActivityViewModel.kt\ncom/stripe/android/view/PaymentAuthWebViewActivityViewModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,68:1\n1#2:69\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001:\u0002\u0017\u0018B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\n8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\u000e8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0011\u001a\u0004\u0018\u00010\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0008R\u0016\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/stripe/android/view/PaymentAuthWebViewActivityViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "args",
        "Lcom/stripe/android/PaymentAuthWebViewStarter$Args;",
        "(Lcom/stripe/android/PaymentAuthWebViewStarter$Args;)V",
        "buttonText",
        "",
        "getButtonText$stripe_release",
        "()Ljava/lang/String;",
        "cancellationResult",
        "Landroid/content/Intent;",
        "getCancellationResult$stripe_release",
        "()Landroid/content/Intent;",
        "paymentResult",
        "Lcom/stripe/android/PaymentController$Result;",
        "getPaymentResult$stripe_release",
        "()Lcom/stripe/android/PaymentController$Result;",
        "toolbarBackgroundColor",
        "getToolbarBackgroundColor$stripe_release",
        "toolbarTitle",
        "Lcom/stripe/android/view/PaymentAuthWebViewActivityViewModel$ToolbarTitleData;",
        "getToolbarTitle$stripe_release",
        "()Lcom/stripe/android/view/PaymentAuthWebViewActivityViewModel$ToolbarTitleData;",
        "Factory",
        "ToolbarTitleData",
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
.field private final args:Lcom/stripe/android/PaymentAuthWebViewStarter$Args;

.field private final synthetic buttonText:Ljava/lang/String;

.field private final synthetic toolbarBackgroundColor:Ljava/lang/String;

.field private final synthetic toolbarTitle:Lcom/stripe/android/view/PaymentAuthWebViewActivityViewModel$ToolbarTitleData;


# direct methods
.method public constructor <init>(Lcom/stripe/android/PaymentAuthWebViewStarter$Args;)V
    .registers 7
    .param p1    # Lcom/stripe/android/PaymentAuthWebViewStarter$Args;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/view/PaymentAuthWebViewActivityViewModel;->args:Lcom/stripe/android/PaymentAuthWebViewStarter$Args;

    .line 16
    iget-object p1, p0, Lcom/stripe/android/view/PaymentAuthWebViewActivityViewModel;->args:Lcom/stripe/android/PaymentAuthWebViewStarter$Args;

    invoke-virtual {p1}, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->getToolbarCustomization()Lcom/stripe/android/stripe3ds2/init/ui/StripeToolbarCustomization;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2b

    .line 17
    invoke-virtual {p1}, Lcom/stripe/android/stripe3ds2/init/ui/StripeToolbarCustomization;->getButtonText()Ljava/lang/String;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_27

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_25

    goto :goto_27

    :cond_25
    move v3, v0

    goto :goto_28

    :cond_27
    :goto_27
    move v3, v1

    :goto_28
    if-nez v3, :cond_2b

    goto :goto_2c

    :cond_2b
    move-object p1, v2

    .line 16
    :goto_2c
    iput-object p1, p0, Lcom/stripe/android/view/PaymentAuthWebViewActivityViewModel;->buttonText:Ljava/lang/String;

    .line 21
    iget-object p1, p0, Lcom/stripe/android/view/PaymentAuthWebViewActivityViewModel;->args:Lcom/stripe/android/PaymentAuthWebViewStarter$Args;

    invoke-virtual {p1}, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->getToolbarCustomization()Lcom/stripe/android/stripe3ds2/init/ui/StripeToolbarCustomization;

    move-result-object p1

    if-eqz p1, :cond_57

    .line 22
    invoke-virtual {p1}, Lcom/stripe/android/stripe3ds2/init/ui/StripeToolbarCustomization;->getHeaderText()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_45

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_46

    :cond_45
    move v0, v1

    :cond_46
    if-nez v0, :cond_49

    goto :goto_4a

    :cond_49
    move-object v3, v2

    :goto_4a
    if-eqz v3, :cond_57

    .line 23
    new-instance v0, Lcom/stripe/android/view/PaymentAuthWebViewActivityViewModel$ToolbarTitleData;

    const-string v1, "it"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v3, p1}, Lcom/stripe/android/view/PaymentAuthWebViewActivityViewModel$ToolbarTitleData;-><init>(Ljava/lang/String;Lcom/stripe/android/stripe3ds2/init/ui/StripeToolbarCustomization;)V

    goto :goto_58

    :cond_57
    move-object v0, v2

    .line 21
    :goto_58
    iput-object v0, p0, Lcom/stripe/android/view/PaymentAuthWebViewActivityViewModel;->toolbarTitle:Lcom/stripe/android/view/PaymentAuthWebViewActivityViewModel$ToolbarTitleData;

    .line 28
    iget-object p1, p0, Lcom/stripe/android/view/PaymentAuthWebViewActivityViewModel;->args:Lcom/stripe/android/PaymentAuthWebViewStarter$Args;

    invoke-virtual {p1}, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->getToolbarCustomization()Lcom/stripe/android/stripe3ds2/init/ui/StripeToolbarCustomization;

    move-result-object p1

    if-eqz p1, :cond_66

    invoke-virtual {p1}, Lcom/stripe/android/stripe3ds2/init/ui/StripeToolbarCustomization;->getBackgroundColor()Ljava/lang/String;

    move-result-object v2

    :cond_66
    iput-object v2, p0, Lcom/stripe/android/view/PaymentAuthWebViewActivityViewModel;->toolbarBackgroundColor:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getButtonText$stripe_release()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/stripe/android/view/PaymentAuthWebViewActivityViewModel;->buttonText:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic getCancellationResult$stripe_release()Landroid/content/Intent;
    .registers 12

    .line 43
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 44
    invoke-virtual {p0}, Lcom/stripe/android/view/PaymentAuthWebViewActivityViewModel;->getPaymentResult$stripe_release()Lcom/stripe/android/PaymentController$Result;

    move-result-object v1

    .line 45
    iget-object v2, p0, Lcom/stripe/android/view/PaymentAuthWebViewActivityViewModel;->args:Lcom/stripe/android/PaymentAuthWebViewStarter$Args;

    invoke-virtual {v2}, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->getShouldCancelIntentOnUserNavigation()Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x3

    goto :goto_14

    :cond_13
    const/4 v2, 0x1

    :goto_14
    move v3, v2

    const/4 v4, 0x0

    .line 50
    iget-object v2, p0, Lcom/stripe/android/view/PaymentAuthWebViewActivityViewModel;->args:Lcom/stripe/android/PaymentAuthWebViewStarter$Args;

    invoke-virtual {v2}, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->getShouldCancelSource()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x75

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 44
    invoke-static/range {v1 .. v10}, Lcom/stripe/android/PaymentController$Result;->copy$default(Lcom/stripe/android/PaymentController$Result;Ljava/lang/String;ILcom/stripe/android/exception/StripeException;ZLjava/lang/String;Lcom/stripe/android/model/Source;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/android/PaymentController$Result;

    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lcom/stripe/android/PaymentController$Result;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Intent().putExtras(\n    \u2026.toBundle()\n            )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final synthetic getPaymentResult$stripe_release()Lcom/stripe/android/PaymentController$Result;
    .registers 12

    .line 33
    new-instance v10, Lcom/stripe/android/PaymentController$Result;

    .line 34
    iget-object v0, p0, Lcom/stripe/android/view/PaymentAuthWebViewActivityViewModel;->args:Lcom/stripe/android/PaymentAuthWebViewStarter$Args;

    invoke-virtual {v0}, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->getClientSecret()Ljava/lang/String;

    move-result-object v1

    .line 35
    iget-object v0, p0, Lcom/stripe/android/view/PaymentAuthWebViewActivityViewModel;->args:Lcom/stripe/android/PaymentAuthWebViewStarter$Args;

    invoke-virtual {v0}, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "Uri.parse(args.url)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    goto :goto_20

    :cond_1e
    const-string v0, ""

    :goto_20
    move-object v5, v0

    const/4 v6, 0x0

    .line 36
    iget-object v0, p0, Lcom/stripe/android/view/PaymentAuthWebViewActivityViewModel;->args:Lcom/stripe/android/PaymentAuthWebViewStarter$Args;

    invoke-virtual {v0}, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->getStripeAccountId()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2e

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v10

    .line 33
    invoke-direct/range {v0 .. v9}, Lcom/stripe/android/PaymentController$Result;-><init>(Ljava/lang/String;ILcom/stripe/android/exception/StripeException;ZLjava/lang/String;Lcom/stripe/android/model/Source;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v10
.end method

.method public final getToolbarBackgroundColor$stripe_release()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/stripe/android/view/PaymentAuthWebViewActivityViewModel;->toolbarBackgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public final getToolbarTitle$stripe_release()Lcom/stripe/android/view/PaymentAuthWebViewActivityViewModel$ToolbarTitleData;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/stripe/android/view/PaymentAuthWebViewActivityViewModel;->toolbarTitle:Lcom/stripe/android/view/PaymentAuthWebViewActivityViewModel$ToolbarTitleData;

    return-object v0
.end method

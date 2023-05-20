.class final Lcom/stripe/android/view/PaymentFlowActivity$viewBinding$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PaymentFlowActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/view/PaymentFlowActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/stripe/android/databinding/PaymentFlowActivityBinding;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/stripe/android/databinding/PaymentFlowActivityBinding;",
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
.field final synthetic this$0:Lcom/stripe/android/view/PaymentFlowActivity;


# direct methods
.method constructor <init>(Lcom/stripe/android/view/PaymentFlowActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/stripe/android/view/PaymentFlowActivity$viewBinding$2;->this$0:Lcom/stripe/android/view/PaymentFlowActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/stripe/android/databinding/PaymentFlowActivityBinding;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/stripe/android/view/PaymentFlowActivity$viewBinding$2;->this$0:Lcom/stripe/android/view/PaymentFlowActivity;

    invoke-virtual {v0}, Lcom/stripe/android/view/PaymentFlowActivity;->getViewStub$stripe_release()Landroid/view/ViewStub;

    move-result-object v0

    sget v1, Lcom/stripe/android/R$layout;->payment_flow_activity:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 26
    iget-object v0, p0, Lcom/stripe/android/view/PaymentFlowActivity$viewBinding$2;->this$0:Lcom/stripe/android/view/PaymentFlowActivity;

    invoke-virtual {v0}, Lcom/stripe/android/view/PaymentFlowActivity;->getViewStub$stripe_release()Landroid/view/ViewStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_25

    check-cast v0, Landroid/view/ViewGroup;

    .line 27
    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/stripe/android/databinding/PaymentFlowActivityBinding;->bind(Landroid/view/View;)Lcom/stripe/android/databinding/PaymentFlowActivityBinding;

    move-result-object v0

    const-string v1, "PaymentFlowActivityBinding.bind(root)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 26
    :cond_25
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 22
    invoke-virtual {p0}, Lcom/stripe/android/view/PaymentFlowActivity$viewBinding$2;->invoke()Lcom/stripe/android/databinding/PaymentFlowActivityBinding;

    move-result-object v0

    return-object v0
.end method

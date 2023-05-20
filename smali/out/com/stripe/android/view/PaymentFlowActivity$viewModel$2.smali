.class final Lcom/stripe/android/view/PaymentFlowActivity$viewModel$2;
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
        "Lcom/stripe/android/view/PaymentFlowViewModel;",
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
        "Lcom/stripe/android/view/PaymentFlowViewModel;",
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

    iput-object p1, p0, Lcom/stripe/android/view/PaymentFlowActivity$viewModel$2;->this$0:Lcom/stripe/android/view/PaymentFlowActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/stripe/android/view/PaymentFlowViewModel;
    .registers 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 44
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 45
    iget-object v1, p0, Lcom/stripe/android/view/PaymentFlowActivity$viewModel$2;->this$0:Lcom/stripe/android/view/PaymentFlowActivity;

    move-object v2, v1

    check-cast v2, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 46
    new-instance v3, Lcom/stripe/android/view/PaymentFlowViewModel$Factory;

    invoke-static {v1}, Lcom/stripe/android/view/PaymentFlowActivity;->access$getCustomerSession$p(Lcom/stripe/android/view/PaymentFlowActivity;)Lcom/stripe/android/CustomerSession;

    move-result-object v1

    iget-object v4, p0, Lcom/stripe/android/view/PaymentFlowActivity$viewModel$2;->this$0:Lcom/stripe/android/view/PaymentFlowActivity;

    invoke-static {v4}, Lcom/stripe/android/view/PaymentFlowActivity;->access$getArgs$p(Lcom/stripe/android/view/PaymentFlowActivity;)Lcom/stripe/android/view/PaymentFlowActivityStarter$Args;

    move-result-object v4

    invoke-virtual {v4}, Lcom/stripe/android/view/PaymentFlowActivityStarter$Args;->getPaymentSessionData$stripe_release()Lcom/stripe/android/PaymentSessionData;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/stripe/android/view/PaymentFlowViewModel$Factory;-><init>(Lcom/stripe/android/CustomerSession;Lcom/stripe/android/PaymentSessionData;)V

    check-cast v3, Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 44
    invoke-direct {v0, v2, v3}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    .line 47
    const-class v1, Lcom/stripe/android/view/PaymentFlowViewModel;

    .line 44
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    const-string v1, "ViewModelProvider(\n     \u2026lowViewModel::class.java]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/stripe/android/view/PaymentFlowViewModel;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 22
    invoke-virtual {p0}, Lcom/stripe/android/view/PaymentFlowActivity$viewModel$2;->invoke()Lcom/stripe/android/view/PaymentFlowViewModel;

    move-result-object v0

    return-object v0
.end method

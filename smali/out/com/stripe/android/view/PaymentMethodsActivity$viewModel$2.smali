.class final Lcom/stripe/android/view/PaymentMethodsActivity$viewModel$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PaymentMethodsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/view/PaymentMethodsActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/stripe/android/view/PaymentMethodsViewModel;",
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
        "Lcom/stripe/android/view/PaymentMethodsViewModel;",
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
.field final synthetic this$0:Lcom/stripe/android/view/PaymentMethodsActivity;


# direct methods
.method constructor <init>(Lcom/stripe/android/view/PaymentMethodsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/stripe/android/view/PaymentMethodsActivity$viewModel$2;->this$0:Lcom/stripe/android/view/PaymentMethodsActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/stripe/android/view/PaymentMethodsViewModel;
    .registers 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 59
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 60
    iget-object v1, p0, Lcom/stripe/android/view/PaymentMethodsActivity$viewModel$2;->this$0:Lcom/stripe/android/view/PaymentMethodsActivity;

    move-object v2, v1

    check-cast v2, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 61
    new-instance v3, Lcom/stripe/android/view/PaymentMethodsViewModel$Factory;

    .line 62
    invoke-virtual {v1}, Lcom/stripe/android/view/PaymentMethodsActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v4, "application"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v4, p0, Lcom/stripe/android/view/PaymentMethodsActivity$viewModel$2;->this$0:Lcom/stripe/android/view/PaymentMethodsActivity;

    invoke-static {v4}, Lcom/stripe/android/view/PaymentMethodsActivity;->access$getCustomerSession$p-d1pmJ48(Lcom/stripe/android/view/PaymentMethodsActivity;)Ljava/lang/Object;

    move-result-object v4

    .line 64
    iget-object v5, p0, Lcom/stripe/android/view/PaymentMethodsActivity$viewModel$2;->this$0:Lcom/stripe/android/view/PaymentMethodsActivity;

    invoke-static {v5}, Lcom/stripe/android/view/PaymentMethodsActivity;->access$getArgs$p(Lcom/stripe/android/view/PaymentMethodsActivity;)Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;

    move-result-object v5

    invoke-virtual {v5}, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->getInitialPaymentMethodId$stripe_release()Ljava/lang/String;

    move-result-object v5

    .line 65
    iget-object v6, p0, Lcom/stripe/android/view/PaymentMethodsActivity$viewModel$2;->this$0:Lcom/stripe/android/view/PaymentMethodsActivity;

    invoke-static {v6}, Lcom/stripe/android/view/PaymentMethodsActivity;->access$getStartedFromPaymentSession$p(Lcom/stripe/android/view/PaymentMethodsActivity;)Z

    move-result v6

    .line 61
    invoke-direct {v3, v1, v4, v5, v6}, Lcom/stripe/android/view/PaymentMethodsViewModel$Factory;-><init>(Landroid/app/Application;Ljava/lang/Object;Ljava/lang/String;Z)V

    check-cast v3, Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 59
    invoke-direct {v0, v2, v3}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    .line 67
    const-class v1, Lcom/stripe/android/view/PaymentMethodsViewModel;

    .line 59
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    const-string v1, "ViewModelProvider(\n     \u2026odsViewModel::class.java]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/stripe/android/view/PaymentMethodsViewModel;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 34
    invoke-virtual {p0}, Lcom/stripe/android/view/PaymentMethodsActivity$viewModel$2;->invoke()Lcom/stripe/android/view/PaymentMethodsViewModel;

    move-result-object v0

    return-object v0
.end method

.class final Lcom/stripe/android/paymentsheet/PaymentSheetLoadingFragment$activityViewModel$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PaymentSheetLoadingFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/paymentsheet/PaymentSheetLoadingFragment$activityViewModel$2;->invoke()Landroidx/lifecycle/ViewModelProvider$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/app/Application;",
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
        "Landroid/app/Application;",
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
.field final synthetic this$0:Lcom/stripe/android/paymentsheet/PaymentSheetLoadingFragment$activityViewModel$2;


# direct methods
.method constructor <init>(Lcom/stripe/android/paymentsheet/PaymentSheetLoadingFragment$activityViewModel$2;)V
    .registers 2

    iput-object p1, p0, Lcom/stripe/android/paymentsheet/PaymentSheetLoadingFragment$activityViewModel$2$1;->this$0:Lcom/stripe/android/paymentsheet/PaymentSheetLoadingFragment$activityViewModel$2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/app/Application;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/PaymentSheetLoadingFragment$activityViewModel$2$1;->this$0:Lcom/stripe/android/paymentsheet/PaymentSheetLoadingFragment$activityViewModel$2;

    iget-object v0, v0, Lcom/stripe/android/paymentsheet/PaymentSheetLoadingFragment$activityViewModel$2;->this$0:Lcom/stripe/android/paymentsheet/PaymentSheetLoadingFragment;

    invoke-virtual {v0}, Lcom/stripe/android/paymentsheet/PaymentSheetLoadingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "requireActivity().application"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 10
    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/PaymentSheetLoadingFragment$activityViewModel$2$1;->invoke()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

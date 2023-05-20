.class final synthetic Lcom/stripe/android/view/AddPaymentMethodFpxView$2;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "AddPaymentMethodFpxView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/view/AddPaymentMethodFpxView;-><init>(Landroidx/fragment/app/FragmentActivity;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/stripe/android/model/FpxBankStatuses;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "p1",
        "Lcom/stripe/android/model/FpxBankStatuses;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/stripe/android/view/AddPaymentMethodFpxView;)V
    .registers 9

    const-class v3, Lcom/stripe/android/view/AddPaymentMethodFpxView;

    const/4 v1, 0x1

    const-string v4, "onFpxBankStatusesUpdated"

    const-string v5, "onFpxBankStatusesUpdated(Lcom/stripe/android/model/FpxBankStatuses;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 22
    check-cast p1, Lcom/stripe/android/model/FpxBankStatuses;

    invoke-virtual {p0, p1}, Lcom/stripe/android/view/AddPaymentMethodFpxView$2;->invoke(Lcom/stripe/android/model/FpxBankStatuses;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/stripe/android/model/FpxBankStatuses;)V
    .registers 3
    .param p1    # Lcom/stripe/android/model/FpxBankStatuses;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/stripe/android/view/AddPaymentMethodFpxView$2;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/stripe/android/view/AddPaymentMethodFpxView;

    .line 65
    invoke-static {v0, p1}, Lcom/stripe/android/view/AddPaymentMethodFpxView;->access$onFpxBankStatusesUpdated(Lcom/stripe/android/view/AddPaymentMethodFpxView;Lcom/stripe/android/model/FpxBankStatuses;)V

    return-void
.end method

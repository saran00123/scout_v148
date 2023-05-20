.class final Lcom/stripe/android/view/AddPaymentMethodRowView$onAttachedToWindow$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "AddPaymentMethodRowView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/view/AddPaymentMethodRowView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick",
        "com/stripe/android/view/AddPaymentMethodRowView$onAttachedToWindow$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic this$0:Lcom/stripe/android/view/AddPaymentMethodRowView;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/stripe/android/view/AddPaymentMethodRowView;)V
    .registers 3

    iput-object p1, p0, Lcom/stripe/android/view/AddPaymentMethodRowView$onAttachedToWindow$$inlined$let$lambda$1;->$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/stripe/android/view/AddPaymentMethodRowView$onAttachedToWindow$$inlined$let$lambda$1;->this$0:Lcom/stripe/android/view/AddPaymentMethodRowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 44
    new-instance p1, Lcom/stripe/android/view/AddPaymentMethodActivityStarter;

    iget-object v0, p0, Lcom/stripe/android/view/AddPaymentMethodRowView$onAttachedToWindow$$inlined$let$lambda$1;->$activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/stripe/android/view/AddPaymentMethodActivityStarter;-><init>(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/stripe/android/view/AddPaymentMethodRowView$onAttachedToWindow$$inlined$let$lambda$1;->this$0:Lcom/stripe/android/view/AddPaymentMethodRowView;

    invoke-static {v0}, Lcom/stripe/android/view/AddPaymentMethodRowView;->access$getArgs$p(Lcom/stripe/android/view/AddPaymentMethodRowView;)Lcom/stripe/android/view/AddPaymentMethodActivityStarter$Args;

    move-result-object v0

    check-cast v0, Lcom/stripe/android/view/ActivityStarter$Args;

    invoke-virtual {p1, v0}, Lcom/stripe/android/view/AddPaymentMethodActivityStarter;->startForResult(Lcom/stripe/android/view/ActivityStarter$Args;)V

    return-void
.end method

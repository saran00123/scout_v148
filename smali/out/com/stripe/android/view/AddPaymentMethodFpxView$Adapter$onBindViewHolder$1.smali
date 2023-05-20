.class final Lcom/stripe/android/view/AddPaymentMethodFpxView$Adapter$onBindViewHolder$1;
.super Ljava/lang/Object;
.source "AddPaymentMethodFpxView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/view/AddPaymentMethodFpxView$Adapter;->onBindViewHolder(Lcom/stripe/android/view/AddPaymentMethodFpxView$Adapter$ViewHolder;I)V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $viewHolder:Lcom/stripe/android/view/AddPaymentMethodFpxView$Adapter$ViewHolder;

.field final synthetic this$0:Lcom/stripe/android/view/AddPaymentMethodFpxView$Adapter;


# direct methods
.method constructor <init>(Lcom/stripe/android/view/AddPaymentMethodFpxView$Adapter;Lcom/stripe/android/view/AddPaymentMethodFpxView$Adapter$ViewHolder;)V
    .registers 3

    iput-object p1, p0, Lcom/stripe/android/view/AddPaymentMethodFpxView$Adapter$onBindViewHolder$1;->this$0:Lcom/stripe/android/view/AddPaymentMethodFpxView$Adapter;

    iput-object p2, p0, Lcom/stripe/android/view/AddPaymentMethodFpxView$Adapter$onBindViewHolder$1;->$viewHolder:Lcom/stripe/android/view/AddPaymentMethodFpxView$Adapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 124
    iget-object p1, p0, Lcom/stripe/android/view/AddPaymentMethodFpxView$Adapter$onBindViewHolder$1;->this$0:Lcom/stripe/android/view/AddPaymentMethodFpxView$Adapter;

    iget-object v0, p0, Lcom/stripe/android/view/AddPaymentMethodFpxView$Adapter$onBindViewHolder$1;->$viewHolder:Lcom/stripe/android/view/AddPaymentMethodFpxView$Adapter$ViewHolder;

    invoke-virtual {v0}, Lcom/stripe/android/view/AddPaymentMethodFpxView$Adapter$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/stripe/android/view/AddPaymentMethodFpxView$Adapter;->setSelectedPosition(I)V

    return-void
.end method

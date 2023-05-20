.class final Lcom/stripe/android/view/ShippingMethodAdapter$onBindViewHolder$1;
.super Ljava/lang/Object;
.source "ShippingMethodAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/view/ShippingMethodAdapter;->onBindViewHolder(Lcom/stripe/android/view/ShippingMethodAdapter$ShippingMethodViewHolder;I)V
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
.field final synthetic $holder:Lcom/stripe/android/view/ShippingMethodAdapter$ShippingMethodViewHolder;

.field final synthetic this$0:Lcom/stripe/android/view/ShippingMethodAdapter;


# direct methods
.method constructor <init>(Lcom/stripe/android/view/ShippingMethodAdapter;Lcom/stripe/android/view/ShippingMethodAdapter$ShippingMethodViewHolder;)V
    .registers 3

    iput-object p1, p0, Lcom/stripe/android/view/ShippingMethodAdapter$onBindViewHolder$1;->this$0:Lcom/stripe/android/view/ShippingMethodAdapter;

    iput-object p2, p0, Lcom/stripe/android/view/ShippingMethodAdapter$onBindViewHolder$1;->$holder:Lcom/stripe/android/view/ShippingMethodAdapter$ShippingMethodViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 58
    iget-object p1, p0, Lcom/stripe/android/view/ShippingMethodAdapter$onBindViewHolder$1;->this$0:Lcom/stripe/android/view/ShippingMethodAdapter;

    iget-object v0, p0, Lcom/stripe/android/view/ShippingMethodAdapter$onBindViewHolder$1;->$holder:Lcom/stripe/android/view/ShippingMethodAdapter$ShippingMethodViewHolder;

    invoke-virtual {v0}, Lcom/stripe/android/view/ShippingMethodAdapter$ShippingMethodViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/stripe/android/view/ShippingMethodAdapter;->setSelectedIndex$stripe_release(I)V

    return-void
.end method
